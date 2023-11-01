----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 05.05.2023 14:59:21
-- Design Name: Finite State Machine to align the frame Buil
-- Module Name: frameFSM_Module - frFsm_arch
-- Project Name: DAPHNE V1 - DATA ALIGNMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Creates a FSM to align the frame with the Frame Clock, implements a different structure for the FSM
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- This is the first version of this design
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity frameFSM_Module is
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
end frameFSM_Module;

architecture frFsm_arch of frameFSM_Module is

-- Declaration of the states type and signal
type states is (reset, check_frame, exec_bitslip, aligned);
signal State, Next_State: states;

-- Aux signals to operate inside the FSM
signal q_vector: std_logic_vector(13 downto 0) := "00000000000000";
signal frame_count: std_logic_vector(2 downto 0) := "000";
signal is_aligned_fr: std_logic := '0';
signal is_aligned_dt: std_logic := '0';
signal bitslip_done: std_logic := '0';
signal start_bitslip_count: std_logic := '0';
signal done_reg: std_logic := '0';
--------------------------------------------------------------------
-- Signals that control the status flag when a bitslip was executed and when the process has finished
signal turn_on_bitslip_flag: std_logic := '0';
signal turn_off_bitslip_flag: std_logic := '0';
signal is_bitslip: std_logic := '0';

begin

    -- Input Data Frame should be assigned to aux internal signal
    -- It depends wether we are aligning using training patterns or the Frame CLock as default training pattern
    q_vector <= frame_data when (al_frame = '0') else iser_data;    -- or done_reg = '1'
   
    -- Constantly monitoring q_vector value in order to tell the FSM data is aligned
    -- Coming from Frame Clock Iserdes
    is_aligned_fr <= '1' when (q_vector = "11111110000000") else '0';
    -- Coming from Data Iserdes
    is_aligned_dt <= '1' when (q_vector = "10110100101001") else '0';

    -- Process depending on FSM Outputs
    --------------------------------------------------------------------------------------------------------------
    -- Counting the amount of cycles has passed since bitslip operation was asserted
    bitslip_increaser: process(clk_fsm, rst, start_bitslip_count, frame_count)
    begin
        if falling_edge(clk_fsm) then
            if (rst = '1') then
                frame_count <= "000";
            else
                -- If frame_count is 5, the count must restart, and the bistlip process has finished
                if (frame_count = "101") then
                    bitslip_done <= '1';
                    frame_count <= "000";
                else 
                    if (start_bitslip_count = '1') then
                        frame_count <= std_logic_vector(unsigned(frame_count) + 1);
                    end if;
                    bitslip_done <= '0';
                end if;   
            end if;
        end if;
    end process bitslip_increaser;
    
    -- Process to drive HIGH or LOW the phase overflow flag, depending on the FSM outputs 
    phase_overflow_control: process(clk_fsm, rst, turn_on_bitslip_flag, turn_off_bitslip_flag) --blink_phase_overflow) --
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                is_bitslip <= '0';
            else
                if (turn_on_bitslip_flag = '1') then
                    is_bitslip <= '1';
                end if;
                if (turn_off_bitslip_flag = '1') then
                    is_bitslip <= '0';
                end if;                
            end if;
        end if;
    end process phase_overflow_control;

    -- Finite State Machine process
    --------------------------------------------------------------------------------------------------------------
    -- Process to change the states of the FSM
    reg_states: process(rst, clk_fsm)
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                State <= reset;
            else 
                State <= Next_State;
            end if;
        end if;
    end process reg_states;

    -- Process to define when states change
    mod_states: process(State, bit_done, al_frame, do_process, pll_locked, custom_pat_active, is_aligned_fr, is_aligned_dt, bitslip_done)
    begin
        Next_State <= State; -- Originally assigned to State (wtf...?)
        case State is
            when reset => 
                -- Check if system can start process, if bit_done and not(al_frame) are not asserted, then it will not be able to start
                if (bit_done = '1' OR (al_frame = '0' AND do_process = '1' AND pll_locked = '1')) then
                    Next_State <= check_frame;
                end if;                
            when check_frame =>
                -- We must ask how are we aligning data
                if (al_frame = '0') then
                    -- We are using frame clock as training pattern
                    if (is_aligned_fr = '1') then
                        Next_State <= aligned;
                    else
                        Next_State <= exec_bitslip;
                    end if;
                else
                    -- We are using other training patterns
                    if (custom_pat_active = '1') then
                        if (is_aligned_dt = '1') then
                            Next_State <= aligned;
                        else
                            Next_State <= exec_bitslip;
                        end if;
                    end if;
                end if;                
            when exec_bitslip =>
                if (bitslip_done = '1') then
                    Next_State <= check_frame;
                end if;
            when others =>
                -- This includes both reset and aligned conditions!
                -- Do nothing
        end case;
    end process mod_states;

    -- Finite State Machine Outputs
    --------------------------------------------------------------------------------------------------------------
    -- Combinatorial Process to establish FSM Outputs
    do_states: process(State)
    begin
        case State is -- Change to Next_State to check sim behavior
            when reset =>
                -- All outputs must remain in logic LOW
                start_bitslip_count <= '0';
                done_reg <= '0';
                turn_on_bitslip_flag <= '0';
                turn_off_bitslip_flag <= '0';
            when check_frame =>
                -- This is a transition state therefore no outputs change
                start_bitslip_count <= '0';
                done_reg <= '0';
                turn_on_bitslip_flag <= '0';
                turn_off_bitslip_flag <= '0';
            when exec_bitslip =>
                -- Bitslip operation must be performed therefore the output signalrelated is asserted
                start_bitslip_count <= '1';
                done_reg <= '0';
                turn_on_bitslip_flag <= '1';
                turn_off_bitslip_flag <= '0';
            when aligned =>
                -- FSM has finished, notifies this achievement with done_reg in logic HIGH
                start_bitslip_count <= '0';
                done_reg <= '1';
                turn_on_bitslip_flag <= '0';
                turn_off_bitslip_flag <= '1';
            when others =>   
                start_bitslip_count <= '0';
                done_reg <= '0';
                turn_on_bitslip_flag <= '0';
                turn_off_bitslip_flag <= '0';
        end case;
    end process do_states;

    -- Output flag that shows the system is executing a bitslip operation, and is not able to find the proper alignment for the data
    exc_bitslip_flag <= is_bitslip;

    -- Bitslip output using the values of the module according to FSM logic
    bitslip_out <= '1' when (frame_count = "001") else '0';

    -- fr_done output receives the value within the done_reg signal
    fr_done <= done_reg;

end frFsm_arch;