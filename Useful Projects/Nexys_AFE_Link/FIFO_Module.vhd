----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 16.05.2023 13:56:55
-- Design Name: FIFO Memory Build
-- Module Name: FIFO_Module - fifo_arch
-- Project Name: DAPHNE V1 - MEMORY MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Instantiates a FIFO primitive
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - Changed device primitive from only FIFOE36E1 to FIFO_DUALCLOCK_MACRO
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

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity FIFO_Module is
    Generic (
        dt_width : integer := 4;
        pointersLength : integer := 14;
        fwft : boolean := FALSE;
        aEmpty_Off : bit_vector := X"0080";
        aFull_Off : bit_vector := X"0080"
    );
    Port ( 
        rst : in std_logic;
        d_i : in std_logic_vector((dt_width - 1) downto 0);
        rd_en : in std_logic;
        wr_en : in std_logic;
        rd_clk : in std_logic;
        wr_clk : in std_logic;
        aEmpty : out std_logic;
        aFull : out std_logic;
        Empty : out std_logic;
        Full : out std_logic;
        WriteError : out std_logic;
        ReadError : out std_logic;
        WriteCount : out std_logic_vector((pointersLength - 1) downto 0);
        ReadCount : out std_logic_vector((pointersLength - 1) downto 0);
        d_o : out std_logic_vector((dt_width - 1) downto 0)
    );
end FIFO_Module;

architecture fifo_arch of FIFO_Module is

-- Auxiliary registers to connect FIFO with Module Outputs
signal aEmpty_reg: std_logic;
signal aFull_reg: std_logic;
signal Empty_reg: std_logic;
signal Full_reg: std_logic;
signal rd_Err: std_logic;
signal wr_Err: std_logic;
signal rd_Count_reg: std_logic_vector((pointersLength - 1) downto 0);
signal wr_Count_reg: std_logic_vector((pointersLength - 1) downto 0);
    
begin

--    FIFO36E1_inst : FIFO36E1
--       generic map (
--          ALMOST_EMPTY_OFFSET => aEmpty_Off,   -- Sets the almost empty threshold
--          ALMOST_FULL_OFFSET => aFull_Off,    -- Sets almost full threshold
--          DATA_WIDTH => dt_width,                  -- Sets data width to 4-72
--          DO_REG => 1,                      -- Enable output register (1-0) Must be 1 if EN_SYN = FALSE
--          EN_ECC_READ => FALSE,             -- Enable ECC decoder, FALSE, TRUE
--          EN_ECC_WRITE => FALSE,            -- Enable ECC encoder, FALSE, TRUE
--          EN_SYN => FALSE,                  -- Specifies FIFO as Asynchronous (FALSE) or Synchronous (TRUE)
--          FIFO_MODE => "FIFO36",            -- Sets mode to "FIFO36" or "FIFO36_72" 
--          FIRST_WORD_FALL_THROUGH => fwft, -- Sets the FIFO FWFT to FALSE, TRUE
--          INIT => X"0000",    -- Initial values on output port
--          SIM_DEVICE => "7SERIES",          -- Must be set to "7SERIES" for simulation behavior
--          SRVAL => X"0000"    -- Set/Reset value for output port
--       )
--       port map (
--          -- ECC Signals: 1-bit (each) output: Error Correction Circuitry ports
--          DBITERR => open,             -- 1-bit output: Double bit error status
--          ECCPARITY => open,         -- 8-bit output: Generated error correction parity
--          SBITERR => open,             -- 1-bit output: Single bit error status
--          -- Read Data: 64-bit (each) output: Read output data
--          DO => d_o,                       -- 64-bit output: Data output
--          DOP => open,                     -- 8-bit output: Parity data output
--          -- Status: 1-bit (each) output: Flags and other FIFO status outputs
--          ALMOSTEMPTY => aEmpty_reg,     -- 1-bit output: Almost empty flag
--          ALMOSTFULL => aFull_reg,       -- 1-bit output: Almost full flag
--          EMPTY => Empty_reg,                 -- 1-bit output: Empty flag
--          FULL => Full_reg,                   -- 1-bit output: Full flag
--          RDCOUNT => rd_Count_reg,             -- 13-bit output: Read count
--          RDERR => rd_Err,                 -- 1-bit output: Read error
--          WRCOUNT => wr_Count_reg,             -- 13-bit output: Write count
--          WRERR => wr_Err,                 -- 1-bit output: Write error
--          -- ECC Signals: 1-bit (each) input: Error Correction Circuitry ports
--          INJECTDBITERR => '0', -- 1-bit input: Inject a double bit error input
--          INJECTSBITERR => '0',
--          -- Read Control Signals: 1-bit (each) input: Read clock, enable and reset input signals
--          RDCLK => rd_clk,                 -- 1-bit input: Read clock
--          RDEN => rd_en,                   -- 1-bit input: Read enable
--          REGCE => '1',                 -- 1-bit input: Clock enable
--          RST => rst,                     -- 1-bit input: Reset
--          RSTREG => '1',               -- 1-bit input: Output register set/reset
--          -- Write Control Signals: 1-bit (each) input: Write clock and enable input signals
--          WRCLK => wr_clk,                 -- 1-bit input: Rising edge write clock.
--          WREN => wr_en,                   -- 1-bit input: Write enable
--          -- Write Data: 64-bit (each) input: Write input data
--          DI => d_i,                       -- 64-bit input: Data input
--          DIP => X"00"                      -- 8-bit input: Parity input
--       );
    
    -- DUALCLOCK FIFO Instantiation
----------------------------------------------------------------------------------------------------------------    
    FIFO_DUALCLOCK_MACRO_inst : FIFO_DUALCLOCK_MACRO
       generic map (
          DEVICE => "7SERIES",            -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
          ALMOST_FULL_OFFSET => aFull_Off,  -- Sets almost full threshold
          ALMOST_EMPTY_OFFSET => aEmpty_Off, -- Sets the almost empty threshold
          DATA_WIDTH => dt_width,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
          FIFO_SIZE => "36Kb",            -- Target BRAM, "18Kb" or "36Kb" 
          FIRST_WORD_FALL_THROUGH => fwft) -- Sets the FIFO FWFT to TRUE or FALSE
       port map (
          ALMOSTEMPTY => aEmpty_reg,   -- 1-bit output almost empty
          ALMOSTFULL => aFull_reg,     -- 1-bit output almost full
          DO => d_o,                     -- Output data, width defined by DATA_WIDTH parameter
          EMPTY => Empty_reg,               -- 1-bit output empty
          FULL => Full_reg,                 -- 1-bit output full
          RDCOUNT => rd_Count_reg,           -- Output read count, width determined by FIFO depth
          RDERR => rd_Err,               -- 1-bit output read error
          WRCOUNT => wr_Count_reg,           -- Output write count, width determined by FIFO depth
          WRERR => wr_Err,               -- 1-bit output write error
          DI => d_i,                     -- Input data, width defined by DATA_WIDTH parameter
          RDCLK => rd_clk,               -- 1-bit input read clock
          RDEN => rd_en,                 -- 1-bit input read enable
          RST => rst,                   -- 1-bit input reset
          WRCLK => wr_clk,               -- 1-bit input write clock
          WREN => wr_en                  -- 1-bit input write enable
       );

    -- Output assignation
    aEmpty <= aEmpty_reg;
    aFull <= aFull_reg;
    Empty <= Empty_reg;
    Full <= Full_reg;
    ReadError <= rd_Err;
    WriteError <= wr_Err;
    ReadCount<= rd_Count_reg;
    WriteCount <= wr_Count_reg;
    
end fifo_arch;