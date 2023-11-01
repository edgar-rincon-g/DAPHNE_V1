----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 23.10.2023 07:27:05
-- Design Name: Timing Endpoint for DAPHNE V1 Board
-- Module Name: endpoint - epnt_arch
-- Project Name: DAPHNE V1 
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Creates the timing endpoint module responsible for managing the clocks in the board
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
library UNISIM;
use UNISIM.VComponents.all;

entity endpoint is
    Port ( 
        -- System Clocking and Reset Inputs
        ----------------------------------------------------------------------------------------------------------------------
        reset_async                 : in std_logic;
        sysclk_p, sysclk_n          : in std_logic;
        
        -- External CDR chip interface: ignore CLKOUT, LOS, and LOL
        ----------------------------------------------------------------------------------------------------------------------
        cdr_data_p, cdr_data_n      : in std_logic;         -- LVDS recovered serial data ACKCHYUALLY the clock!

        -- Misc Interface Signals
        ----------------------------------------------------------------------------------------------------------------------
--        mmcm1_rst                   : in std_logic;
--        mmcm1_lck                   : out std_logic;
        mmcm0_lck                   : out std_logic;
        
        -- System Output Clocks
        ----------------------------------------------------------------------------------------------------------------------
        sys_clk100                  : out std_logic;
        sys_clk125                  : out std_logic; 
        sys_clk200                  : out std_logic;
        sys_clk62_5                 : out std_logic;
        afe_clk_p, afe_clk_n        : out std_logic         -- Copy of 62.5 MHz master clock sent to AFEs
    );
end endpoint;

architecture epnt_arch of endpoint is

-- IBUFGDS Auxiliary Signals 
---------------------------------------------------------------------------------------------------------------------
signal sysclk_ibuf                                                  :   std_logic;

-- IBUFDS Auxiliary Signals 
---------------------------------------------------------------------------------------------------------------------
signal cdr_data                                                     :   std_logic;

-- MMCM0 Outputs Auxiliary Signals 
---------------------------------------------------------------------------------------------------------------------
signal mmcm0_clkout0, mmcm0_clkout1, mmcm0_clkout2, mmcm0_clkout3   :   std_logic;
signal mmcm0_clkfbout, mmcm0_clkfbout_buf                           :   std_logic;
signal local_clk62_5, clk_62_5_temp                                 :   std_logic;

