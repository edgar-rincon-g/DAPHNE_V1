----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 03.05.2023 15:45:43
-- Design Name: ISERDESE Build
-- Module Name: Iserdese_Block - iserd_arch
-- Project Name: DAPHNE V1 - DATA ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Instantiates two Iserdese to deserialize the data coming from AFE5808A
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

entity Iserdese_Block is
    Generic (
        init_val            : bit := '0';
        inter_type          : string := "MEMORY"                -- Interface Type Of The Serial Data & ISERDESE
    );
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_input           : in std_logic;                     -- Input Clock to the Iserdese
        clk_div             : in std_logic;                     -- Divided Version of clk_input
        data_in             : in std_logic;                     -- Serialized Data 
        rst                 : in std_logic;                     -- Async Reset (Should be Driven By Flip Flop, Must Verify this DRC)
        bitslip_s           : in std_logic;                     -- Bitslip to the Iserdese
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        q_vector            : out std_logic_vector(13 downto 0) -- Deserialized Data
    );
end Iserdese_Block;

architecture iserd_arch of Iserdese_Block is

signal shift                : std_logic_vector(1 downto 0);
signal clk_B_input          : std_logic;

begin

    -- Creates the inverted clock for the Iserdese
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    clk_B_input <= not(clk_input);

    -- Instantiates Master ISERDESE
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ISERDESE2_M_inst : ISERDESE2
        generic map (
            DATA_RATE           => "DDR",           -- DDR, SDR
            DATA_WIDTH          => 14,              -- Parallel data width (2-8,10,14)
            DYN_CLKDIV_INV_EN   => "FALSE",         -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
            DYN_CLK_INV_EN      => "FALSE",         -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
            -- INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
            INIT_Q1             => init_val,
            INIT_Q2             => init_val,
            INIT_Q3             => init_val,
            INIT_Q4             => init_val,
            INTERFACE_TYPE      => inter_type,      -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
            IOBDELAY            => "NONE",          -- NONE, BOTH, IBUF, IFD
            NUM_CE              => 1,               -- Number of clock enables (1,2)
            OFB_USED            => "FALSE",         -- Select OFB path (FALSE, TRUE)
            SERDES_MODE         => "MASTER",        -- MASTER, SLAVE
            -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
            SRVAL_Q1            => '0',
            SRVAL_Q2            => '0',
            SRVAL_Q3            => '0',
            SRVAL_Q4            => '0'
        )
        port map (
            O                   => open,            -- 1-bit output: Combinatorial output
            -- Q1 - Q8: 1-bit (each) output: Registered data outputs
            Q1                  => q_vector(0),
            Q2                  => q_vector(1),
            Q3                  => q_vector(2),
            Q4                  => q_vector(3),
            Q5                  => q_vector(4),
            Q6                  => q_vector(5),
            Q7                  => q_vector(6),
            Q8                  => q_vector(7),
            -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
            SHIFTOUT1           => shift(0),
            SHIFTOUT2           => shift(1),
            BITSLIP             => bitslip_s,       -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                                    -- CLKDIV when asserted (active High). Subsequently, the data seen on the
                                                    -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
                                                    -- position every time Bitslip is invoked (DDR operation is different from
                                                    -- SDR).    
            -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
            CE1                 => '1',
            CE2                 => '1',
            CLKDIVP             => '0',             -- 1-bit input: TBD
            -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
            CLK                 => clk_input,       -- 1-bit input: High-speed clock
            CLKB                => clk_B_input,     -- 1-bit input: High-speed secondary clock
            CLKDIV              => clk_div,         -- 1-bit input: Divided clock
            OCLK                => '0',             -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
            -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
            DYNCLKDIVSEL        => '0',             -- 1-bit input: Dynamic CLKDIV inversion
            DYNCLKSEL           => '0',             -- 1-bit input: Dynamic CLK/CLKB inversion
            -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
            D                   => data_in,         -- 1-bit input: Data input
            DDLY                => '0',             -- 1-bit input: Serial data from IDELAYE2
            OFB                 => '0',             -- 1-bit input: Data feedback from OSERDESE2
            OCLKB               => '0',             -- 1-bit input: High speed negative edge output clock
            RST                 => rst,             -- 1-bit input: Active high asynchronous reset
            -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
            SHIFTIN1            => '0',
            SHIFTIN2            => '0'
        );

    -- Instantiates Slave ISERDESE
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ISERDESE2_S_inst : ISERDESE2
        generic map (
            DATA_RATE           => "DDR",           -- DDR, SDR
            DATA_WIDTH          => 14,              -- Parallel data width (2-8,10,14)
            DYN_CLKDIV_INV_EN   => "FALSE",         -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
            DYN_CLK_INV_EN      => "FALSE",         -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
            -- INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
            INIT_Q1             => init_val,
            INIT_Q2             => init_val,
            INIT_Q3             => init_val,
            INIT_Q4             => init_val,
            INTERFACE_TYPE      => inter_type,      -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
            IOBDELAY            => "NONE",          -- NONE, BOTH, IBUF, IFD
            NUM_CE              => 1,               -- Number of clock enables (1,2)
            OFB_USED            => "FALSE",         -- Select OFB path (FALSE, TRUE)
            SERDES_MODE         => "SLAVE",         -- MASTER, SLAVE
            -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
            SRVAL_Q1            => '0',
            SRVAL_Q2            => '0',
            SRVAL_Q3            => '0',
            SRVAL_Q4            => '0'
        )
        port map (
            O                   => open,            -- 1-bit output: Combinatorial output
            -- Q1 - Q8: 1-bit (each) output: Registered data outputs
            Q1                  => open,
            Q2                  => open,
            Q3                  => q_vector(8),
            Q4                  => q_vector(9),
            Q5                  => q_vector(10),
            Q6                  => q_vector(11),
            Q7                  => q_vector(12),
            Q8                  => q_vector(13),
            -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
            SHIFTOUT1           => open,
            SHIFTOUT2           => open,
            BITSLIP             => bitslip_s,       -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                                    -- CLKDIV when asserted (active High). Subsequently, the data seen on the
                                                    -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
                                                    -- position every time Bitslip is invoked (DDR operation is different from
                                                    -- SDR).    
            -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
            CE1                 => '1',
            CE2                 => '1',
            CLKDIVP             => '0',             -- 1-bit input: TBD
            -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
            CLK                 => clk_input,       -- 1-bit input: High-speed clock
            CLKB                => clk_B_input,     -- 1-bit input: High-speed secondary clock
            CLKDIV              => clk_div,         -- 1-bit input: Divided clock
            OCLK                => '0',             -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
            -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
            DYNCLKDIVSEL        => '0',             -- 1-bit input: Dynamic CLKDIV inversion
            DYNCLKSEL           => '0',             -- 1-bit input: Dynamic CLK/CLKB inversion
            -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
            D                   => '0',             -- 1-bit input: Data input
            DDLY                => '0',             -- 1-bit input: Serial data from IDELAYE2
            OFB                 => '0',             -- 1-bit input: Data feedback from OSERDESE2
            OCLKB               => '0',             -- 1-bit input: High speed negative edge output clock
            RST                 => rst,             -- 1-bit input: Active high asynchronous reset
            -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
            SHIFTIN1            => shift(0),
            SHIFTIN2            => shift(1)
        );

end iserd_arch;