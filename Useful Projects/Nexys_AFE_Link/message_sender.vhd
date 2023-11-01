----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 01.08.2023 15:12:07
-- Design Name: Message Sender
-- Module Name: message_sender - mesSen_arch
-- Project Name: Nexys Video Ethernet Test
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Generates a message to be transmitted using an AXI Stream Interface
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

entity message_sender is
    Port ( 
        clk     : in std_logic;
        rst     : in std_logic;
        btn     : in std_logic;
        ready   : in std_logic;
        valid   : out std_logic;
        last    : out std_logic;
        user    : out std_logic;
        data    : out std_logic_vector(7 downto 0) 
    );
end message_sender;

architecture mesSen_arch of message_sender is

-- Array of data to stream
type hex_mes is array (0 to 46) of integer;
signal full_message: hex_mes := (
    72, 101, 108, 108, 111, 33, 32, 73, 32, 106, 117, 115, 
    116, 32, 115, 101, 110, 116, 32, 116, 104, 105, 115, 
    32, 109, 101, 115, 115, 97, 103, 101, 32, 115, 117, 99, 
    99, 101, 115, 115, 102, 117, 108, 108, 121, 32, 58, 41
);

-- States of the FSM
type states is (Reset, Idle, SendData);
signal State, NextState : states;

-- Auxiliar signals
signal data_out : std_logic_vector(7 downto 0) := (others => '0');
signal change_data : std_logic := '0';
signal index : std_logic_vector(5 downto 0) := (others => '0');
signal array_finished : std_logic := '0';
-- Registers
signal valid_reg : std_logic := '0';
signal last_reg : std_logic := '0';
signal rdy : std_logic := '0';

begin

    -- Generate the ready signal for the system to save data or stream the data
    rdy <= btn AND ready;    

    DATA_MODIFIER : process(clk, rst, change_data, index, full_message)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                data_out <= X"00";
                index <= "000000";
                array_finished <= '0';
                last_reg <= '0';
                valid_reg <= '0';
            else
                if (change_data = '1') then
                    if (index = "101110") then
                        index <= "000000";
                    else
                        index <= std_logic_vector(index + 1);
                    end if;          
                    if (index = "101101") then
                        array_finished <= '1';
                    else
                        array_finished <= '0';
                    end if;         
                end if;
                if (array_finished = '1') then
                    -- Assert the last signal whenever we are sending the last byte of data
                    last_reg <= '1';
                else
                    last_reg <= '0';
                end if; 
                if (change_data = '1') then
                    -- Assert valid next clock cycle
                    valid_reg <= '1';
                else
                    -- Deassert valid next clock cycle
                    valid_reg <= '0';
                end if;
                -- Change the value of the data
                data_out <= std_logic_vector(to_unsigned(full_message(to_integer(unsigned(index))),8)); 
            end if;
        end if;
    end process DATA_MODIFIER;
    
    CLK_STATE_MODIFIER : process(clk, rst) is
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                State <= Reset;     
            else
                State <= NextState;     
            end if;
        end if;
    end process CLK_STATE_MODIFIER;
    
    STATE_CONDITION_MODIFIER : process(State,array_finished,rdy) is
    begin
        NextState <= State;     
        case (State) is     
            when Reset =>
                NextState <= Idle;     
            when Idle =>
                if (rdy = '1') then
                    NextState <= SendData;
                end if;
            when SendData =>
                if (array_finished = '1') then
                    NextState <= Idle;
                end if;     
        end case;
    end process STATE_CONDITION_MODIFIER;
     
    OUTPUT_CONTROL : process(clk,State) is
    begin
        case State is     
            when Reset =>
                -- Reinitialize the registers
                change_data <= '0'; 
            when Idle =>
                -- Wait for process to start, keep the flag low
                change_data <= '0'; 
            when SendData =>
                -- Tell the system to start changing the data               
                change_data <= '1'; 
        end case;
    end process OUTPUT_CONTROL;
    
    -- Outputs assignation
    valid <= valid_reg;
    last <= last_reg;
    data <= data_out;
    user <= '0';
        
end mesSen_arch;