begin

    -- System Clock is 100MHz LVDS, receive it with IBUFDS. sysclk comes in on bank 33
    -- which has VCCO=1.5V. IOSTANDARD is LVDS and the termination resistor is external (DIFF_TERM=FALSE)

    -- System Clock Differential Input Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    sysclk_ibufds_inst : IBUFGDS
        generic map (
            DIFF_TERM => TRUE, -- Differential Termination 
            --IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
            IOSTANDARD => "LVDS_25")
        port map (
            O                       => sysclk_ibuf,         -- Buffer output
            I                       => sysclk_p,            -- Diff_p buffer input (connect directly to top-level port)
            IB                      => sysclk_n             -- Diff_n buffer input (connect directly to top-level port)
        );
    
    -- MMCM For System Clock Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_inst : MMCME2_ADV
        generic map (
            BANDWIDTH               => "OPTIMIZED",         -- Jitter programming (OPTIMIZED, HIGH, LOW)
            CLKFBOUT_MULT_F         => 10.000,              -- Multiply value for all CLKOUT (2.000-64.000). -- VCO = 1000MHz
            CLKFBOUT_PHASE          => 0.000,               -- Phase offset in degrees of CLKFB (-360.000-360.000).
            -- CLKIN_PERIOD: Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
            CLKIN1_PERIOD           => 10.000,              -- 100MHz System Clock Input
            -- CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for CLKOUT (1-128)
            CLKOUT1_DIVIDE          => 5,                   -- CLKOUT1 = 200MHz
            CLKOUT2_DIVIDE          => 10,                  -- CLOUT2 = 100MHz
            CLKOUT3_DIVIDE          => 8,                   -- CLKOUT3 = 125MHz
            CLKOUT0_DIVIDE_F        => 16.000,              -- Divide amount for CLKOUT0 (1.000-128.000). CLKOUT0 = 62.5MHz
            -- CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for CLKOUT outputs (0.01-0.99).
            CLKOUT0_DUTY_CYCLE      => 0.500,
            CLKOUT1_DUTY_CYCLE      => 0.500,
            CLKOUT2_DUTY_CYCLE      => 0.500,
            CLKOUT3_DUTY_CYCLE      => 0.500,
            -- CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for CLKOUT outputs (-360.000-360.000).
            CLKOUT0_PHASE           => 0.000,
            CLKOUT1_PHASE           => 0.000,
            CLKOUT2_PHASE           => 0.000,
            CLKOUT3_PHASE           => 0.000,
            CLKOUT4_CASCADE         => FALSE,               -- Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
            COMPENSATION            => "ZHOLD",             -- ZHOLD, BUF_IN, EXTERNAL, INTERNAL
            DIVCLK_DIVIDE           => 1,                   -- Master division value (1-106)
            -- REF_JITTER: Reference input jitter in UI (0.000-0.999). (Deleted lines, left only Startup Wait)
            STARTUP_WAIT            => FALSE,               -- Delays DONE until MMCM is locked (FALSE, TRUE)
            -- USE_FINE_PS: Fine phase shift enable (TRUE/FALSE)
            CLKFBOUT_USE_FINE_PS    => FALSE,
            CLKOUT0_USE_FINE_PS     => FALSE,
            CLKOUT1_USE_FINE_PS     => FALSE,
            CLKOUT2_USE_FINE_PS     => FALSE,
            CLKOUT3_USE_FINE_PS     => FALSE
        )
        port map (
            -- Clock Outputs: 1-bit (each) output: User configurable clock outputs
            CLKOUT0                 => mmcm0_clkout0,       -- 1-bit output: CLKOUT0 62.5 MHz
            CLKOUT0B                => open,                -- 1-bit output: Inverted CLKOUT0
            CLKOUT1                 => mmcm0_clkout1,       -- 1-bit output: CLKOUT1 200 MHz
            CLKOUT1B                => open,                -- 1-bit output: Inverted CLKOUT1
            CLKOUT2                 => mmcm0_clkout2,       -- 1-bit output: CLKOUT2 100 MHz
            CLKOUT2B                => open,                -- 1-bit output: Inverted CLKOUT2
            CLKOUT3                 => mmcm0_clkout3,       -- 1-bit output: CLKOUT3 125 MHz
            CLKOUT3B                => open,                -- 1-bit output: Inverted CLKOUT3
            CLKOUT4                 => open,                -- 1-bit output: CLKOUT4
            CLKOUT5                 => open ,               -- 1-bit output: CLKOUT5
            CLKOUT6                 => open,                -- 1-bit output: CLKOUT6
            -- DRP Ports: 16-bit (each) output: Dynamic reconfiguration ports
            DO                      => open,                -- 16-bit output: DRP data
            DRDY                    => open,                -- 1-bit output: DRP ready
            -- Dynamic Phase Shift Ports: 1-bit (each) output: Ports used for dynamic phase shifting of the outputs
            PSDONE                  => open,                -- 1-bit output: Phase shift done
            -- Feedback Clocks: 1-bit (each) output: Clock feedback ports
            CLKFBOUT                => mmcm0_clkfbout,      -- 1-bit output: Feedback clock
            CLKFBOUTB               => open,                -- 1-bit output: Inverted CLKFBOUT
            -- Status Ports: 1-bit (each) output: MMCM status ports
            CLKFBSTOPPED            => open,                -- 1-bit output: Feedback clock stopped
            CLKINSTOPPED            => open,                -- 1-bit output: Input clock stopped
            LOCKED                  => mmcm0_lck,           -- 1-bit output: LOCK
            -- Clock Inputs: 1-bit (each) input: Clock inputs
            CLKIN1                  => sysclk_ibuf,         -- 1-bit input: Primary clock
            CLKIN2                  => '0',                 -- 1-bit input: Secondary clock
            -- Control Ports: 1-bit (each) input: MMCM control ports
            CLKINSEL                => '1',                 -- 1-bit input: Clock select, High=CLKIN1 Low=CLKIN2 HIGH to use CLKIN1
            PWRDWN                  => '0',                 -- 1-bit input: Power-down
            RST                     => reset_async,         -- 1-bit input: Reset
            -- DRP Ports: 7-bit (each) input: Dynamic reconfiguration ports
            DADDR                   => (others => '0'),     -- 7-bit input: DRP address
            DCLK                    => '0',                 -- 1-bit input: DRP clock
            DEN                     => '0',                 -- 1-bit input: DRP enable
            DI                      => (others => '0'),     -- 16-bit input: DRP data
            DWE                     => '0',                 -- 1-bit input: DRP write enable
            -- Dynamic Phase Shift Ports: 1-bit (each) input: Ports used for dynamic phase shifting of the outputs
            PSCLK                   => '0',                 -- 1-bit input: Phase shift clock
            PSEN                    => '0',                 -- 1-bit input: Phase shift enable
            PSINCDEC                => '0',                 -- 1-bit input: Phase shift increment/decrement
            -- Feedback Clocks: 1-bit (each) input: Clock feedback ports
            CLKFBIN                 => mmcm0_clkfbout_buf   -- 1-bit input: Feedback clock
        );
        
    
    -- Feedback BUFG For MMCM0 Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_clkfb_inst : BUFG
        port map (
            O                       => mmcm0_clkfbout_buf,  -- 1-bit output: Clock output
            I                       => mmcm0_clkfbout       -- 1-bit input: Clock input
        );
        
    -- Auxiliar 100 MHz Clock BUFG Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_clk2_inst : BUFG
        port map (
            O                       => sys_clk100,          -- 1-bit output: Clock output
            I                       => mmcm0_clkout2        -- 1-bit input: Clock input
        );
        
    -- BUFG For 200 MHz Clock Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_clk1_inst : BUFG
        port map (
            O                       => sys_clk200,          -- 1-bit output: Clock output
            I                       => mmcm0_clkout1        -- 1-bit input: Clock input
        );
    
    -- BUFG For 125 MHz Clock Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_clk3_inst : BUFG
        port map (
            O                       => sys_clk125,          -- 1-bit output: Clock output
            I                       => mmcm0_clkout3        -- 1-bit input: Clock input
        );
        
    -- BUFG For Local 62.5 MHz Clock Instantiation
