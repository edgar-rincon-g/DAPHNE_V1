------------------------------------------------------------------------------------
---- Company: Universidad EIA
---- Engineer: Daniel Avila Gomez
---- 
---- Create Date: 15.08.2023 13:33:30
---- Design Name: Self Trigger Full Module Integration
---- Module Name: selfTrigger_Module - selfTrig_arch
---- Project Name: AFE5808A - Nexys Video Full Integration
---- Target Devices: XC7A200T-1SBG484C
---- Tool Versions: 2023.1
---- Description: 
---- Creates a module that connects the high pass filter and the self trigger module
---- Dependencies: 
---- Relies on the 'highPass_FirstOrder.vhd' and 'Self-trigger_VHDL.vhd' files
---- Revision:
---- Revision 0.02 - File Modified
---- Additional Comments:
---- Added new neural network self trigger to the module, including a new structure 
---- For the module including a new low pass filter that is used by the network
---- Also commented the old self trigger so both modules do not exist at the same time
---- But kept its signals and comments on where this signals should be placed
------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity selfTrigger_Module is
    Port ( 
        -- Module Inputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        afe_data            : in std_logic_vector(13 downto 0);     -- Aligned Data to Save from AFE
        dt_rdy              : in std_logic;                         -- Data Aligned
        rst                 : in std_logic;                         -- Async Reset
        clk                 : in std_logic;                         -- AFE Divided Clock Used by the High Pass Filter (62.5 MHz) And the Write Clock of the FIFO 
        rd_clk              : in std_logic;                         -- Read Clock Used by the FIFO (62.5 MHz) Asynchronous to WR_CLK    
        sys_clk             : in std_logic;                         -- This is AXI Stream Clock (125 MHz)
        rd_ctrl             : in std_logic;                         -- Read Control Input ('0' Don't read the FIFO after a save, '1' Read the FIFO as soon as it stops saving)
        wr_enable_signal    : in std_logic;                         -- Auxiliar External Write Enable for the FIFO
        rd_enable_signal    : in std_logic;                         -- Auxiliar External Read Enable for the FIFO
        
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        filt_out            : out std_logic_vector(13 downto 0);    -- Output of the filter
        calc_value_out      : out std_logic_vector(47 downto 0);    -- Output of the Self Trigger Module (Calculated Correlation or Calculated Sigmoid Prediction)
        net_agg             : out std_logic_vector(47 downto 0);    -- Output of the Seff Trigger Neural Network (Aggregation of Output Neuron)
        fifo_input_data     : out std_logic_vector(13 downto 0);    -- Output of the Self Trigger Correlation Module (Internally connected to the FIFO, 64 Registers Delayed AFE Data)
        trigger             : out std_logic;                        -- Trigger Output
        fifo_rd_out         : out std_logic;                        -- Real Read Enable used for the FIFO (Mapped Internally)
        fifo_wr_out         : out std_logic;                        -- Real Write Enable used for the FIFO (Mapped Internally)
        fifo_o              : out std_logic_vector(13 downto 0);    -- Output Data of the FIFO    
        fifo_a_empty        : out std_logic;                        -- Almost Empty Flag of the FIFO
        fifo_a_full         : out std_logic;                        -- Amost Full Flag of the FIFO (Interpreted as the real Full of the FIFO)
        fifo_empty          : out std_logic;                        -- Empty Flag of the FIFO
        fifo_full           : out std_logic;                        -- Full Flag of the FIFO
        fifo_wr_err         : out std_logic;                        -- Write Error Flag of the FIFO (Internally Generated Not Real One)
        fifo_rd_err         : out std_logic;                        -- Read Error Flag of the FIFO (Internally Generated Not Real One)
        axi_data            : out std_logic_vector(7 downto 0);     -- Output Data of the FIFO in AXI Stream Interface
        axi_valid           : out std_logic;                        -- AXI Stream Valid from the FIFO Read Process
        axi_ready           : in std_logic;                         -- AXI Stream Ready for the FIFO Read Process
        axi_last            : out std_logic;                        -- AXI Stream Last from the FIFO Read Process
        axi_user            : out std_logic                         -- AXI Stream User from the FIFO Read Process (Always '1')
    );
end selfTrigger_Module;

architecture Behavioral of selfTrigger_Module is

-- High Pass Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component highPass_FirstOrder 
    Generic (
        Data_Size               : integer   := 14;
        Coefficient_Resolution  : integer   := 17                                   -- One more than decimal desired
    );
    Port (
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        rst                     : in std_logic;                                     -- Reset for the filter
        clk                     : in std_logic;                                     -- Clock for the filter
        x_in                    : in std_logic_vector((Data_Size - 1) downto 0);    -- Input vector from AFEs
        
        -- Module Output
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        y_out                   : out std_logic_vector((Data_Size - 1) downto 0)    -- Output vector from Filter
    );
end component highPass_FirstOrder;

-- Low Pass Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component lowPass_FirstOrder 
    Generic (
        Data_Size               : integer   := 14;
        Coefficient_Resolution  : integer   := 17                                   -- One more than decimal desired
    );
    Port (
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        rst                     : in std_logic;                                     -- Reset for the filter
        clk                     : in std_logic;                                     -- Clock for the filter
        x_in                    : in std_logic_vector((Data_Size - 1) downto 0);    -- Input vector from AFEs
        
        -- Module Output
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        y_out                   : out std_logic_vector((Data_Size - 1) downto 0)    -- Output vector from Filter
    );
end component;

-- Self Trigger With Cross Correlation Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component self_trigger 
    Generic (
        g_INPUT_WIDTH           : natural   := 14;                                      -- Width of the Input Data
        g_SUM_WIDTH             : natural   := 14;                                      -- Width of the Internal Addition
        g_MULT_WIDTH            : natural   := 28                                       -- Width of the Internal Multiplication
    );
    Port (
        -- Module Inputs
    --------------------------------------------------------------------------------------------------------------------------------------
        clk                     : in  std_logic;                                        -- Clock for the Module
        rst                     : in std_logic;                                         -- Async Reset
        i_data                  : in  std_logic_vector(g_INPUT_WIDTH - 1 downto 0);     -- Input Parallel Data from the Acquisition Module
        data_hpf                : in std_logic_vector(g_INPUT_WIDTH - 1 downto 0);      -- Filtered Data from the High Pass Filter
        
        -- Module Outputs
    --------------------------------------------------------------------------------------------------------------------------------------
        o_data                  : out std_logic_vector(g_SUM_WIDTH - 1 downto 0);       -- Output Data (n Samples Delayed)
        o_xcorr                 : out std_logic_vector(47 downto 0);                    -- Output Correlation Value
        o_trigger               : out std_logic                                         -- Trigger Output
    );
end component;

-- Self Trigger With Neural Network Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component neural_network
    Generic (
        -- DSP Slices For Internal Multiplication Parameters
    -------------------------------------------------------------------------------------------------------------------------------------------
        A_IN_SIZE       : integer   := 30;                                      -- Input Size Of The A Vector For The DSP Slice
        B_IN_SIZE       : integer   := 18;                                      -- Input Size Of The B Vector For The DSP Slice
        
        -- Representation Of The Weights And BIASES Parameters
    -------------------------------------------------------------------------------------------------------------------------------------------
        W_BIT_WIDTH     : integer   := 25;                                      -- Weights Representation Total Size 
        W_B_RES         : integer   := 14;                                      -- Fractional Resolution Of The Weights
        B1_SIZE_INT     : integer   := 12;                                      -- Integer Size Of The Input BIAS
        B1_SIZE_FRAC    : integer   := 27;                                      -- Fractional Size Of The Input BIAS                       
        B2_SIZE_INT     : integer   := 19;                                      -- Integer Size Of The Hidden BIAS    
        B2_SIZE_FRAC    : integer   := 25;                                      -- Fractional Size Of The Hidden BIAS
        
        -- Neural Network Structure Parameters
    ------------------------------------------------------------------------------------------------------------------------------------------- 
        W_SIZE          : integer   := 16;                                      -- Size Of The Window Of Registers Used By The Neural Network
        N_HIDDEN        : integer   := 12;                                      -- Number Of Hidden Neurons in the Hidden Layer
        -- Originally 64 registers were used for the pre window, with pipelining, the delay increased 13 clk cycles
        -- Therefore the number increases to 77 registers. With two more delays generated by the filters, the value may increase to
        -- 78 with one filter used and 79 with two cascaded filters used
        PRE_W_SIZE      : integer   := 64;                                      -- Number Of Pre Samples to Store in The FIFO
        
        -- Size Of The Input Data
    ------------------------------------------------------------------------------------------------------------------------------------------- 
        DATA_WIDTH      : integer   := 14                                       -- Width Of The Input Vector Of Data
    );
    Port ( 
        -- Module Inputs
    -------------------------------------------------------------------------------------------------------------------------------------------
        clk             : in std_logic;                                         -- Clock Used By The Module                                     
        rst             : in std_logic;                                         -- Async Reset
        data_valid      : in std_logic;                                         -- Data Alligned
        filt_data       : in std_logic_vector((DATA_WIDTH - 1) downto 0);       -- Data Under Test For Trigger Pattern (Filtered Data)
        data            : in std_logic_vector((DATA_WIDTH - 1) downto 0);       -- Real Data Sampled By The AFE
        
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------------------------------        
        trigger_o       : out std_logic;                                        -- Trigger Output Enabled By the data_valid Input
        y_predict_o     : out signed((A_IN_SIZE + B_IN_SIZE - 1) downto 0);     -- Prediction By The Neural Network
        y_j_o           : out signed((A_IN_SIZE + B_IN_SIZE - 1) downto 0);     -- Aggregation Of The Output of The Neural Network
        trigger_aux     : out std_logic;                                        -- Trigger Output Made By The Neural Network
        norm_dt         : out signed(DATA_WIDTH downto 0);                      -- Normalized Version Of The Data Used By The Module
        o_data          : out std_logic_vector((DATA_WIDTH - 1) downto 0)       -- Output Real Data Of The Module (Delayed By 64/n Samples)
    );
end component;

-- FIFO Write & Read Control FSM Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component trigSaveReadFSM 
    Port ( 
        -- Module Inputs
    --------------------------------------------------------------------------------------------------------------------------------------
        WR_CLK                  : in std_logic;         -- Write Clock for the FIFO
        RD_CLK                  : in std_logic;         -- Read Clock for the FIFO
        RST                     : in std_logic;         -- Async Reset
        TRIG_IN                 : in std_logic;         -- Trigger Input
        READ_IN                 : in std_logic;         -- External Read of the FIFO
        FIFO_FULL               : in std_logic;         -- FIFO Full Flag
        FIFO_EMPTY              : in std_logic;         -- FIFO Empty Flag
        RD_AFTER                : in std_logic;         -- Read Immediately After a FIFO Write
        WR_AFTER                : in std_logic;         -- Write Immediately After a FIFO Read
        
        -- Module Outputs
    --------------------------------------------------------------------------------------------------------------------------------------
        TRIG_OUT                : out std_logic;        -- Output Trigger (Stable Signal For n Samples)
        READ_OUT                : out std_logic         -- Output Read (Stable Signal For n Samples)
    );
end component trigSaveReadFSM;

-- FIFO Memory With AXI Stream Output Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component AXI_FIFO_Adapter
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ         : real          := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ         : real          := 100.0;
        -- FIFO Important Parameters
        data_width          : integer       := 14;
        fifoPointersLength  : integer       := 11;
        AEMPTY_OFF          : bit_vector    := X"0080";                                 -- Almost Empty Offset
        AFULL_OFF           : bit_vector    := X"0080"                                  -- Almost Full Offset
    );
    Port (
        -- Module Inputs
    ----------------------------------------------------------------------------------------------------------------------------------
        d_i                 : in std_logic_vector((data_width - 1) downto 0);           -- Parallel Data Input for the FIFO
        dt_rdy              : in std_logic;                                             -- Data Ready Flag from Acquisition Module
        wr_enable           : in std_logic;                                             -- Write Enable Control Signal for the FIFO
        rd_enable           : in std_logic;                                             -- Read Enable Control Signal for the FIFO
        wr_clk              : in std_logic;                                             -- Write Clock for the FIFO
        rd_clk              : in std_logic;                                             -- Read Clock for the FIFO
        m_axi_clk           : in std_logic;                                             -- AXI Stream Interface Clock
        rst                 : in std_logic;                                             -- Async Reset
    
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------    
        a_empty             : out std_logic;                                            -- Almost Empty Flag of the FIFO
        a_full              : out std_logic;                                            -- Almost Full Flag of the FIFO
        empty               : out std_logic;                                            -- Empty Flag of the FIFO
        full                : out std_logic;                                            -- Full Flag of the FIFO 
        wr_err              : out std_logic;                                            -- Write Error Flag of the FIFO
        rd_err              : out std_logic;                                            -- Read Error Flag of the FIFO
        wr_count            : out std_logic_vector((fifoPointersLength - 1) downto 0);  -- Write Pointer of the FIFO
        rd_count            : out std_logic_vector((fifoPointersLength - 1) downto 0);  -- Read Pointer of the FIFO
        fifo_o              : out std_logic_vector(13 downto 0);                        -- Parallel Data Output of the FIFO
        m_axi_fifo_tdata    : out std_logic_vector((data_width/2) downto 0);            -- AXI Stream Data from the FIFO
        m_axi_fifo_tvalid   : out std_logic;                                            -- AXI Stream Valid Control Signal
        m_axi_fifo_tready   : in std_logic;                                             -- AXI Stream Ready Control Signal
        m_axi_fifo_tlast    : out std_logic;                                            -- AXI Stream Last Control Signal
        m_axi_fifo_tuser    : out std_logic                                             -- AXI Stream User Control Signal (Errors in the data)
    );
