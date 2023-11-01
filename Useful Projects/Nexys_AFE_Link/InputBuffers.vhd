----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.05.2023 11:44:59
-- Design Name: n-Inputs IBUFDS Build
-- Module Name: InputBuffers - buffMod_arch
-- Project Name: DAPHNE V1 - ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates all the needed buffers and connects them to the AFEs
-- Dependencies: 
-- Relies on 'Ibufds_Module.vhd' file
-- Revision:
-- Revision 0.01 - File modified so that the Frame Clock is treated as data input
-- Additional Comments:
-- Usage of 8 data channels + frame clock as last ninth data channel
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

entity InputBuffers is
    Generic (
        n_ch : integer := 1
    );
    Port ( 
        in_P_clk_dt: in std_logic;
        in_N_clk_dt: in std_logic;
        in_P_clk_fr: in std_logic;
        in_N_clk_fr: in std_logic;
        in_P_data: in std_logic;--_vector((n_ch - 1) downto 0);
        in_N_data: in std_logic;--_vector((n_ch - 1) downto 0);
        out_data: out std_logic_vector(n_ch downto 0);
        clk_dt: out std_logic
    );
end InputBuffers;

architecture buffMod_arch of InputBuffers is

-- IBUFDS component instantiation
component Ibufds_Module
    port (
        in_port: in std_logic;
        in_B_port: in std_logic;
        o_port: out std_logic
    );
end component Ibufds_Module;

begin

-- Instantiate IBUFDS for each Clock
----------------------------------------------------------------
    -- Frame Clock
    FRAME_IBUFDS : Ibufds_Module
    port map (
        in_port => in_P_clk_fr,
        in_B_port => in_N_clk_fr,
        o_port => out_data(n_ch)
    );

    -- Data Clock
    DIGITAL_IBUFDS : Ibufds_Module
    port map (
        in_port => in_P_clk_dt,
        in_B_port => in_N_clk_dt,
        o_port => clk_dt
    );

-- Instantiate IBUFDS for each Channel of this AFE5808A
----------------------------------------------------------------
    --IBUFDS_GEN : for i in (n_ch - 1) downto 0 generate
    DATA_IBUFDS : Ibufds_Module
    port map (
        in_port => in_P_data,--(i),
        in_B_port => in_N_data,--(i),
        o_port => out_data(0)
    );
--end generate IBUFDS_GEN;

end buffMod_arch;