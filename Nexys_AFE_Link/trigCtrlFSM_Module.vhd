----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 18.08.2023 14:47:20
-- Design Name: Finite State Machine to Save and Read Data to a FIFO
-- Module Name: trigCtrlFSM_Module - trig_ctrl_arch
-- Project Name: trigCtrlFSM_Module 
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a FSM Module that manages to store and read data from and to a FIFO Memory
-- after a trigger has occurred
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

entity trigCtrlFSM_Module is
    Generic (
        WR_CLK_FREQ : real := 100.0;
        RD_CLK_FREQ : real := 100.0
    );
    Port ( 
        WR_CLK : in std_logic;
        RD_CLK : in std_logic;
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
end trigCtrlFSM_Module;

architecture trig_ctrl_arch of trigCtrlFSM_Module is

type states is (RESET, IDLE, SAVE_WINDOW);
signal State, NextState : states;

-- Aux signals used inside the module
signal CLK : std_logic;
signal trig_o_reg : std_logic := '0'; 
signal read_o_reg : std_logic := '0';

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
            when IDLE =>
                read_o_reg <= '0';
                trig_o_reg <= '0';
            when SAVE_WINDOW =>
                
            when others => 
                read_o_reg <= '0';
                trig_o_reg <= '0';
        end case;
    end process OUTPUT_CTRL;
    
    NEXT_STATE_PROC : process(State) is
    begin
        NextState <= State;     
        case (State) is
            when RESET =>    
                NextState <= IDLE;
            when IDLE => 
                if ((TRIG_IN = '1') AND (FIFO_FULL = '0')) then
                    NextState <= SAVE_WINDOW;
                end if;
            when others =>
                -- Do nothing
        end case;
    end process NEXT_STATE_PROC; 
    
-------------------------------------------------------------------------------------------------------------------------------      
    -- Output of the Module Assignation
    TRIG_OUT <= trig_o_reg;    
    READ_OUT <= read_o_reg;

end trig_ctrl_arch;