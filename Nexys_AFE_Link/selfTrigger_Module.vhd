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
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
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
        afe_data : in std_logic_vector(13 downto 0);
        dt_rdy : in std_logic;
        rst : in std_logic;
        clk : in std_logic;
        rd_clk : in std_logic;
        sys_clk : in std_logic;
        rd_ctrl : in std_logic;
        wr_enable_signal : in std_logic;
        rd_enable_signal : in std_logic;
        filt_out : out std_logic_vector(13 downto 0);
        xcorr_out : out std_logic_vector(47 downto 0);
        xcorr_data_out : out std_logic_vector(13 downto 0);
        trigger : out std_logic;
--        state_val : out std_logic_vector(2 downto 0);
        fifo_rd_out : out std_logic;
        fifo_o : out std_logic_vector(13 downto 0);
        fifo_a_empty : out std_logic;
        fifo_a_full : out std_logic;
        fifo_empty : out std_logic;
        fifo_full : out std_logic;
        fifo_wr_err : out std_logic;
        fifo_rd_err : out std_logic;
        axi_data : out std_logic_vector(7 downto 0);
        axi_valid : out std_logic;
        axi_ready : in std_logic;
        axi_last : out std_logic;
        axi_user : out std_logic
    );
end selfTrigger_Module;

architecture Behavioral of selfTrigger_Module is

component highPass_FirstOrder 
    Generic (
        Data_Size : integer := 14;
        Coefficient_Resolution : integer := 17 -- One more than decimal desired
    );
    Port (
        rst : in std_logic; -- Reset for the filter
        clk : in std_logic; -- Clock for the filter
        x_in : in std_logic_vector((Data_Size - 1) downto 0); -- Input vector from AFEs
        y_out : out std_logic_vector((Data_Size - 1) downto 0) -- Output vector from Filter
    );
end component;

component self_trigger 
 generic(
  g_INPUT_WIDTH : natural := 14;
  g_SUM_WIDTH   : natural := 14;
  g_MULT_WIDTH  : natural := 28
 );
 port(
  clk  : in  std_logic;
  rst : in std_logic;
  i_data  : in  std_logic_vector(g_INPUT_WIDTH - 1 downto 0);
  data_hpf : in std_logic_vector(g_INPUT_WIDTH - 1 downto 0);
  o_data : out std_logic_vector(g_SUM_WIDTH - 1 downto 0);
  o_xcorr : out std_logic_vector(47 downto 0);
  o_trigger : out std_logic
 );
end component;

--component trigSaveFSM 
--    Generic (
--        WR_CLK_FREQ : real := 100.0;
--        RD_CLK_FREQ : real := 100.0
--    );
--    Port ( 
--        WR_CLK : in std_logic;
--        RD_CLK :  in std_logic;
--        SYS_CLK : in std_logic;
--        RST : in std_logic;
--        TRIG_IN : in std_logic;
--        READ_IN : in std_logic;
--        FIFO_FULL : in std_logic;
--        FIFO_EMPTY : in std_logic;
--        RD_AFTER : in std_logic; 
--        WR_AFTER : in std_logic;
--        TRIG_OUT : out std_logic;
--        READ_OUT : out std_logic
----        state_val : out std_logic_vector(2 downto 0)
--    );
--end component trigSaveFSM;

component trigSaveReadFSM 
    Port ( 
        WR_CLK : in std_logic;
        RD_CLK :  in std_logic;
        SYS_CLK : in std_logic;
        RST : in std_logic;
        TRIG_IN : in std_logic;
        READ_IN : in std_logic;
        FIFO_FULL : in std_logic;
        FIFO_EMPTY : in std_logic;
        RD_AFTER : in std_logic; 
        WR_AFTER : in std_logic;
        TRIG_OUT : out std_logic;
        READ_OUT : out std_logic
    );
end component trigSaveReadFSM;

component AXI_FIFO_Adapter
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ : real := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ : real := 100.0;
        -- FIFO Important Parameters
        data_width : integer := 14;
        fifoPointersLength : integer := 11;
        AEMPTY_OFF : bit_vector := X"0080";
        AFULL_OFF : bit_vector := X"0080" 
    );
    Port (
        d_i : in std_logic_vector((data_width - 1) downto 0);
        dt_rdy : in std_logic;
        wr_enable : in std_logic;
        rd_enable : in std_logic;
--        full_read : in std_logic;
        wr_clk : in std_logic;
        rd_clk : in std_logic;
        m_axi_clk : in std_logic;
        rst : in std_logic;
        --mem_rst: in std_logic;     
        a_empty : out std_logic;
        a_full : out std_logic;
        empty : out std_logic;
        full : out std_logic; 
        wr_err : out std_logic;
        rd_err : out std_logic;
        wr_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        rd_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        fifo_o : out std_logic_vector(13 downto 0);
        m_axi_fifo_tdata : out std_logic_vector((data_width/2) downto 0);
        m_axi_fifo_tvalid : out std_logic;
        m_axi_fifo_tready : in std_logic;
        m_axi_fifo_tlast : out std_logic;
        m_axi_fifo_tuser : out std_logic 
    );
