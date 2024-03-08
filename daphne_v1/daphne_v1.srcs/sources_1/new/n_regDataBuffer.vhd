----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.03.2024 11:47:30
-- Design Name: Data Buffer Module
-- Module Name: n_regDataBuffer - Behavioral
-- Project Name: DAPHNE V1
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a Data Buffer built upon n Number of registers, completely automatic
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

entity n_regDataBuffer is
    Generic (
        INPUT_WIDTH             : integer   := 14;                                      -- Width of the Input Data
        N_REG                   : integer   := 66                                       -- Number of Internal Buffer Registers 
    );
    Port ( 
        -- Module Inputs
    --------------------------------------------------------------------------------------------------------------------------------
        i_data                  : in std_logic_vector((INPUT_WIDTH - 1) downto 0);     -- Input Parallel Data for the Module
        clk                     : in std_logic;                                        -- Clock for the Registers
        rst                     : in std_logic;                                        -- Async Reset
        
        -- Module Outputs
    --------------------------------------------------------------------------------------------------------------------------------
        o_data                  : out std_logic_vector((INPUT_WIDTH - 1) downto 0)      -- Output Data (n Samples Delayed)
    );
end n_regDataBuffer;

architecture regBuf_arch of n_regDataBuffer is

-- Data Buffer Register Signal Type Creation
--------------------------------------------------------------------------------------------------------------------------------------
type data_buff_reg is array (0 to (N_REG - 1)) of std_logic_vector((INPUT_WIDTH - 1) downto 0);
signal reg_data                 : data_buff_reg     := (others => (others => '0'));

begin

    -- Create a Data Buffer Using Registers
--------------------------------------------------------------------------------------------------------------------------------  
    -- Use a For Generate To State The Assignation Of Registers In Chain
    DATA_BUFF_GEN : for i in 0 to (N_REG - 1) generate
        -- Initial Register Assignation (Will Always Be Input Data)
        FISRT_DATA_BUFF_REG : if (i = 0) generate
            FIRST_FATA_REG_PROC : process(i_data, clk, rst)
            begin
                if rising_edge(clk) then
                    if (rst = '1') then
                        reg_data(i) <= (others => '0');
                    else
                        reg_data(i) <= i_data;
                    end if;
                end if;    
            end process FIRST_FATA_REG_PROC;
        end generate FISRT_DATA_BUFF_REG;
        
        -- Consecutive Registers Assignation / Registers Chain
        CHAIN_DATA_BUFF_GEN : if (i > 0) generate
            CHAIN_DATA_REG_PROC : process(reg_data, clk, rst)
            begin
                if rising_edge(clk) then
                    if (rst = '1') then
                        reg_data(i) <= (others => '0');
                    else
                        reg_data(i) <= reg_data(i-1);
                    end if;
                end if; 
            end process CHAIN_DATA_REG_PROC;
        end generate CHAIN_DATA_BUFF_GEN; 
    end generate DATA_BUFF_GEN;

    -- Module Outputs
--------------------------------------------------------------------------------------------------------------------------------
    o_data <= reg_data(reg_data'HIGH);

end regBuf_arch;