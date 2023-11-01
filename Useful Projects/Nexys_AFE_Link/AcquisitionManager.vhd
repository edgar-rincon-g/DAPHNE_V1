----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel ?vila G?mez
-- 
-- Create Date: 08.05.2023 11:43:43
-- Design Name: Acquisition Manager Build
-- Module Name: AcquisitionManager - acqMan_arch
-- Project Name: DAPHNE V1 - FULL DATA ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates the connection between the CLockManager Module, the Data Acquisition Module and the Input Module
-- Dependencies: 
-- Relies on 'ClockManager.vhd', 'PLL_Module.vhd', 'ClockMUX.vhd' and 'Bufgmux_Module.vhd' files Clock Manager Module
-- Relies also on 'DataAcquisition.vhd', 'AlignFSM.vhd' and 'Iserdese_Block.vhd' files
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
        n_ch : integer := 1
    );
    Port ( 
        in_P_clk_dt_ports : in std_logic;
        in_N_clk_dt_ports : in std_logic;
        in_P_clk_fr_ports : in std_logic;
        in_N_clk_fr_ports : in std_logic;
        in_P_data_ports : in std_logic;
        in_N_data_ports : in std_logic;
        sys_clk : in std_logic;
        glob_rst : in std_logic;
        alignment_mode : in std_logic;
        train_pat_act : in std_logic;
        custom_pat_act : in std_logic;
        ----------------------------------------------------------------------------
        -- Output mapping input (switches)
--        o_ctrl : in std_logic_vector(1 downto 0); 
        phase_selected : out std_logic_vector(1 downto 0);
        ph_overflow : out std_logic;
        bistlip_on : out std_logic;       
        dt_rdy : out std_logic;
        clk_div : out std_logic;
        pll_lck_o : out std_logic;
--        ctrl_usr : in std_logic_vector(1 downto 0);
        --str_align : in std_logic; -- Unused, looking for inmediate astart in the aligning process
        --out_led0 : out std_logic; -- Unused because done will be used as an output enable
        --out_led1 : out std_logic; -- Unused because only some Iserdese pins will be connected
        data_output : out std_logic_vector(13 downto 0) -- Was 5 downto 0, used to show only some outputs of the Iserdese
    );
end AcquisitionManager;

architecture acqMan_arch of AcquisitionManager is

-- InputBuffers Component instantiation
--------------------------------------------------------------------------------------------
component InputBuffers 
    Generic (
        n_ch : integer := 1
    );
    Port ( 
        in_P_clk_dt: in std_logic;
        in_N_clk_dt: in std_logic;
        in_P_clk_fr: in std_logic;
        in_N_clk_fr: in std_logic;
        in_P_data: in std_logic;--_vector((n_ch - 1) downto 0);
        in_N_data: in std_logic;--_vector((n_ch - 1) downto 0);
        out_data: out std_logic_vector(n_ch downto 0);
        clk_dt: out std_logic
    );
end component InputBuffers;

-- DataAcquisition Component instantiation
--------------------------------------------------------------------------------------------
component DataAcquisition
    Generic (
        n_ch : integer := 1
    );
    Port ( 
        dt_clk : in std_logic;
        dt_div_clk : in std_logic;
        dt_in : in std_logic_vector(n_ch downto 0);
        reset : in std_logic;
        al_mode : in std_logic;
        pll_lckd : in std_logic;
        train_active : in std_logic;
        custom_active : in std_logic;
        --start_align : in std_logic;
        ph_ovfl : out std_logic;
        btslp_on : out std_logic;
        phase_ctrl : out std_logic_vector(1 downto 0);
        align_done : out std_logic;
        dt_out : out std_logic_vector(13 downto 0)
    );
end component DataAcquisition;

-- ClockManager Component instantiation
--------------------------------------------------------------------------------------------
component ClockManager
    Port ( 
        clk_sys : in std_logic;
        clk_in : in std_logic;
        rst : in std_logic;
        phase_sel : in std_logic_vector(1 downto 0);
        pll_locked : out std_logic;
        clk_out : out std_logic;
        clk_div_out : out std_logic
    );
end component ClockManager;

-- Synchronizer Component instantiation
--------------------------------------------------------------------------------------------
component Synchronizer 
    Generic (
        SYNC_STAGES : integer := 2; 
        INIT : std_ulogic := '0'
    );
    Port ( 
        clk : in std_logic; 
        rst : in std_logic;
        async_i : in std_logic; 
        sync_o : out std_logic 
    );
end component Synchronizer;

-- Aux signals to interconnect components
signal dt_vec: std_logic_vector(n_ch downto 0);
signal clk_dig: std_logic;
signal clk_dig_aux: std_logic;
signal clk_dig_div: std_logic;
signal phase_ctrl_reg: std_logic_vector(1 downto 0); 
signal phase_ctrl_reg_aux: std_logic_vector(1 downto 0); 
signal pll_lck: std_logic;
--------------------------------------------------------
-- System important flags
signal phase_overflow: std_logic;
signal bistlip_on_flag: std_logic;
--------------------------------------------------------
-- Other output signals
signal done_reg: std_logic;
signal dt_aux_out: std_logic_vector(13 downto 0);

