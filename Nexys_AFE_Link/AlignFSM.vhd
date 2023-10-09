----------------------------------------------------------------------------------
-- Company: Unviersidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 05.05.2023 14:59:21
-- Design Name: Data Alignment FSM Full Build
-- Module Name: AlignFSM - alFsm_arch
-- Project Name: DAPHNE V1 - DATA ALIGNMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Creates a big Module containing all the training FSM to align the Digital and Frame Clocks with the Data
-- Dependencies: 
-- Relies on 'bitFSM_Module.vhd', 'frameFSM_Module.vhd' files
-- Revision:
-- Revision 0.02 - File Updated
-- Additional Comments:
-- The Alignment Module has succesfully included both FSM to completely align the data
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AlignFSM is
    Port ( 
        --clk : in std_logic; -- Used for synchronization only
        clk_div : in std_logic;
        rst : in std_logic;
        iser_data : in std_logic_vector(13 downto 0);
        frame_data : in std_logic_vector(13 downto 0);
        al_frame : in std_logic;
        pll_locked : in std_logic;
        train_pat_active : in std_logic;
        custom_pat_active : in std_logic;
        --start_process : in std_logic; -- checking inmediate start in the aligning process
        phase_overflow : out std_logic;
        bitslip_on_flag : out std_logic;
        bitslip : out std_logic;
        phase_out : out std_logic_vector(1 downto 0);
        done : out std_logic
    );
end AlignFSM;

architecture alFsm_arch of AlignFSM is

-- Bit Aligning FSM component instantiation
component bitFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        iser_data : in std_logic_vector(13 downto 0);
        al_frame : in std_logic;
        pll_locked : in std_logic;
        train_pat_active : in std_logic;
        do_process : in std_logic;
        phase_ovfl : out std_logic;
        phase_out : out std_logic_vector(1 downto 0);
        bit_done : out std_logic
    );
end component;

-- Frame Aligning FSM component instantiation
component frameFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        frame_data : in std_logic_vector(13 downto 0);
        iser_data : in std_logic_vector(13 downto 0);
        al_frame : in std_logic;
        bit_done : in std_logic;
        pll_locked : in std_logic;
        do_process : in std_logic;
        custom_pat_active : in std_logic;
        exc_bitslip_flag : out std_logic;
        bitslip_out : out std_logic;
        fr_done : out std_logic
    );
end component;

-- Synchronizing component instantiation (MUX Controller)
--component Synchronizer is
--    Generic (
--        ff_Quantity : integer := 2
--    );
--    Port ( 
--        clk : in std_logic;
--        rst : in std_logic;
--        async_i : in std_logic;
--        sync_o : out std_logic
--    );
--end component;

-- Aux signals to interconnect the FSMs
signal done_bit: std_logic := '0';
signal done_align: std_logic := '0';
signal phase_overflow_reg: std_logic := '0';
signal start_process: std_logic;
-- Synchronizing phase controlling registers
--signal phase_out_aux: std_logic_vector(1 downto 0) := "00";

begin

    -- Modifies the value of start_process signal
    start_process <= '0' when (done_align = '1') else '1'; 

    -- Instantiates the Bit (Digital Clock) FSM
----------------------------------------------------------------------------------------------
    FSM_BIT: bitFSM_Module
    port map (
        clk_fsm => clk_div,
        rst => rst,
        iser_data => iser_data,
        al_frame => al_frame,
        pll_locked => pll_locked,
        train_pat_active => train_pat_active,
        do_process => start_process,
        phase_ovfl => phase_overflow_reg,
        phase_out => phase_out,
        bit_done => done_bit
    );

    -- Instantiates the Frame (Frame Clock) FSM
----------------------------------------------------------------------------------------------
    FSM_FRAME: frameFSM_Module
    port map ( 
        clk_fsm => clk_div,
        rst => rst,
        frame_data => frame_data,
        iser_data => iser_data,
        al_frame => al_frame,
        bit_done => done_bit,
        pll_locked => pll_locked,
        do_process => start_process,
        custom_pat_active => custom_pat_active,
        exc_bitslip_flag => bitslip_on_flag,
        bitslip_out => bitslip,
        fr_done => done_align
    );
    
    -- Instantiates the Synchronizer needed for clock domain crossing, control of MUX Select S0
--    SYNCH_0: Synchronizer
--    generic map (
--        ff_Quantity => 4
--    )
--    port map (
--        clk => clk,
--        rst => rst,
--        async_i => phase_out_aux(0),
--        sync_o => phase_out(0)
--    );
    
    -- Instantiates the Synchronizer needed for clock domain crossing, control of MUX Select S1
--    SYNCH_1: Synchronizer
--    generic map (
--        ff_Quantity => 4
--    )
--    port map (
--        clk => clk,
--        rst => rst,
--        async_i => phase_out_aux(1),
--        sync_o => phase_out(1)
--    );
    
    -- Phase Overflow Flag Output of the Module assignation
    phase_overflow <= phase_overflow_reg;
    
    -- Done Output of the Module assignation
    done <= done_align;
    
end alFsm_arch;