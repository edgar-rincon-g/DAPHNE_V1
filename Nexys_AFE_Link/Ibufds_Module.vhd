----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.05.2023 11:44:33
-- Design Name: IBUFDS Build
-- Module Name: Ibufds_Module - ibd_arch
-- Project Name: DAPHNE V1 - ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates IBUFDS primitive
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

entity Ibufds_Module is
    Port ( 
        in_port : in std_logic;
        in_B_port : in std_logic;
        o_port : out std_logic
    );
end Ibufds_Module;

architecture ibd_arch of Ibufds_Module is
begin

    ibuf_inst: IBUFDS
    generic map (
        DIFF_TERM => TRUE, -- Differential Termination
        IBUF_LOW_PWR => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards (MUST CHECK DAPHNE DESIGN)
        IOSTANDARD => "LVDS"
    )
    port map (
        O => o_port, -- Buffer output
        I => in_port, -- diff_p buffer input
        IB => in_B_port -- diff_n buffer input
    );

end ibd_arch;