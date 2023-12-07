----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 05.12.2023 15:45:30
-- Design Name: Finite State Machine to align bits Build
-- Module Name: bitFSM_Module_v2 - biFsm_arch
-- Project Name: DAPHE V1 - DATA ALIGNMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Creates a FSM to align the data with the Digital Clock, implements a different structure for the FSM
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.03 - Changed file in order to fit the new states/new alignment process
-- Additional Comments:
-- This is the fourth version of the original FSM coded in 'bitFSM_Module.vhd'
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

entity bitFSM_Module_v2 is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_fsm             : in std_logic;
        rst                 : in std_logic;
        iser_data           : in std_logic_vector(13 downto 0);
        al_frame            : in std_logic;
        pll_locked          : in std_logic;
        train_pat_active    : in std_logic;
        do_process          : in std_logic;
            
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        phase_ovfl          : out std_logic;
        phase_out           : out std_logic_vector(1 downto 0);
        bit_done            : out std_logic
    );
end bitFSM_Module_v2;

architecture biFsm_arch of bitFSM_Module_v2 is

-- Declaration of the states type and signal
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
type states is (reset, need_align, align_verification, start_compare_flags, verify_comparation_flags, phase_overflowed, phase_w, phase_not_w, up_phase, asleep, bit_aligned);
signal State, Next_State        : states;