--------------------------------------------------------------------------------------------------------------------------------
    mmcm0_clk0_inst : BUFG
        port map (
            O                       => local_clk62_5,       -- 1-bit output: Clock output
            I                       => mmcm0_clkout0        -- 1-bit input: Clock input
        );
        
    -- DATA OUT from ADN2814 chip is the modulated clock
--------------------------------------------------------------------------------------------------------------------------------
    cdr_data_inst: IBUFDS
        generic map (
            DIFF_TERM => TRUE,                              -- Differential Termination 
            IBUF_LOW_PWR => TRUE,                           -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
            IOSTANDARD => "LVDS_25")
        port map (
            O                       => cdr_data,            -- Buffer output
            I                       => cdr_data_p,          -- Diff_p buffer input (connect directly to top-level port)
            IB                      => cdr_data_n           -- Diff_n buffer input (connect directly to top-level port)
        );         
        
    -- Forward the master clock to the AFEs (via ext clock fanout chip U20)
--------------------------------------------------------------------------------------------------------------------------------
    oddr_inst: ODDR 
        generic map (  
            DDR_CLK_EDGE => "OPPOSITE_EDGE",
            INIT => '0',
            SRTYPE => "SYNC"
        )
        port map (
            Q => clk_62_5_temp, 
            C => local_clk62_5,
            CE => '1',
            D1 => '1',
            D2 => '0',
            R  => '0',
            S  => '0'
        );

    afe_obufds_inst: OBUFDS
        generic map (
            IOSTANDARD=>"LVDS"
        )
        port map (
            I => clk_62_5_temp,
            O => afe_clk_p,
            OB => afe_clk_n
        );
        
    -- Misc Output Clock
--------------------------------------------------------------------------------------------------------------------------------
    sys_clk62_5 <= local_clk62_5;

end epnt_arch;
