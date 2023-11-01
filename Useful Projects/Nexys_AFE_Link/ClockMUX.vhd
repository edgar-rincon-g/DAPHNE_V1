----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 03.05.2023 14:32:39
-- Design Name: 3-Clock MUX Build
-- Module Name: ClockMUX - clkMux_arch
-- Project Name: DAPHNE V1 - CLOCK MANAGEMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates the connection between the MUX Buffers to create a 4 clock MUX
-- Dependencies: 
-- Relies on 'Bufgmux_Module.vhd' file
-- Revision:
-- Revision 0.02 - File Updated
-- Additional Comments:
-- ClockMUX was changed so that it fits only 3 Clock Inputs rather than 4
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ClockMUX is
    Port ( 
        phase_vec : in std_logic_vector(2 downto 0); 
        mux_ctrl : in std_logic_vector(1 downto 0);
        clk : out std_logic
    );
end ClockMUX;

architecture clkMux_arch of ClockMUX is

-- BUFGMUX_CTRL component instantiation
component Bufgmux_Module
    port (
        clk_1 : in std_logic;
        clk_2 : in std_logic;
        sel : in std_logic;
        clk_out : out std_logic
    );
end component Bufgmux_Module;

-- Aux signals instantiation to connect the buffers
signal o_Mux: std_logic := '0'; -- Was o_Mux1

begin

    -- Instantiate BUFGMUX_CTRL for each pair of Clocks
-- First MUX for Clock phases 0° and 45°
-- V2.0 First MUX for Clock phases 0° and 60°
    MUX_In : Bufgmux_Module -- Was MUX_IN1
    port map (
        clk_1 => phase_vec(0),
        clk_2 => phase_vec(1),
        sel => mux_ctrl(0),
        clk_out => o_Mux -- Was o_Mux1
    );

-- Receives input from MUX deciding between 0° and 60° and also checks for input of 120°
-- First MUX for Clock phases selected between MUX_In1 and MUX_In2
    MUX_Out : Bufgmux_Module
    port map (
        clk_1 => o_Mux, -- Was o_Mux1
        clk_2 => phase_vec(2), -- Was o_Mux2
        sel => mux_ctrl(1),
        clk_out => clk
    );

end clkMux_arch;