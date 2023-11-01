----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.05.2023 11:50:23
-- Design Name: BUFGMUX_CTRL Build
-- Module Name: Bufgmux_Module - bmc_arch
-- Project Name: DAPHNE V1 - CLOCK MANAGEMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates BUFGMUX_CTRL primitive
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity Bufgmux_Module is
    Port ( 
        clk_1       : in std_logic;
        clk_2       : in std_logic;
        sel         : in std_logic;
        clk_out     : out std_logic
    );
end Bufgmux_Module;

architecture bmc_arch of Bufgmux_Module is
begin

    BUFGMUX_CTRL_inst : BUFGMUX_CTRL
    port map (
        O           => clk_out,     -- 1-bit output: Clock output
        I0          => clk_1,       -- 1-bit input: Clock input (S=0)
        I1          => clk_2,       -- 1-bit input: Clock input (S=1)
        S           => sel          -- 1-bit input: Clock select
    );

end bmc_arch;