begin

    -- InputBuffers Component Build and connections
--------------------------------------------------------------------------------------------
    INPUT_COM : InputBuffers 
        generic map (
            n_ch => n_ch
        )
        port map ( 
            in_P_clk_dt => in_P_clk_dt_ports,
            in_N_clk_dt => in_N_clk_dt_ports,
            in_P_clk_fr => in_P_clk_fr_ports,
            in_N_clk_fr => in_N_clk_fr_ports,
            in_P_data => in_P_data_ports,
            in_N_data => in_N_data_ports,
            out_data => dt_vec,
            clk_dt => clk_dig_aux
        );

    -- ClockManager Component Build and connections
--------------------------------------------------------------------------------------------
    CLK_COM : ClockManager
        port map ( 
            clk_sys => sys_clk,
            clk_in => clk_dig_aux,
            rst => glob_rst,
            phase_sel => phase_ctrl_reg,
            pll_locked => pll_lck,
            clk_out => clk_dig,
            clk_div_out => clk_dig_div
        );
        
    -- Synchronizer for MUX control Select 0 Component Build and connections
--------------------------------------------------------------------------------------------
    SYNCH_COM_0 : Synchronizer
        generic map (
            SYNC_STAGES => 6
        )
        port map ( 
            clk => clk_dig,
            rst => glob_rst,
            async_i => phase_ctrl_reg_aux(0), 
            sync_o => phase_ctrl_reg(0)
        );
        
    -- Synchronizer for MUX control Select 1 Component Build and connections
--------------------------------------------------------------------------------------------
    SYNCH_COM_1 : Synchronizer
        generic map (
            SYNC_STAGES => 6
        )
        port map ( 
            clk => clk_dig,
            rst => glob_rst,
            async_i => phase_ctrl_reg_aux(1), 
            sync_o => phase_ctrl_reg(1)
        );

    -- DataAcquisition Component Build and connections
--------------------------------------------------------------------------------------------
DATA_COM : DataAcquisition
    generic map (
        n_ch => n_ch
    )
    port map ( 
        dt_clk => clk_dig,
        dt_div_clk => clk_dig_div,
        dt_in => dt_vec,
        reset => glob_rst,
        al_mode => alignment_mode,
        pll_lckd => pll_lck,
        train_active => train_pat_act,
        custom_active => custom_pat_act,
        --start_align => str_align,
        ph_ovfl => phase_overflow,
        btslp_on => bistlip_on_flag,
        phase_ctrl => phase_ctrl_reg_aux,
        align_done => done_reg,
        dt_out => dt_aux_out
    );

    --------------------------------------------------------------------------------------------------------------------------
    -- Output Mapping according to flags and signals of interest
--    OUTPUTS : process (o_ctrl, done_reg, phase_overflow, phase_ctrl_reg_aux, dt_aux_out, bistlip_on_flag)
--    begin
--        case (o_ctrl) is
--            when "00" =>
--                -- Show the system flag signals
--                -- Includes the phase selected as best to align the data, should default to 0
--                data_output <= "000" & bistlip_on_flag & phase_ctrl_reg_aux & done_reg & phase_overflow;
--            when "01" => 
--                if (done_reg = '1') then
--                    -- Show the aligned data LSB
--                    data_output <= dt_aux_out(7 downto 0);
--                else
--                    data_output <= "10011001";
--                end if;
--            when "10" =>
--                if (done_reg = '1') then
--                    -- Show the aligned data MSB
--                    data_output <= "00" & dt_aux_out(13 downto 8);
--                else
--                    data_output <= "10011001";
--                end if;                
--            when "11" =>
--                -- Reserved
--                -- Just... Why?
--                data_output <= "01100110";
--        end case;
--    end process OUTPUTS;

    -- Output signals of the module
    --clk_div <= clk_dig_div; -- Frame Clock
    --dt_rdy <= done_reg; -- Alignment finished

--phase_ctrl_reg_aux(0) <= ctrl_usr(0) OR phase_ctrl_reg(0);
--phase_ctrl_reg_aux(1) <= ctrl_usr(1) OR phase_ctrl_reg(1);
-- This is only given when testing on the Nexys Video, else just comment/delete
--out_led0 <= done_reg;

-- Done_reg will be used as an enable for the system to output the iserdese data when it is ready
--data_output <= dt_aux_out(6 downto 0) when (done_reg = '1') else "1001001";

--out_led1 <= (dt_aux_out(3) AND dt_aux_out(4) AND dt_aux_out(5) AND dt_aux_out(6) AND dt_aux_out(7) AND dt_aux_out(8) AND
              --dt_aux_out(9) AND dt_aux_out(10));
              
    -- Output signals of the module
    pll_lck_o <= pll_lck;
    phase_selected <= phase_ctrl_reg_aux;
    ph_overflow <= phase_overflow;
    bistlip_on <= bistlip_on_flag;
    clk_div <= clk_dig_div; -- Frame Clock
    dt_rdy <= done_reg; -- Alignment finished   
    data_output <= dt_aux_out; -- Output data form the Iserdese Block

end acqMan_arch;