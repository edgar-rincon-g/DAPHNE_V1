----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.08.2023 13:06:10
-- Design Name: 
-- Module Name: counter - cnt_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
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

entity counter is
    Generic (
        DATA_WIDTH : integer := 14
    );
    Port ( 
        CLK : in std_logic;
        RST : in std_logic;
        STR : in std_logic;
        CNT_VAL : out std_logic_vector((DATA_WIDTH - 1) downto 0)
    );
end counter;

architecture cnt_arch of counter is

--Aux signals used by the module
signal CNT_REG : std_logic_vector((DATA_WIDTH - 1) downto 0);

begin

    CNT_GEN : process(CLK, RST, CNT_REG)
    begin
        if rising_edge(CLK) then
            if (RST = '1') then
                CNT_REG <= (others => '0');
            else
                if (STR = '1') then
                    -- Ask if the input to start counting is valid or active (High)
                    if (CNT_REG = "11111111111111") then    
                        CNT_REG <= (others => '0');
                    else
                        CNT_REG <= CNT_REG + 1;
                    end if;
                else
                    -- Do not count 
                    CNT_REG <= (others => '0');
                end if;
            end if;
        end if;
    end process CNT_GEN;
    
    -- Assign the counter register to the output of the module
    CNT_VAL <= CNT_REG;
    
end cnt_arch;