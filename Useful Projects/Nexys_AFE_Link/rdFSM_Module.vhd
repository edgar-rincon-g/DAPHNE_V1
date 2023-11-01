----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 17.05.2023 07:16:08
-- Design Name: Finite State Machine to read data from a FIFO 
-- Module Name: rdFSM_Module - rdFsm_arch
-- Project Name: DAPHNE V1 - MEMORY MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Creates a FSM to read data from a FIFO, important to ensure no read errors occur
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- This is a Mealy Type FSM, where output depends in both current state and inputs
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

entity rdFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        fifo_Empty : in std_logic; -- Empty flag from FIFO stating that another read operation will damage FIFO
        ext_rd_en : in std_logic; -- External write enable to control FSM
        fifo_rd_err : in std_logic; -- If FIFO goes into error state FSM should not allow read operations
        rd_en : out std_logic; -- Reading the FIFO is enabled or disabled
        rd_err : out std_logic -- Read error state was reached
    );
end rdFSM_Module;

architecture rdFsm_arch of rdFSM_Module is

-- Declaration of the states type and signal
type state_type is (reset, idle, read, error);
signal State, Next_State : state_type;

-- Aux signals to operate inside the FSM
signal rd_en_reg: std_logic := '0'; 
signal rd_err_reg: std_logic := '0';

begin

-- Finite State Machine process
----------------------------------------------------------------------------------------------------------------
    -- Process to change the states of the FSM
    reg_states: process (rst, clk_fsm)
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
    mod_states: process (State, ext_rd_en, fifo_rd_err, fifo_Empty)
    begin
        Next_State <= State; -- Declare default state for Next_State to avoid latches, default is to stay in current state
        case (State) is
            when reset =>
                Next_State <= idle;
            when idle =>
                if (fifo_rd_err = '1') then
                    Next_State <= error;
                else
                    if (ext_rd_en = '1') then
                        if (fifo_Empty = '0') then
                            Next_State <= read;
                        else
                            Next_State <= error;
                        end if;
                    end if;                        
                end if;
            when read =>
                if (fifo_Empty = '1' OR ext_rd_en = '0') then
                    Next_State <= idle;
                end if;
            when error =>
                if (ext_rd_en = '0' AND fifo_rd_err = '0') then 
                    Next_State <= idle;
                end if;
            when others =>
                -- This includes reset condition
                -- Do nothing
                -- Might add Next_State <= reset;
        end case;
    end process mod_states;

    -- Finite State Machine Outputs

    -- Combinatorial Process to establish FSM Outputs
    do_states: process (State, ext_rd_en, fifo_rd_err, fifo_Empty)
    begin
        case (State) is
            when reset =>
                rd_en_reg <= '0';
                rd_err_reg <= '0';
            when idle =>
                if (fifo_rd_err = '1') then
                    rd_en_reg <= '0';
                    rd_err_reg <= '1';
                else
                    if (ext_rd_en = '1') then
                        if (fifo_Empty = '0') then
                            rd_en_reg <= '1';
                            rd_err_reg <= '0';
                        else
                            rd_en_reg <= '0';
                            rd_err_reg <= '1';
                        end if;   
                    else 
                        rd_en_reg <= '0';
                        rd_err_reg <= '0';                     
                    end if;
                end if;
            when read =>
                if (fifo_Empty = '1' OR ext_rd_en = '0') then
                    rd_en_reg <= '0';
                    rd_err_reg <= '0';
                else
                    rd_en_reg <= '1';
                    rd_err_reg <= '0';
                end if;
            when error =>
                rd_en_reg <= '0';
                rd_err_reg <= '1';
            when others =>
                rd_en_reg <= '0';
                rd_err_reg <= '0'; 
        end case;    
    end process do_states;
    
    -- Enable reading to FIFO
    rd_en <= rd_en_reg;
    
    -- Read error condition asserted
    -- FIFO is still safe because of this FSM
    rd_err <= rd_err_reg;

end rdFsm_arch;