----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez 
-- 
-- Create Date: 23.08.2023 10:59:09
-- Design Name: Finite State Machine to Save Data to and Read Data from FIFO 
-- Module Name: trigSaveReadFSM - trigFSM_arch
-- Project Name: AFE5808A - Nexys Video Self Trigger Module
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a FSM Module that manages to store data to a FIFO Memory after a 
-- trigger has occurred
-- Allows manual read after FIFO has been filled
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

entity trigSaveReadFSM is
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
end trigSaveReadFSM;

architecture trigFSM_arch of trigSaveReadFSM is

-- Finite State Machine to Write States
----------------------------------------------------------------------------------------------------------------------------------------------------------
type states_wr is (RESET, IDLE, SAVE_DATA, READ_DATA_AFTER);
signal State_WR, NextState_WR   : states_wr;

-- Finite State Machine to Read States
----------------------------------------------------------------------------------------------------------------------------------------------------------
type states_rd is (RESET, IDLE, READ_DATA, HOLD_STREAM);
signal State_RD, NextState_RD   : states_rd;

-- Aux signals that interconnect inside the module
----------------------------------------------------------------------------------------------------------------------------------------------------------
signal trig_o_reg               : std_logic := '0'; 
signal enough_data              : std_logic := '0';
signal cnt_samples_wr           : std_logic := '0';
signal cnt_samples_rd           : std_logic := '0';
signal samples_counted_wr       : std_logic_vector(11 downto 0) := (others => '0');
signal samples_counted_rd       : std_logic_vector(11 downto 0) := (others => '0');
signal stop_reading             : std_logic := '0';
signal read_wrFSM_o_reg         : std_logic := '0';
signal read_o_reg               : std_logic := '0';

begin

------------------------------------------------------------------------------------------------------------------------------------------
-- FINITE STATE MACHINE TO WRITE THE FIFO WHEN DATA HAS ARRIVED OR HAS TRIGGERED THE SYSTEM
------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------   
    -- Synchronous process to define how many samples have been stored
    SAMPLES_WR_CNT_PROC : process(WR_CLK, RST, cnt_samples_wr, samples_counted_wr) is
    begin
        if rising_edge(WR_CLK) then
            if (RST = '1') then
                samples_counted_wr <= (others => '0');
                enough_data <= '0';
            else
                if (cnt_samples_wr = '1') then
                    if (samples_counted_wr > X"26E") then --X"2D9") then
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

----------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Finite State Machine to save the data to a FIFO memory after the system has been triggered
    WR_SYNCH_STATES_COM : process(WR_CLK, RST) is
    begin
        if rising_edge(WR_CLK) then
            if (RST = '1') then
                State_WR <= RESET;     
            else
                State_WR <= NextState_WR;     
            end if;
        end if;
    end process WR_SYNCH_STATES_COM;

    WR_OUTPUT_CTRL : process(State_WR) is
    begin
        case (State_WR) is     
            when RESET =>
                read_wrFSM_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
            when IDLE =>
                read_wrFSM_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
            when SAVE_DATA =>
                read_wrFSM_o_reg <= '0';
                trig_o_reg <= '1';
                cnt_samples_wr <= '1';
            when READ_DATA_AFTER =>
                read_wrFSM_o_reg <= '1';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
            when others => 
                read_wrFSM_o_reg <= '0';
                trig_o_reg <= '0';
                cnt_samples_wr <= '0';
        end case;
    end process WR_OUTPUT_CTRL;
    
    WR_NEXT_STATE_PROC : process(State_WR, TRIG_IN, FIFO_FULL, FIFO_EMPTY, WR_AFTER, RD_AFTER, enough_data) is
    begin
        NextState_WR <= State_WR;     
        case (State_WR) is
            when RESET =>    
                NextState_WR <= IDLE;
            when IDLE =>
                if ((TRIG_IN = '1') AND (FIFO_FULL = '0')) then
                    NextState_WR <= SAVE_DATA;                
                end if;
            when SAVE_DATA =>
                if ((FIFO_FULL = '1' OR enough_data = '1') AND (RD_AFTER = '0')) then
                    NextState_WR <= IDLE;
                elsif ((FIFO_FULL = '1' OR enough_data = '1') AND (RD_AFTER = '1')) then
                    NextState_WR <= READ_DATA_AFTER;
                end if;
            when READ_DATA_AFTER =>
                if ((FIFO_EMPTY = '1') AND (WR_AFTER = '0')) then
                    NextState_WR <= IDLE;
                elsif ((FIFO_EMPTY = '1') AND (WR_AFTER = '1')) then
                    NextState_WR <= SAVE_DATA;
                end if;
            when others =>
                -- Do nothing
        end case;
    end process WR_NEXT_STATE_PROC; 
    
------------------------------------------------------------------------------------------------------------------------------------------
-- FINITE STATE MACHINE TO READ THE FIFO WHEN THE USER DESIRES 
-- CASE OF USE: When the user defines that they do not want to read the FIFO inmediately after saving the data
------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------   
    -- Synchronous process to define how many samples have been read
    SAMPLES_RD_CNT_PROC : process(RD_CLK, RST, cnt_samples_rd, samples_counted_rd) is
    begin
        if rising_edge(RD_CLK) then
            if (RST = '1') then
                samples_counted_rd <= (others => '0');
                stop_reading <= '0';
            else
                if (cnt_samples_rd = '1') then
                    if (samples_counted_rd > X"26E") then --X"2D9") then 2d9 sends 732 samples, 26E send 625 samples
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
    
----------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Finite State Machine to read the data from a FIFO memory when the user decides to do so
    RD_SYNCH_STATES_COM : process(RD_CLK, RST) is
    begin
        if rising_edge(RD_CLK) then
            if (RST = '1') then
                State_RD <= RESET;     
            else
                State_RD <= NextState_RD;     
            end if;
        end if;
    end process RD_SYNCH_STATES_COM;

    RD_OUTPUT_CTRL : process(State_RD) is
    begin
        case (State_RD) is     
            when RESET =>
                read_o_reg <= '0';
                cnt_samples_rd <= '0';
            when IDLE =>
                read_o_reg <= '0';
                cnt_samples_rd <= '0';
            when READ_DATA =>
                read_o_reg <= '1';
                cnt_samples_rd <= '1';
            when others => 
                read_o_reg <= '0';
                cnt_samples_rd <= '0';
        end case;
    end process RD_OUTPUT_CTRL;
    
    RD_NEXT_STATE_PROC : process(State_RD, READ_IN, FIFO_FULL, FIFO_EMPTY, WR_AFTER, stop_reading) is
    begin
        NextState_RD <= State_RD;     
        case (State_RD) is
            when RESET =>    
                NextState_RD <= IDLE;
            when IDLE =>
                if ((READ_IN = '1') AND (FIFO_EMPTY = '0')) then
                    NextState_RD <= READ_DATA;
                end if;
            when READ_DATA =>
                if ((FIFO_EMPTY = '1' OR stop_reading = '1') AND (WR_AFTER = '0')) then
                    NextState_RD <= HOLD_STREAM;
                end if;
            when HOLD_STREAM =>
                -- Just passing by...
                -- Transition state, give time for the Ethernet to stream data or whatever
                NextState_RD <= IDLE;
            when others =>
                -- Do nothing
        end case;
    end process RD_NEXT_STATE_PROC; 
    
    -- Output of the Module Assignation
----------------------------------------------------------------------------------------------------------------------------------------------------------
    TRIG_OUT            <= trig_o_reg;    
    READ_OUT            <= read_o_reg OR read_wrFSM_o_reg;

end trigFSM_arch;
