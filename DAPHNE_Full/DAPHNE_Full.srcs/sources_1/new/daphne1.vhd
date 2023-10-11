----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2023 13:53:23
-- Design Name: 
-- Module Name: daphne1_arch - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library UNIMACRO;
use UNIMACRO.VComponents.all;

use work.daphne1_package.all;

entity daphne1_arch is
    Port ( 
        reset_n: in std_logic; -- Acive LOW async reset from the microcontroller
        sysclk_p, sysclk_n: in std_logic; -- System Clock LVDS 100 MHz from local oscillator
        
        -- AFE Interface, LVDS, 5 AFE chips, each AFE has 8 DATA + 1 FCLK + 1DCLK outputs
        afe_p, afe_n: array_5x8_type; -- (7...0 Data)
        afe_dclk_p, afe_dclk_n: in std_logic_vector(4 downto 0); -- DCLK
        afe_fclk_p, afe_fclk_n: in std_logic_vector(4 downto 0); -- FCLK
        afe_clk_p, afe_clk_n: out std_logic; -- Copy of 62.5 MHz master clock sent to AFEs
        
        -- Two high speed links to DAQ
        -- For FELIX links use TX only, disable RX, line rate = 4.809Gbps, refclk = 120.237 MHz
        daq0_tx_p, daq0_tx_n: out std_logic;
        daq0_sfp_abs: in std_logic;
        daq0_sfp_los: in std_logic;
        daq0_sfp_tx_dis: out std_logic;
        daq0_sfp_scl, daq0_sfp_sda : out std_logic; -- SFP I2C interface (optional)
        
        daq1_tx_p, daq1_tx_n: out std_logic;
        daq1_sfp_abs: in std_logic;
        daq1_sfp_los: in std_logic;
        daq1_sfp_tx_dis: out std_logic;
        daq1_sfp_scl, daq1_sfp_sda : out std_logic; -- SFP I2C interface (optional)
        
        -- One MGT used for GbE interface, quad 213, channel 0
        daq_refclk_p, daq_refclk_n: in std_logic; -- MGT REFCLK for GbE, LVDS, 125.000 MHz, quad 216, refclk0
        
        -- Timing Endpoint Interface (SFP)
        cdr_sfp_los: in std_logic; -- Loss of signal
        cdr_sfp_abs: in std_logic; -- High if module is absent
        cdr_sfp_tx_dis: out std_logic; -- High to disable timing SFP TX
        cdr_sfp_tx_p, cdr_sfp_tx_n: out std_logic; -- Send data upstream (optional)

        -- Timing Endpoint Interface (CDR chip)
        --cdr_clk_p, cdr_clk_n: in std_logic; -- LVDS recovered clock 312MHz (not used anymore) ?
        cdr_data_p, cdr_data_n: in std_logic; -- LVDS recovered serial data (actually the clock)
        cdr_los: in std_logic; -- Loss of signal
        cdr_lol: in std_logic; -- Loss of lock
        
        -- SPI slave interface for communication with uC
        spi_clk: in std_logic;
        spi_csn: in std_logic;
        spi_mosi: in std_logic;
        spi_miso: out std_logic;
        spi_irq: out std_logic;
        
        -- Misc Board I/O
        led: out std_logic_vector(5 downto 0) -- DAPHNE PCB LEDs are active LOW
    );
end daphne1_arch;

architecture Behavioral of daphne1_arch is

begin


end Behavioral;
