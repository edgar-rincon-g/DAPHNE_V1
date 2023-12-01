----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.05.2023 11:43:43
-- Design Name: Acquisition Manager Build
-- Module Name: AcquisitionManager - acqMan_arch
-- Project Name: DAPHNE V1 - FULL DATA ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates the connection between the CLockManager Module, the Data 
-- Acquisition Module and the Input Module
-- Dependencies: 
-- Relies on 'ClockManager.vhd', 'PLL_Module.vhd', 'ClockMUX.vhd' and 
-- 'Bufgmux_Module.vhd' files Clock Manager Module
-- Relies also on 'DataAcquisition.vhd', 'AlignFSM.vhd' and 'Iserdese_Block.vhd' 
-- files
-- Relies also on 'InputBuffers.vhd' and 'Ibufds_Module.vhd' files
-- Revision:
-- Revision 0.04 - Added new Frame Clock Aligning FSM
-- Additional Comments:
-- Usage of 8 data channels + frame clock as last ninth data channel
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity AcquisitionManager is
    Generic (
        n_ch    : integer   := 1
    );
    Port ( 
        -- Module Inputs
-----------------------------------------------------------------------------------------------------------------------------------
        in_P_clk_dt_ports   : in std_logic;                     -- Digital Bit Clock Differential P Input
        in_N_clk_dt_ports   : in std_logic;                     -- Digital Bit Clock Differential N Input
        in_P_clk_fr_ports   : in std_logic;                     -- Frame Clock Differential P Input
        in_N_clk_fr_ports   : in std_logic;                     -- Frame Clock Differential N Input
        in_P_data_ports     : in std_logic;                     -- Data Differential P Input
        in_N_data_ports     : in std_logic;                     -- Data Differential N Input
        sys_clk             : in std_logic;                     -- System Clock 100 MHz
        glob_rst            : in std_logic;                     -- System Reset, Active HIGH
        alignment_mode      : in std_logic;                     -- '0' Automatic Alignment, '1' Manual Alignment
        train_pat_act       : in std_logic;                     -- Specific Training Pattern Active in the AFE Outputs
        custom_pat_act      : in std_logic;                     -- Custom Training Pattern Active in the AFE Outputs 
        
        -- Module Outputs
-----------------------------------------------------------------------------------------------------------------------------------
        phase_selected      : out std_logic_vector(1 downto 0); -- Selected Phase to Align the Data
        ph_overflow         : out std_logic;                    -- Phase Overflowed (Digital Bit Clock Alignment)
        bistlip_on          : out std_logic;                    -- Bitslip Being Executed      
        dt_dig_rdy          : out std_logic;                    -- Digital Clock Aligned With Data
        dt_rdy              : out std_logic;                    -- Data Completely Aligned
        clk_div             : out std_logic;                    -- Synthetic AFE Frame CLock Derived from Digital Clock (In Phase)
        pll_lck_o           : out std_logic;                    -- AFE Digital Clock PLL Locked
        data_output         : out std_logic_vector(13 downto 0) -- Output of the Iserdese Modules
    );
end AcquisitionManager;

architecture acqMan_arch of AcquisitionManager is

-- InputBuffers Component instantiation
--------------------------------------------------------------------------------------------------------------------------------------------------
component InputBuffers 
    Generic (
        n_ch    : integer   := 1
    );
    Port ( 
        in_P_clk_dt         : in std_logic;                         -- Digital Bit Clock Differential P Input
        in_N_clk_dt         : in std_logic;                         -- Digital Bit Clock Differential N Input
        in_P_clk_fr         : in std_logic;                         -- Frame Clock Differential P Input
        in_N_clk_fr         : in std_logic;                         -- Frame Clock Differential P Input
        in_P_data           : in std_logic;--_vector((n_ch - 1) downto 0);-- Data Array Differential P Input
        in_N_data           : in std_logic;--_vector((n_ch - 1) downto 0);-- Data Array Differential N Input
        out_data            : out std_logic_vector(n_ch downto 0);  -- Recovered SE Data Frames Array
        clk_dt              : out std_logic                         -- Recovered SE Output Clock
    );
end component InputBuffers;

-- DataAcquisition Component instantiation
--------------------------------------------------------------------------------------------------------------------------------------------------
component DataAcquisition 
    Generic (
        n_ch    : integer   := 1
    );
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        dt_clk              : in std_logic;                         -- Recovered Clock Routed from the FPGA
        dt_div_clk          : in std_logic;                         -- Divided Version of dt_clk (By 7)
        dt_in               : in std_logic_vector(n_ch downto 0);   -- Input Array of Data (Frame Clk - 7...0 Channels)
        reset               : in std_logic;                         -- Async Reset
        al_mode             : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_lckd            : in std_logic;                         -- PLL locked
        train_active        : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        custom_active       : in std_logic;                         -- Custom Training Pattern Active in the AFE Outputs
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        ph_ovfl             : out std_logic;                        -- Phase Overflowed (Digital Bit Clock Alignment)
        btslp_on            : out std_logic;                        -- Bitslip Being Executed on the Iserdeses
        phase_ctrl          : out std_logic_vector(1 downto 0);     -- Selected Phase to Align the Data ("11" Reserved for Future Use)
        dg_align_done       : out std_logic;                        -- Digital Clock Aligned With The Data
        align_done          : out std_logic;                        -- Data Completely Aligned
        dt_out              : out std_logic_vector(13 downto 0)     -- Output of the Iserdese Modules
    );
end component DataAcquisition;

