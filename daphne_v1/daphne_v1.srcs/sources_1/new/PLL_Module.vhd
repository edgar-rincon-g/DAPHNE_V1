----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 03.05.2023 13:18:32
-- Design Name: PLL Build
-- Module Name: PLL_Module - pll_arch
-- Project Name: DAPHNE V1 - CLOCK MANAGEMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates PLL Primitive With additional connections
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.03 - File Modified for new frequencies synthesizer
-- Additional Comments:
-- The PLL was modified so that it can output both CLK and CLK_DIV Clock signals
-- Needed by the ISERDESE Modules. Clock outputs were reduced by 1 so that less
-- BUFG were needed
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

entity PLL_Module is
    Generic (
        mult_val        : integer   := 5;                   -- Multiplication Value for the Frequency
        div_val         : integer   := 1;                   -- Division Value for the Frequency
        o_div_val       : integer   := 1;                   -- Divided Value for the Output Frequency
        period          : real      := 10.000               -- Period of the Input Clock
    );
    Port ( 
        in_clk          : in std_logic;                     -- Input Clock 
        reset           : in std_logic;                     -- Async Reset
        clk_phase       : out std_logic_vector(2 downto 0); -- Clock Phases Generated
        clk_div_phase   : out std_logic_vector(2 downto 0); -- Divided Versions of clk_phase
        lckd            : out std_logic                     -- PLL Locked
    );
end PLL_Module;

architecture pll_arch of PLL_Module is

-- Aux signals to connect the feedback loop of the PLL
signal clk_fdbck_o          : std_logic;
signal clk_fdbck_i          : std_logic;

begin

    -- Instantiate PLL to modify Clock phase
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    PLLE2_BASE_inst : PLLE2_BASE
        generic map (
            BANDWIDTH           => "OPTIMIZED", -- OPTIMIZED, HIGH, LOW
            CLKFBOUT_MULT       => mult_val,    -- Multiply value for all CLKOUT, (2-64)
            CLKFBOUT_PHASE      => 0.0,         -- Phase offset in degrees of CLKFB, (-360.000-360.000).
            CLKIN1_PERIOD       => period,      -- Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
            -- CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
            CLKOUT0_DIVIDE      => mult_val,
            CLKOUT1_DIVIDE      => mult_val,
            CLKOUT2_DIVIDE      => mult_val,
            CLKOUT3_DIVIDE      => o_div_val,
            CLKOUT4_DIVIDE      => o_div_val,
            CLKOUT5_DIVIDE      => o_div_val,
            -- CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
            CLKOUT0_DUTY_CYCLE  => 0.5,
            CLKOUT1_DUTY_CYCLE  => 0.5,
            CLKOUT2_DUTY_CYCLE  => 0.5,
            CLKOUT3_DUTY_CYCLE  => 0.5,
            CLKOUT4_DUTY_CYCLE  => 0.5,
            CLKOUT5_DUTY_CYCLE  => 0.5,
            -- CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
            CLKOUT0_PHASE       => 0.0,         -- This were the only possible frequencies to cover most of the range (437.5 MHz)
            CLKOUT1_PHASE       => 60.0,        -- This were the only possible frequencies to cover most of the range (437.5 MHz)
            CLKOUT2_PHASE       => 120.0,       -- This were the only possible frequencies to cover most of the range (437.5 MHz)
            CLKOUT3_PHASE       => 0.0,         -- This were the only possible frequencies to cover most of the range (62.5 MHz)
            CLKOUT4_PHASE       => 60.0,        -- This were the only possible frequencies to cover most of the range (62.5 MHz)
            CLKOUT5_PHASE       => 120.0,       -- This were the only possible frequencies to cover most of the range (62.5 MHz)
            DIVCLK_DIVIDE       => div_val,     -- Master division value, (1-56)
            REF_JITTER1         => 0.0,         -- Reference input jitter in UI, (0.000-0.999).
            STARTUP_WAIT        => "FALSE"      -- Delay DONE until PLL Locks, ("TRUE"/"FALSE")
        )
        port map (
            -- Clock Outputs: 1-bit (each) output: User configurable clock outputs
            CLKOUT0             => clk_phase(0),        -- 1-bit output: CLKOUT0
            CLKOUT1             => clk_phase(1),        -- 1-bit output: CLKOUT1
            CLKOUT2             => clk_phase(2),        -- 1-bit output: CLKOUT2
            CLKOUT3             => clk_div_phase(0),    -- 1-bit output: CLKOUT3
            CLKOUT4             => clk_div_phase(1),    -- 1-bit output: CLKOUT4 -- Was 'open'
            CLKOUT5             => clk_div_phase(2),    -- 1-bit output: CLKOUT5 -- Was 'open'
            -- Feedback Clocks: 1-bit (each) output: Clock feedback ports
            CLKFBOUT            => clk_fdbck_o,         -- 1-bit output: Feedback clock
            LOCKED              => lckd,                -- 1-bit output: LOCK
            CLKIN1              => in_clk,              -- 1-bit input: Input clock
            -- Control Ports: 1-bit (each) input: PLL control ports
            PWRDWN              => '0',                 -- 1-bit input: Power-down
            RST                 => reset,               -- 1-bit input: Reset
            -- Feedback Clocks: 1-bit (each) input: Clock feedback ports
            CLKFBIN             => clk_fdbck_i          -- 1-bit input: Feedback clock
        );

    -- Instantiate BUFG to configure PLL feedback Clock signal and use it as 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    BUFG_inst : BUFG
        port map (
            O                   => clk_fdbck_i,         -- 1-bit output: Clock output
            I                   => clk_fdbck_o          -- 1-bit input: Clock input
        );

end pll_arch;