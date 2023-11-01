----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 15.08.2023 15:15:20
-- Design Name: Finite State Machine to Save Data to FIFO 
-- Module Name: trigSaveFSM - trSa_arch
-- Project Name: AFE5808A - Nexys Video Self Trigger Module
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a FSM Module that manages to store data to a FIFO Memory after a trigger has occurred
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trigSaveFSM is
    Generic (
        WR_CLK_FREQ : real := 100.0;
        RD_CLK_FREQ : real := 100.0
    );
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
end trigSaveFSM;

architecture trSa_arch of trigSaveFSM is

-- Finite State Machine Aux Signals
type states is (RESET, IDLE, SAVE_DATA, READ_SPLIT_DATA, READ_FULL_DATA, HOLD_STREAM);
signal State, NextState : states;

-- Aux signals that interconnect inside the module
signal trig_o_reg : std_logic := '0'; 
signal enough_data : std_logic := '0';
signal cnt_samples_wr : std_logic := '0';
signal cnt_samples_rd : std_logic := '0';
signal samples_counted_wr : std_logic_vector(11 downto 0) := (others => '0');
signal samples_counted_rd : std_logic_vector(11 downto 0) := (others => '0');
signal stop_reading : std_logic := '0';
signal read_o_reg : std_logic := '0';
signal read_after : std_logic := '0';
signal CLK : std_logic;

begin

-------------------------------------------------------------------------------------------------------------------------------   
    -- Assign the proper clock according to the frequencies of the Write and Read Clocks
    -- Write Clock is faster
    CLOCK_SELECT_1 : if (WR_CLK_FREQ > RD_CLK_FREQ) generate
    begin
        CLK <= WR_CLK;
    end generate CLOCK_SELECT_1;
    
    -- Read Clock is faster
    CLOCK_SELECT_2 : if (WR_CLK_FREQ < RD_CLK_FREQ) generate
    begin
        CLK <= RD_CLK;
    end generate CLOCK_SELECT_2;
    
    -- Both clocks have the same frequency, but they are asynchronous
    CLOCK_SEL_ASYNC : if (WR_CLK_FREQ = RD_CLK_FREQ) generate
    begin
        CLK <= SYS_CLK;
    end generate CLOCK_SEL_ASYNC;

-------------------------------------------------------------------------------------------------------------------------------   
    -- Synchronous process to define how many samples have been stored
    SAMPLES_WR_CNT_PROC : process(WR_CLK, RST, cnt_samples_wr, samples_counted_wr) is
    begin
        if rising_edge(WR_CLK) then
            if (RST = '1') then
                samples_counted_wr <= (others => '0');
                enough_data <= '0';
            else
                if (cnt_samples_wr = '1') then
                    if (samples_counted_wr > X"26D") then
                        samples_counted_wr <= (others => '0');
                        enough_data <= '1';
                    else
                        samples_counted_wr <= samples_counted_wr + 1;
                        enough_data <= '0';
                    end if;
                else
                    enough_data <= '0';
                    samples_counted_wr <= (others => '0');
                end if;
            end if;
        end if;
    end process SAMPLES_WR_CNT_PROC;

-------------------------------------------------------------------------------------------------------------------------------   
    -- Synchronous process to define how many samples have been read
    SAMPLES_RD_CNT_PROC : process(RD_CLK, RST, cnt_samples_rd, samples_counted_rd) is
    begin
        if rising_edge(RD_CLK) then
            if (RST = '1') then
                samples_counted_rd <= (others => '0');
                stop_reading <= '0';
            else
                if (cnt_samples_rd = '1') then
                    if (samples_counted_rd > X"26D") then
                        samples_counted_rd <= (others => '0');
                        stop_reading <= '1';
                    else
                        samples_counted_rd <= samples_counted_rd + 1;
                        stop_reading <= '0';
                    end if;
                else
                    stop_reading <= '0';
                    samples_counted_rd <= (others => '0');
                end if;
            end if;
        end if;
    end process SAMPLES_RD_CNT_PROC;

-------------------------------------------------------------------------------------------------------------------------------   
    -- Finite State Machine to save the data to a FIFO memory after the system has been triggered
    SYNCH_STATES_COM : process(CLK, RST) is
    begin
        if rising_edge(CLK) then
            if (RST = '1') then
                State <= RESET;     
            else
                State <= NextState;     
            end if;
        end if;
    end process SYNCH_STATES_COM;

    OUTPUT_CTRL : process(State) is
    begin
        case (State) is     
            when RESET =>
                read_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '0';
            when IDLE =>
                read_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '0';
            when SAVE_DATA =>
                read_o_reg <= '0';
                trig_o_reg <= '1';
                cnt_samples_wr <= '1';
                cnt_samples_rd <= '0';
            when READ_SPLIT_DATA =>
                read_o_reg <= '1';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '1';
            when READ_FULL_DATA =>
                read_o_reg <= '1';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '0';
            when HOLD_STREAM => 
                read_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '0';
            when others => 
                read_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
                cnt_samples_rd <= '0';
        end case;
    end process OUTPUT_CTRL;
    
    NEXT_STATE_PROC : process(State, TRIG_IN, FIFO_FULL, FIFO_EMPTY, enough_data, stop_reading) is
    begin
        NextState <= State;     
        case (State) is
            when RESET =>    
                NextState <= IDLE;
            when IDLE => 
                if ((TRIG_IN = '1') AND (FIFO_FULL = '0')) then
                    NextState <= SAVE_DATA;
                elsif ((READ_IN = '1') AND (FIFO_EMPTY = '0')) then
                    NextState <= READ_SPLIT_DATA;                
                end if;
            when SAVE_DATA =>
                if (RD_AFTER = '1') then
                    if (enough_data = '1') then
                        NextState <= READ_FULL_DATA;
                    end if;  
                elsif (RD_AFTER = '0') then 
                    if ((FIFO_FULL = '1') OR (enough_data = '1')) then
                        NextState <= IDLE;
                    end if;     
                end if;          
            when READ_FULL_DATA =>
                if ((FIFO_EMPTY = '1') AND (WR_AFTER = '0')) then
                    NextState <= IDLE;
                elsif ((FIFO_EMPTY = '1') AND (WR_AFTER = '1')) then
                    NextState <= SAVE_DATA;
                end if;
            when READ_SPLIT_DATA =>
                if ((stop_reading = '1') OR (FIFO_EMPTY = '1')) then
                    NextState <= HOLD_STREAM;
                end if;
            when HOLD_STREAM =>
                -- Just passing by...
                -- Transition state, give time for the Ethernet to stream data or whatever
                NextState <= IDLE;
            when others =>
                -- Do nothing
        end case;
    end process NEXT_STATE_PROC; 
    
-------------------------------------------------------------------------------------------------------------------------------      
    -- Output of the Module Assignation
    TRIG_OUT <= trig_o_reg;    
    READ_OUT <= read_o_reg;

end trSa_arch;