end component AXI_FIFO_Adapter;

-- Internal Connections and Auxiliary Signals
--------------------------------------------------------------------------------------------------------------------------------------------------
signal hp_filt_data                 : std_logic_vector(13 downto 0);
signal hp_filt_data_reg             : std_logic_vector(13 downto 0);
signal lp_filt_data                 : std_logic_vector(13 downto 0);
signal lp_filt_data_reg             : std_logic_vector(13 downto 0);
signal trigger_aux                  : std_logic;
signal read                         : std_logic;
signal trigger_in                   : std_logic;
signal fifo_trig                    : std_logic;
signal fifo_rd                      : std_logic; 
signal afe_fifo_a_empty             : std_logic;
signal afe_fifo_a_full              : std_logic;
signal afe_fifo_empty               : std_logic;
signal afe_fifo_full                : std_logic;
signal afe_fifo_wr_err              : std_logic;
signal afe_fifo_rd_err              : std_logic;
signal xcorr_data_out_aux           : std_logic_vector(13 downto 0);
signal xcorr_calc_out               : std_logic_vector(47 downto 0);
signal neural_network_data_out_aux  : std_logic_vector(13 downto 0);
signal network_prediction           : signed(47 downto 0);
signal network_agg                  : signed(47 downto 0);
signal normalized_data              : signed(14 downto 0);

