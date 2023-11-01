----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 11.10.2023 14:05:24
-- Design Name: DAPHNE V1 Package
-- Module Name: daphne1_package - Behavioral
-- Project Name: DAPHNE V1
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a package with all of the signal types and memory mapping for 
-- the DAPHNE V1 Board
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package daphne1_package is

    type array_5x8_type is array (4 downto 0) of std_logic_vector(7 downto 0);

end package;
