----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 05.05.2023 14:59:21
-- Design Name: Finite State Machine to align bits Build
-- Module Name: bitFSM_Module - biFsm_arch
-- Project Name: DAPHNE V1 - DATA ALINGMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Creates a FSM to align the data with the Digital Clock, implements a different structure for the FSM
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - Changed file in order to correct behavior based on simulation results
-- Additional Comments:
-- This is the third version of the original FSM coded in 'bitFSM_Module.vhd'
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

entity bitFSM_Module is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_fsm             : in std_logic;                         -- FSM Clock
        rst                 : in std_logic;                         -- Reset Active HIGH
        iser_data           : in std_logic_vector(13 downto 0);     -- Channel 0 Data
        al_frame            : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_locked          : in std_logic;                         -- PLL Locked
        train_pat_active    : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        do_process          : in std_logic;                         -- Start Alignment
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        phase_ovfl          : out std_logic;                        -- Overflow in the Phase Counter
        phase_out           : out std_logic_vector(1 downto 0);     -- Selected Phase (Output "11" Reserved for Future Use)
        bit_done            : out std_logic                         -- FSM Finished with Alignment
    );
end bitFSM_Module;

architecture biFsm_arch of bitFSM_Module is

-- Declaration of the states type and signal
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
type states is (reset, need_align, check_phase, phase_overflowed, up_phase, asleep, bit_aligned);
signal State, Next_State        : states;

-- Aux signals to operate inside the FSM
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal phase_count              : std_logic_vector(1 downto 0) := "00";
signal sleep_count              : std_logic_vector(2 downto 0) := "000";
signal q_vector                 : std_logic_vector(13 downto 0) := "00000000000000";
signal is_aligned               : std_logic := '0';
signal increase_phase           : std_logic := '0';
signal phase_overflow           : std_logic := '0';
signal start_sleep_count        : std_logic := '0';
signal done_reg                 : std_logic := '0';

-- Signals that control the overflow flag when checking each phase
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal turn_on_phase_overflow   : std_logic := '0';
signal turn_off_phase_overflow  : std_logic := '0';
signal phase_overflow_flag_reg  : std_logic := '0';

begin

    -- Input Data Frame should be assigned to aux internal signal 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    q_vector    <= iser_data;
   
    -- Constantly monitoring q_vector value in order to tell the FSM data is aligned
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    is_aligned  <= '1' when ((q_vector = "10101010101010") OR (q_vector = "01010101010101")) else '0';

    -- Process depending on FSM Outputs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Process to increase the phase_count value depending on the signals coming from the FSM
    phase_increaser: process(clk_fsm, rst, increase_phase, phase_count)
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                phase_count <= "00";
                phase_overflow <= '0';
            else
                if (increase_phase = '1') then 
                    if (phase_count /= "11") then -- Esto no se necesita, puede ser de 3 bits y el overflow es el 3er bit
                        phase_count <= std_logic_vector(unsigned(phase_count) + 1);
                        phase_overflow <= '0';
                    else
                        phase_overflow <= '1';
                        phase_count <= "00";
                    end if;
                end if;
            end if;
        end if;
    end process phase_increaser;

    -- Process to increase the sleep_count value depending on the signals coming from the FSM
    sleep_increaser: process(clk_fsm, rst, start_sleep_count)
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                sleep_count <= "000";
            else
                if (start_sleep_count = '1') then
                    sleep_count <= std_logic_vector(unsigned(sleep_count) + 1);
                else
                    sleep_count <= "000";
                end if;
            end if;
        end if;
    end process sleep_increaser;
    
    -- Process to drive HIGH or LOW the phase overflow flag, depending on the FSM outputs 
    phase_overflow_control: process(clk_fsm, rst, turn_on_phase_overflow, turn_off_phase_overflow) --blink_phase_overflow) --
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                phase_overflow_flag_reg <= '0';
            else
                -- This may show a multidriven net error, if its true, comment and uncomment the NOT gate logic
                if (turn_on_phase_overflow = '1') then
                    phase_overflow_flag_reg <= '1';
                end if;
                if (turn_off_phase_overflow = '1') then
                    phase_overflow_flag_reg <= '0';
                end if;                
            end if;
        end if;
    end process phase_overflow_control;

    -- Finite State Machine process
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
    mod_states: process(State, al_frame, pll_locked, train_pat_active, do_process, is_aligned, phase_overflow, sleep_count)
    begin
        Next_State <= State; -- Originally assigned to State (wtf...?), then was changed to reset, wouldn't work
        case State is
            when reset => 
                -- Check if system can start process, if pll_locked and al_frame are not asserted, then it will not be able to start
                if ((al_frame = '1') AND (pll_locked = '1')) then
                    Next_State <= need_align;
                end if;
            when need_align =>
                -- We are using custom patterns to train the system
                if ((train_pat_active = '1') AND (do_process = '1')) then
                    -- We must ask if the system is ready to do a custom training instead of an automatic training
                    Next_State <= check_phase;
                end if;
            when check_phase =>
                if (is_aligned = '1') then -- OR (phase_overflow = '1') then
                    -- We verify if the data is aligned, if so, we have finished
                    -- If there are no phases that work, the FSM will remain on a loop, so we must get it out
                    Next_State <= bit_aligned;
                elsif (phase_overflow = '1') then
                    Next_State <= phase_overflowed;
                else 
                    -- If not, we must go to the state where the phase changes...
                    Next_State <= up_phase;
                end if;
            when phase_overflowed =>
                -- If the system found an overflow when checking each phase, it must keep searching until the data is aligned
                -- Notify that there was an overflow, to state the condition for the system, just in case
                Next_State <= up_phase;
            when up_phase =>
                Next_State <= asleep;
            when asleep =>
                -- FSM must take time in order to allow the clock to stabilize within its registers
                if (sleep_count = "100") then
                    Next_State <= check_phase;
                end if;
            when others =>
                -- This includes both reset and bit_aligned conditions!
                -- Do nothing
        end case;
    end process mod_states;

    -- Finite State Machine Outputs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Combinatorial Process to establish FSM Outputs
    do_states: process(State)
    begin
        case State is -- Change to Next_State to check sim behavior
            when reset =>
                -- All outputs must remain in logic LOW
                increase_phase <= '0';
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
            when need_align =>
                -- This is a transition state therefore no outputs change
                increase_phase <= '0';
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
            when check_phase =>
                -- This is also a transition state therefore no outputs change
                increase_phase <= '0';
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
            when phase_overflowed =>
                -- This is an error status state, it drives HIGH the 'turn on' signal for the phase overlow flag
                increase_phase <= '0';
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '1';
                turn_off_phase_overflow <= '0';
            when up_phase =>
                -- The clock phase used by the system must change
                increase_phase <= '1';
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
            when asleep =>
                -- Since the phase changed, FSM must wait until Clock signal is stable
                increase_phase <= '0';    
                start_sleep_count <= '1';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
            when bit_aligned =>
                -- FSM has finished, notifies this achievement with done_reg in logic HIGH
                -- Also, drive HIGH the 'turn off' signal for the phase overlow flag
                increase_phase <= '0';
                start_sleep_count <= '0';
                done_reg <= '1';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '1';
            when others =>
                increase_phase <= '0';    
                start_sleep_count <= '0';
                done_reg <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
        end case;
    end process do_states;
    
    -- Phase Overflow flag
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    phase_ovfl  <= phase_overflow_flag_reg;
    
    -- MUX Control output vector
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    phase_out   <= phase_count;
    
    -- bit_done output receives the value within the done_reg signal
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    bit_done    <= done_reg;

end biFsm_arch;