begin
    
    -- High Pass First Order Filter Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    HP_FILTER_COM : highPass_FirstOrder     
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
            rst             => rst,
            clk             => clk,
            x_in            => afe_data,                                -- Use lp_filt_data if low pass is implemented but has no enable controlled. Use afe_data if no low pass is used or low pass has enable input
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
            y_out           => hp_filt_data 
        );
        
    -- Filters Outputs Pipelining Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    REG_FILT_IN : process(clk, rst)
        begin
            if rising_edge(clk) then
                if (rst = '1') then
                    hp_filt_data_reg <= (others => '0');
                    lp_filt_data_reg <= (others => '0');
                else
                    hp_filt_data_reg <= hp_filt_data;
                    lp_filt_data_reg <= lp_filt_data;
                end if;
            end if;
    end process REG_FILT_IN;
    
    -- Low Pass First Order Filter Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    LP_FILTER_COM : lowPass_FirstOrder     
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
            rst             => rst,
            clk             => clk,
            x_in            => hp_filt_data_reg,                        -- Use afe_data if low pass enabler is not implemented/used, use hp_filt_data with low pass enable controlled or if no low pass filter is implemented at all 
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
            y_out           => lp_filt_data 
        );
    
--    -- Cross Correlation Self Trigger Component Instantiation
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--    SELF_TRIGGER_TOP_COM : self_trigger
--    port map (
--        -- Module Inputs
--    --------------------------------------------------------------------------------------------------------------------------------------
--        clk                 => clk,
--        rst                 => rst,
--        i_data              => afe_data,
--        data_hpf            => hp_filt_data_reg,
        
--        -- Module Outputs
--    --------------------------------------------------------------------------------------------------------------------------------------
--        o_data              => xcorr_data_out_aux,
--        o_xcorr             => xcorr_calc_out,
--        o_trigger           => trigger_aux
--    );
    
    -- Neural Network Self Trigger Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    SELF_TRIGGER_TOP_COM : neural_network
        generic map (
            PRE_W_SIZE          => 85 -- 79 Before adding pipeline to the filters' Forward DSPs
        )
        port map (
            -- Module Inputs
        --------------------------------------------------------------------------------------------------------------------------------------
            clk                 => clk,
            rst                 => rst,
            data_valid          => dt_rdy,
            filt_data           => lp_filt_data_reg,                    -- Use hp_filt_data_reg for high pass output, use lp_filt_data_reg for low pass output
            data                => afe_data,
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------
            trigger_o           => trigger_aux,
            y_predict_o         => network_prediction,
            y_j_o               => network_agg,
            trigger_aux         => open,
            norm_dt             => open,                                -- Use normalized_data if needed, else keep this output open
            o_data              => neural_network_data_out_aux       
        );
    
    -- Trigger signal can be either the external trigger input or the self triggering one
    trigger_in              <= wr_enable_signal OR trigger_aux; --uncomment for real one, comment to test if write enable and read enable are properly working
    
    -- FIFO can be read either manually or automatically depending on the configuration of the RD_AFTER input
    -- If the FIFO is read manually, it depends on the rd_enable signal
    
    -- FIFO Writing and Reading FSM
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    FSM_CTRL_COM : trigSaveReadFSM
        port map (
            -- Module Inputs
        --------------------------------------------------------------------------------------------------------------------------------------
            WR_CLK          => clk,
            RD_CLK          => rd_clk,
            RST             => rst,
            TRIG_IN         => trigger_in,
            READ_IN         => rd_enable_signal, 
            FIFO_FULL       => afe_fifo_a_full,
            FIFO_EMPTY      => afe_fifo_empty,
            RD_AFTER        => rd_ctrl, 
            WR_AFTER        => '0',
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------
            TRIG_OUT        => fifo_trig, 
            READ_OUT        => fifo_rd 
        );
    
    -- FIFO Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    FIFO_INST_COM : AXI_FIFO_Adapter
        generic map (
            -- Frequency of the Write Clock (MHz)
            WR_CLK_FREQ         => 62.5,
            -- Frequency of the Read Clock (MHz)
            RD_CLK_FREQ         => 62.5,
            -- FIFO Important Parameters
            AEMPTY_OFF          => X"6",
            AFULL_OFF           => X"8"
        )
        port map (
            -- Module Inputs
        ----------------------------------------------------------------------------------------------------------------------------------
            d_i                 => neural_network_data_out_aux,         -- Use xcorr_data_out_aux, for Cross Correlation Self Trigger, use neural_network_data_out_aux for Neural Network Self Trigger
            dt_rdy              => dt_rdy,
            wr_enable           => fifo_trig,
            rd_enable           => fifo_rd,
            wr_clk              => clk,
            rd_clk              => rd_clk,
            m_axi_clk           => sys_clk,
            rst                 => rst,    
            
            -- Module Outputs
        ----------------------------------------------------------------------------------------------------------------------------------    
            a_empty             => afe_fifo_a_empty,
            a_full              => afe_fifo_a_full,
            empty               => afe_fifo_empty,
            full                => afe_fifo_full,
            wr_err              => afe_fifo_wr_err,
            rd_err              => afe_fifo_rd_err,
            wr_count            => open,
            rd_count            => open,
            fifo_o              => fifo_o,
            m_axi_fifo_tdata    => axi_data,
            m_axi_fifo_tvalid   => axi_valid,
            m_axi_fifo_tready   => axi_ready,
            m_axi_fifo_tlast    => axi_last,
            m_axi_fifo_tuser    => axi_user
        );
    
    -- Outputs of the Module
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    fifo_rd_out             <= fifo_rd;
    fifo_wr_out             <= fifo_trig;
    calc_value_out          <= std_logic_vector(network_prediction);    -- std_logic_vector(network_prediction) or could be related to the cross correlation calculated value xcorr_calc_out;
    net_agg                 <= std_logic_vector(network_agg);           -- Only used when the neural network is used/instantiated
    filt_out                <= lp_filt_data_reg;                        -- Output of the filter chain, may be only hp_filt_data_reg when the self trigger is based on the Cross Correlation
    trigger                 <= trigger_aux;                             -- used to be the write signal
    fifo_input_data         <= neural_network_data_out_aux;             -- Use xcorr_data_out_aux; for Cross Correlation Self Trigger, use neural_network_data_out_aux for Neural Network Self Trigger
    fifo_a_empty            <= afe_fifo_a_empty;
    fifo_empty              <= afe_fifo_empty;
    fifo_a_full             <= afe_fifo_a_full;
    fifo_full               <= afe_fifo_full;
    fifo_wr_err             <= afe_fifo_wr_err;
    fifo_rd_err             <= afe_fifo_rd_err;

end Behavioral;