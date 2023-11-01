----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 17.05.2023 07:16:08
-- Design Name: Finite State Machine to write data to a FIFO
-- Module Name: wrFSM_Module - wrFsm_arch
-- Project Name: DAPHNE V1 - MEMORY MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Creates a FSM to write data to a FIFO, important to ensure no write errors occur
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

entity wrFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        fifo_aFull : in std_logic; -- Almost Full flag from FIFO to know when to "stop" writing
        ext_wr_en : in std_logic; -- External write enable to control FSM
        fifo_wr_err : in std_logic; -- If FIFO goes into error state FSM should not allow write operations
        dt_rdy : in std_logic; -- When data is ready to be written to FIFO
        wr_en : out std_logic; -- Writing the FIFO is enabled or disabled
        wr_err : out std_logic -- Write error state was reached
    );
end wrFSM_Module;

architecture wrFsm_arch of wrFSM_Module is

-- Declaration of the states type and signal
type state_type is (reset, idle, write, error);
signal State, Next_State : state_type;

-- Aux signals to operate inside the FSM
signal wr_en_reg: std_logic := '0'; 
signal wr_err_reg: std_logic := '0';

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
    mod_states: process (State, fifo_aFull, ext_wr_en, fifo_wr_err, dt_rdy)
    begin
        Next_State <= State; -- Declare default state for Next_State to avoid latches, default is to stay in current state
        case (State) is
            when reset =>
                Next_State <= idle;
            when idle =>
                if (fifo_wr_err = '1') then
                    Next_State <= error;
                else
                    if (ext_wr_en = '1' AND dt_rdy = '1') then
                        if (fifo_aFull = '0') then
                            Next_State <= write;
                        else
                            Next_State <= error;
                        end if;                        
                    end if;
                end if;
            when write =>
                if (fifo_aFull = '1' OR ext_wr_en = '0') then
                    Next_State <= idle;
                end if;
            when error =>
                if (ext_wr_en = '0' AND fifo_wr_err = '0') then 
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
    do_states: process (State, fifo_aFull, ext_wr_en, fifo_wr_err, dt_rdy)
    begin
        case (State) is
            when reset =>
                wr_en_reg <= '0';
                wr_err_reg <= '0';
            when idle =>
                if (fifo_wr_err = '1') then
                    wr_en_reg <= '0';
                    wr_err_reg <= '1';
                else
                    if (ext_wr_en = '1' AND dt_rdy = '1') then
                        if (fifo_aFull = '0') then
                            wr_en_reg <= '1';
                            wr_err_reg <= '0';
                        else
                            wr_en_reg <= '0';
                            wr_err_reg <= '1';
                        end if;   
                    else 
                        wr_en_reg <= '0';
                        wr_err_reg <= '0';                     
                    end if;
                end if;
            when write =>
                if (fifo_aFull = '1' OR ext_wr_en = '0') then
                    wr_en_reg <= '0';
                    wr_err_reg <= '0';
                else
                    wr_en_reg <= '1';
                    wr_err_reg <= '0';
                end if;
            when error =>
                wr_en_reg <= '0';
                wr_err_reg <= '1';
            when others =>
                wr_en_reg <= '0';
                wr_err_reg <= '0'; 
        end case;    
    end process do_states;
    
    -- Enable writing to FIFO
    wr_en <= wr_en_reg;
    
    -- Write error condition asserted
    -- FIFO is still safe because of this FSM
    wr_err <= wr_err_reg;

end wrFsm_arch;