-- Aux signals to operate inside the FSM
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal phase_count              : std_logic_vector(1 downto 0) := "00";
signal phase_cycles_count       : std_logic_vector(1 downto 0) := (others => '0');
signal enable_comparations      : std_logic := '0';
signal store_phase_working      : std_logic := '0';
signal store_phase_n_working    : std_logic := '0';
signal increase_phase           : std_logic := '0';
signal start_sleep_count        : std_logic := '0';
signal done_reg                 : std_logic := '0';
signal cycles_executed          : std_logic_vector(7 downto 0) := X"00";
signal sleep_count              : std_logic_vector(2 downto 0) := "000";
signal phase_choice_w           : std_logic_vector(2 downto 0) := "000";
signal working_phase            : std_logic_vector(2 downto 0) := "000";
signal n_working_phase          : std_logic_vector(2 downto 0) := "000";
signal q_vector                 : std_logic_vector(13 downto 0) := "00000000000000";
signal is_aligned               : std_logic := '0';

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
                phase_cycles_count <= (others => '0');
                cycles_executed <= X"00";
            else
                -- If the phase has not been selected, do the finding process
                if (done_reg = '0') then
                    -- Increase the used phase
                    if (increase_phase = '1') then
                        if (phase_count /= "11") then
                            phase_count <= std_logic_vector(unsigned(phase_count) + 1);
                        else
                            -- Count how many times all the phases have been used
                            if (phase_cycles_count = "10") then
                                -- Restart the counter
                                phase_cycles_count <= "00";
                            else
                                -- Increase the counter that tells te system that one cycle of pahses has been passed
                                phase_cycles_count <= std_logic_vector(unsigned(phase_cycles_count) + 1);
                            end if;
                            
                            -- Count how may times the cycle has passed (All three phases used)
                            if (cycles_executed = X"FF") then
                                -- Restart the counter
                                cycles_executed <= X"00";
                            else
                                -- Increase the counter
                                cycles_executed <= std_logic_vector(unsigned(cycles_executed) + 1);
                            end if;
                            
                            -- Restart the phase counter
                            phase_count <= "00";
                        end if;
                    else
                        -- Since the system has finished, select the phase accordingly
                        if (phase_choice_w = "001") then
                            -- Phase one was selected
                            phase_count <= "00";
                        elsif (phase_choice_w = "010") then
                            -- Phase two was selected
                            phase_count <= "01";
                        elsif (phase_choice_w = "100") then
                            -- Phase three was selected
                            phase_count <= "10";
                        elsif (phase_choice_w = "011") then
                            -- Phases one and two work, so select the small one (Maybe less power?) 
                            phase_count <= "00";
                        elsif (phase_choice_w = "110") then    
                            -- Phases two and three work, so select the small one (Maybe less power?)
                            phase_count <= "01";
                        elsif (phase_choice_w = "101") then
                            -- Phases one and three work, so select the small one (Maybe less power?)
                            phase_count <= "00";
                        else
                            -- This is an unknown state that should not happen but add it anyways
                            phase_count <= "00";
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process phase_increaser;
    
    -- Process to store a working or not working phases and compare them
    phase_working_reg: process(clk_fsm, rst, store_phase_working, store_phase_n_working, enable_comparations)
    begin
        if rising_Edge(clk_fsm) then
            if (rst = '1') then
                working_phase <= (others => '0');
                n_working_phase <= (others => '0');
                phase_choice_w <= (others => '0');
            else
                -- Store the information about a working phase
                if (store_phase_working = '1') then
                    -- Ask if the flag to store the working phase is active, if so ask what phase is currently being used
                    if (phase_count = "00") then
                        -- Phase 0 works
                        working_phase(0) <= '1';
                    elsif (phase_count = "01") then
                        -- Phase 1 works
                        working_phase(1) <= '1';
                    elsif (phase_count = "10") then
                        -- Phase 2 works
                        working_phase(2) <= '1';
                    end if;
                end if;
                
                -- Store the information about an unuseful phase
                if (store_phase_n_working = '1') then
                    -- Ask if the flag to store the working phase is active, if so ask what phase is currently being used
                    if (phase_count = "00") then
                        -- Phase 0 does not work
                        n_working_phase(0) <= '1';
                    elsif (phase_count = "01") then
                        -- Phase 1 does not work
                        n_working_phase(1) <= '1';
                    elsif (phase_count = "10") then
                        -- Phase 2 does not work
                        n_working_phase(2) <= '1';
                    end if;
                end if;
                
                -- Compare the flags and tell the system if actual useful phases were found
                if (enable_comparations = '1') then
                    -- Conditional to ask with phase one
                    if (working_phase(0) /= n_working_phase(0)) then
                        -- Phase one aligned at some point and then did not or viceversa, this phase does not work!
                        phase_choice_w(0) <= '0';
                        -- Reset the working and not working flags
                        working_phase(0) <= '0';
                        n_working_phase(0) <= '0';
                    else
                        -- The phase yielded the same result in two separate cycles, so ask if it was positive or negative
                        if (working_phase(0) = '1') then
                            -- This phase truly works!
                            phase_choice_w(0) <= '1';
                            -- Reset the working and not working flags
                            working_phase(0) <= '0';
                            n_working_phase(0) <= '0';
                        else
                            -- This phase definitely does not work
                            phase_choice_w(0) <= '0';
                            -- Reset the working and not working flags
                            working_phase(0) <= '0';
                            n_working_phase(0) <= '0';
                        end if;
                    end if;
                    
                    -- Conditional to ask with phase two
                    if (working_phase(1) /= n_working_phase(1)) then
                        -- Phase one aligned at some point and then did not or viceversa, this phase does not work!
                        phase_choice_w(1) <= '0';
                        -- Reset the working and not working flags
                        working_phase(1) <= '0';
                        n_working_phase(1) <= '0';
                    else
                        -- The phase yielded the same result in two separate cycles, so ask if it was positive or negative
                        if (working_phase(1) = '1') then
                            -- This phase truly works!
                            phase_choice_w(1) <= '1';
                            -- Reset the working and not working flags
                            working_phase(1) <= '0';
                            n_working_phase(1) <= '0';
                        else
                            -- This phase definitely does not work
                            phase_choice_w(1) <= '0';
                            -- Reset the working and not working flags
                            working_phase(1) <= '0';
                            n_working_phase(1) <= '0';
                        end if;
                    end if;
                    
                    -- Conditional to ask with phase three
                    if (working_phase(2) /= n_working_phase(2)) then
                        -- Phase one aligned at some point and then did not or viceversa, this phase does not work!
                        phase_choice_w(2) <= '0';
                        -- Reset the working and not working flags
                        working_phase(2) <= '0';
                        n_working_phase(2) <= '0';
                    else
                        -- The phase yielded the same result in two separate cycles, so ask if it was positive or negative
                        if (working_phase(2) = '1') then
                            -- This phase truly works!
                            phase_choice_w(2) <= '1';
                            -- Reset the working and not working flags
                            working_phase(2) <= '0';
                            n_working_phase(2) <= '0';
                        else
                            -- This phase definitely does not work
                            phase_choice_w(2) <= '0';
                            -- Reset the working and not working flags
                            working_phase(2) <= '0';
                            n_working_phase(2) <= '0';
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process phase_working_reg;
    
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
    phase_overflow_control: process(clk_fsm, rst, turn_on_phase_overflow, turn_off_phase_overflow)
    begin
        if rising_edge(clk_fsm) then
            if (rst = '1') then
                phase_overflow_flag_reg <= '0';
            else
                -- Enable the phase overflow flag
                if (turn_on_phase_overflow = '1') then
                    phase_overflow_flag_reg <= '1';
                end if;
                -- Disable the phase overflow flag
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
    mod_states: process(State, al_frame, pll_locked, train_pat_active, do_process, is_aligned, sleep_count)
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
                    Next_State <= align_verification;
                end if;
            when align_verification =>
                -- FSM must ask how many times the process of verification has ocurred
                if (phase_cycles_count = "10") then
                    -- If at least two cycles of checking each phase have happened, time to compare the work/not working flags
                    Next_State <= start_compare_flags;
                else
                    -- If this condition is not met, then keep checking the alignment conditions  
                    if (is_aligned = '1') then
                        -- Go to the state where the FSM saves that the phase works 
                        Next_State <= phase_w;
                    else
                        -- Go to the state where the FSM saves that the phase did not work
                        Next_State <= phase_not_w;                
                    end if;
                end if;
            when start_compare_flags =>
                -- Time to check each flag, allow the system to verify in an outside process
                -- If flags have the same state after two cycles, this means that the phase worked once and
                -- After that it did not, which means that it may be a phase sampling in eye borders, this is not useful
                -- This is a transition state since the FSM will not know in this state wether there were useful flags or not
                Next_State <= verify_comparation_flags;
            when verify_comparation_flags =>
                -- Now time to see if the system found an aligning flag
                if (phase_choice_w = "000") then
                    -- The system did not find any useful  phase, so time to start again
                    -- Show that there was an overflow in the process of finding a phase
                    Next_State <= phase_overflowed;
                elsif ((phase_choice_w = "001") OR (phase_choice_w = "010") OR (phase_choice_w = "100")) then
                    -- Only one phase was useful, so use it
                    Next_State <= bit_aligned;
                elsif ((phase_choice_w = "011") OR (phase_choice_w = "110") OR (phase_choice_w = "101")) then
                    -- Since there are two phases working, keep doing the same test for an amount of time until a different behaviour is seen
                    if (cycles_executed < X"FF") then
                        -- Execute the same test over and over to see if this is still happening
                        Next_State <= align_verification;
                    else
                        -- If after an amount of time there are no differences, assume that both actually work, so select any of them and finish the process
                        Next_State <= bit_aligned;
                    end if;  
                elsif (phase_choice_w = "111") then
                    -- Start again since all three phases working is a strange behaviour
                    -- Starting again might seem that the machine will remain in a loop if it finds the three phases working again
                    -- This will keep happening until any phase generates a wrong read in the data, event that will eventually happen
                    -- When this happens, now any other condition will be met and the system will find the solution out of the loop
                    Next_State <= align_verification;
                end if;
            when phase_overflowed =>
                -- A phase overflow has ocurred, so must tell the system about this condition
                -- Start again the aligning process
                Next_State <= align_verification;
            when phase_w =>
                -- Since this phase works, store it in a flag
                Next_State <= up_phase;
            when phase_not_w =>
                -- Since this phase does not work, also keep this information for later review
                Next_State <= up_phase;
            when up_phase =>
                -- Transition state, increase the phase used
                Next_State <= asleep;
            when asleep =>
                -- FSM must take time in order to allow the clock to stabilize within its registers
                if (sleep_count = "100") then
                    Next_State <= align_verification;
                end if;
            when others =>
                -- Do nothing
        end case;
    end process mod_states;
    
    -- Finite State Machine Outputs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Combinatorial Process to establish FSM Outputs
    do_states: process(State)
    begin
        case State is -- Change to Next_State to check sim behavior
            when phase_w =>
                -- Since the phase works, enable a flag that will store this information
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '1';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when phase_not_w =>
                -- Since the phase does not work, enable a flag that will store this information
                enable_comparations <= '0';
                store_phase_n_working <= '1';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when start_compare_flags =>
                -- The system must allow outside process to generate comparations
                enable_comparations <= '1';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when up_phase =>
                -- The clock phase used by the system must change
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '1';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when asleep =>
                -- Since the phase changed, FSM must wait until Clock signal is stable
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '1';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when phase_overflowed =>
                -- Turn on the phase overflow flag to tell the system that the process entered a loop of unsuccesful operations
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '1';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
            when bit_aligned =>
                -- FSM has finished, notifies this achievement with done_reg in logic HIGH
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '1';
                done_reg <= '1';
            when others =>
                -- This includes the reset, need_align and verify_comparation_flags states
                -- All outputs must remain in logic LOW
                enable_comparations <= '0';
                store_phase_n_working <= '0';
                store_phase_working <= '0';
                increase_phase <= '0';  
                start_sleep_count <= '0';
                turn_on_phase_overflow <= '0';
                turn_off_phase_overflow <= '0';
                done_reg <= '0';
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