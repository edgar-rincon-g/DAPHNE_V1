----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 17.05.2023 15:20:00
-- Design Name: FDRE Build
-- Module Name: FDRE_Module - fdreMod_arch
-- Project Name: DAPHNE V1 - SYNCHRONIZERS
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Instantiates FDRE primitive
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

entity FDRE_Module is
    Generic (
        init_val    : bit   := '0'
    );
    Port ( 
        d_i         : in std_logic;
        rst         : in std_logic;
        clk_en      : in std_logic;
        clk         : in std_logic;
        d_o         : out std_logic
    );
end FDRE_Module;

architecture ffd_arch of FDRE_Module is
begin

    -- FDRE: Single Data Rate D Flip-Flop with Synchronous Reset and
   --       Clock Enable (posedge clk).  
   --       Artix-7
   -- Xilinx HDL Language Template, version 2022.2
   
   -- This template is used so ASYNC REG property for D Flip-Flop is used
   -- Properly in the design, instead of nets and stuff like that 
   
   FDRE_inst : FDRE
   generic map (
      INIT  => init_val     -- Initial value of register ('0' or '1')  
   ) 
   port map (
      Q     => d_o,         -- Data output
      C     => clk,         -- Clock input
      CE    => clk_en,      -- Clock enable input
      R     => rst,         -- Synchronous reset input
      D     => d_i          -- Data input
   );

end ffd_arch;