-- ClockManager Component instantiation
--------------------------------------------------------------------------------------------------------------------------------------------------
component ClockManager
    Port ( 
        clk_sys             : in std_logic;                     -- System CLock 100 MHz
        clk_in              : in std_logic;                     -- Input Clock To the PLL
        rst                 : in std_logic;                     -- Async Reset
        phase_sel           : in std_logic_vector(1 downto 0);  -- Selected Phase Coming From Data Acquisition Module
        pll_locked          : out std_logic;                    -- PLL Locked
        clk_out             : out std_logic;                    -- Recovered Clock Routed to the rest of the FPGA
        clk_div_out         : out std_logic                     -- Divided Version of clk_out (By 7)
    );
end component ClockManager;

-- Synchronizer Component instantiation
--------------------------------------------------------------------------------------------------------------------------------------------------
component Synchronizer 
    Generic (
        SYNC_STAGES : integer       := 2;               -- Integer value for number of synchronizing registers, must be 2 or higher
        INIT        : std_ulogic    := '0'
    );
    Port ( 
        clk         : in std_logic;                     -- The clock used by these registers, referring to its clock domain 
        rst         : in std_logic;                     -- Synchronous reset of the registers
        async_i     : in std_logic;                     -- Asynchronous input of the module
        sync_o      : out std_logic                     -- Synchronized output of the module
    );
end component Synchronizer;

-- Aux signals to interconnect components
--------------------------------------------------------------------------------------------------------------------------------------------------
signal dt_vec               : std_logic_vector(n_ch downto 0);
signal clk_dig              : std_logic;
signal clk_dig_aux          : std_logic;
signal clk_dig_div          : std_logic;
signal phase_ctrl_reg       : std_logic_vector(1 downto 0); 
signal phase_ctrl_reg_aux   : std_logic_vector(1 downto 0); 
signal pll_lck: std_logic;
--------------------------------------------------------------------------------------------------------------------------------------------------
-- System important flags
signal phase_overflow       : std_logic;
signal bistlip_on_flag      : std_logic;
--------------------------------------------------------------------------------------------------------------------------------------------------
-- Other output signals
signal done_reg             : std_logic;
signal done_dig_reg         : std_logic;
signal dt_aux_out           : std_logic_vector(13 downto 0);

begin

    -- InputBuffers Component Build and connections
--------------------------------------------------------------------------------------------------------------------------------------------------
    INPUT_COM : InputBuffers 
        generic map (
            n_ch            => n_ch
        )
        port map ( 
            in_P_clk_dt     => in_P_clk_dt_ports,
            in_N_clk_dt     => in_N_clk_dt_ports,
            in_P_clk_fr     => in_P_clk_fr_ports,
            in_N_clk_fr     => in_N_clk_fr_ports,
            in_P_data       => in_P_data_ports,
            in_N_data       => in_N_data_ports,
            out_data        => dt_vec,
            clk_dt          => clk_dig_aux
        );

    -- ClockManager Component Build and connections
--------------------------------------------------------------------------------------------------------------------------------------------------             
    CLK_COM : ClockManager
        port map ( 
            clk_sys         => sys_clk,
            clk_in          => clk_dig_aux,
            rst             => glob_rst,
            phase_sel       => phase_ctrl_reg,
            pll_locked      => pll_lck,
            clk_out         => clk_dig,
            clk_div_out     => clk_dig_div
        );
        
    -- Synchronizer for MUX control Select 0 Component Build and connections
--------------------------------------------------------------------------------------------------------------------------------------------------          
    SYNCH_COM_0 : Synchronizer
        generic map (
            SYNC_STAGES     => 6
        )
        port map ( 
            clk             => clk_dig,
            rst             => glob_rst,
            async_i         => phase_ctrl_reg_aux(0), 
            sync_o          => phase_ctrl_reg(0)
        );
        
    -- Synchronizer for MUX control Select 1 Component Build and connections
--------------------------------------------------------------------------------------------------------------------------------------------------           
    SYNCH_COM_1 : Synchronizer
        generic map (
            SYNC_STAGES     => 6
        )
        port map ( 
            clk             => clk_dig,
            rst             => glob_rst,
            async_i         => phase_ctrl_reg_aux(1), 
            sync_o          => phase_ctrl_reg(1)
        );

    -- DataAcquisition Component Build and connections
--------------------------------------------------------------------------------------------------------------------------------------------------           
    DATA_COM : DataAcquisition
        generic map (
            n_ch            => n_ch
        )
        port map ( 
            dt_clk          => clk_dig,
            dt_div_clk      => clk_dig_div,
            dt_in           => dt_vec,
            reset           => glob_rst,
            al_mode         => alignment_mode,
            pll_lckd        => pll_lck,
            train_active    => train_pat_act,
            custom_active   => custom_pat_act,
            ph_ovfl         => phase_overflow,
            btslp_on        => bistlip_on_flag,
            phase_ctrl      => phase_ctrl_reg_aux,
            dg_align_done   => done_dig_reg,
            align_done      => done_reg,
            dt_out          => dt_aux_out
        );
    
    -- Output signals of the module
--------------------------------------------------------------------------------------------------------------------------------------------------            
    pll_lck_o       <=  pll_lck;                -- PLL Locked
    phase_selected  <=  phase_ctrl_reg_aux;     -- Selected phase for the phase align
    ph_overflow     <=  phase_overflow;         -- Overflow in the phase aligning machine
    bistlip_on      <=  bistlip_on_flag;        -- Bitslip in operation
    clk_div         <=  clk_dig_div;            -- Frame Clock
    dt_dig_rdy      <=  done_dig_reg;           -- Digital Clock Aligned With Data finished
    dt_rdy          <=  done_reg;               -- Complete Alignment finished   
    data_output     <=  dt_aux_out;             -- Output data form the Iserdese Block

end acqMan_arch;