end component AXI_FIFO_Adapter;

signal data_aux: std_logic_vector(13 downto 0);
signal trigger_aux : std_logic;
--signal fifo_a_full : std_logic;
--signal fifo_empty : std_logic;
signal read : std_logic;
signal trigger_in : std_logic;
--signal write : std_logic;
--signal rd_ctrl : std_logic;
signal fifo_trig : std_logic;
signal fifo_rd : std_logic; 
signal afe_fifo_a_empty : std_logic;
signal afe_fifo_a_full : std_logic;
signal afe_fifo_empty : std_logic;
signal afe_fifo_full : std_logic;
signal afe_fifo_wr_err : std_logic;
signal afe_fifo_rd_err : std_logic;
--signal wr_enable_signal : std_logic;
--signal rd_enable_signal : std_logic;
signal xcorr_data_out_aux : std_logic_vector(13 downto 0);

begin

    FILTER_COM : highPass_FirstOrder     
    port map (
        rst => rst,
        clk => clk,
        x_in => afe_data,
        y_out => data_aux 
    );
    
    SELF_TRIGGER_TOP_COM : self_trigger
    port map (
        clk => clk,
        rst => rst,
        i_data => afe_data,
        data_hpf => data_aux,
        o_data => xcorr_data_out_aux,
        o_xcorr => xcorr_out,
        o_trigger => trigger_aux
    );
    
    -- Trigger signal can be either the external trigger input or the self triggering one
    trigger_in <= wr_enable_signal OR trigger_aux; --uncomment for real one, comment to test if write enable and read enable are properly working
    
    -- FIFO can be read either manually or automatically depending on the configuration of the RD_AFTER input
    -- If the FIFO is read manually, it depends on the rd_enable signal
    
--    fsm_control : trigSaveFSM
--    generic map (
--        WR_CLK_FREQ => 40.0,
--        RD_CLK_FREQ => 62.5
--    )
--    port map (
--        WR_CLK => clk,
--        RD_CLK => rd_clk,
--        SYS_CLK => sys_clk,
--        RST => rst,
--        TRIG_IN => trigger_in, --trigger_aux,
--        READ_IN => rd_enable_signal, --'0',
--        FIFO_FULL => afe_fifo_a_full,
--        FIFO_EMPTY => afe_fifo_empty,
--        RD_AFTER => rd_ctrl, 
--        WR_AFTER => '0',
--        TRIG_OUT => fifo_trig, --write,
--        READ_OUT => fifo_rd --read
----        state_val => state_val
--    );
    
    FSM_CTRL_COM : trigSaveReadFSM
    port map (
        WR_CLK => clk,
        RD_CLK => rd_clk,
        SYS_CLK => sys_clk,
        RST => rst,
        TRIG_IN => trigger_in, --trigger_aux,
        READ_IN => rd_enable_signal, --'0',
        FIFO_FULL => afe_fifo_a_full,
        FIFO_EMPTY => afe_fifo_empty,
        RD_AFTER => rd_ctrl, 
        WR_AFTER => '0',
        TRIG_OUT => fifo_trig, --write,
        READ_OUT => fifo_rd --read
    );
    
--    fifo_trig <= wr_enable_signal;-- OR write; -- Self trigger is asserted byt he system or by external force
--    fifo_rd <= rd_enable_signal;-- OR read;
    
    FIFO_INST_COM : AXI_FIFO_Adapter
    generic map (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ => 62.5,
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ => 62.5,--62.5,
        -- FIFO Important Parameters
        AEMPTY_OFF => X"6",
        AFULL_OFF => X"8"
    )
    port map (
        d_i => xcorr_data_out_aux,
        dt_rdy => dt_rdy,
        wr_enable => fifo_trig,
        rd_enable => fifo_rd,
--        full_read => '1',
        wr_clk => clk,
        rd_clk => rd_clk,
        m_axi_clk => sys_clk,
        rst => rst,
        --mem_rst: in std_logic;     
        a_empty => afe_fifo_a_empty,
        a_full => afe_fifo_a_full,
        empty => afe_fifo_empty,
        full => afe_fifo_full,
        wr_err => afe_fifo_wr_err,
        rd_err => afe_fifo_rd_err,
        wr_count => open,
        rd_count => open,
        fifo_o => fifo_o,
        m_axi_fifo_tdata => axi_data,
        m_axi_fifo_tvalid => axi_valid,
        m_axi_fifo_tready => axi_ready,
        m_axi_fifo_tlast => axi_last,
        m_axi_fifo_tuser => axi_user
    );
    
    -- Outputs of the Module
    fifo_rd_out <= fifo_rd;
    filt_out <= data_aux;
    trigger <= trigger_aux;--write;
    xcorr_data_out <= xcorr_data_out_aux;
    fifo_a_empty <= afe_fifo_a_empty;
    fifo_empty <= afe_fifo_empty;
    fifo_a_full <= afe_fifo_a_full;
    fifo_full <= afe_fifo_full;
    fifo_wr_err <= afe_fifo_wr_err;
    fifo_rd_err <= afe_fifo_rd_err;

end Behavioral;