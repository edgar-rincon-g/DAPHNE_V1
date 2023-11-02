----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
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
        dt_width        : integer := 4;
        pointersLength  : integer := 14;
        fwft            : boolean := FALSE;                                         -- First Word Fall Through
        aEmpty_Off      : bit_vector := X"0080";                                    -- Almost Empty Offset
        aFull_Off       : bit_vector := X"0080"                                     -- Almost Full Offset
    );
    Port ( 
        -- Module Inputs
    --------------------------------------------------------------------------------------------------------------------------------------------------------
        rst             : in std_logic;                                             -- Reset for the FIFO
        d_i             : in std_logic_vector((dt_width - 1) downto 0);             -- Parallel Data Input for the FIFO
        rd_en           : in std_logic;                                             -- Read Enable for the FIFO
        wr_en           : in std_logic;                                             -- Write Enable for the FIFO
        rd_clk          : in std_logic;                                             -- Read Clock for the FIFO
        wr_clk          : in std_logic;                                             -- Write Clock for the FIFO
        
        -- Module Outputs
    --------------------------------------------------------------------------------------------------------------------------------------------------------
        aEmpty          : out std_logic;                                            -- Almost Empty Flag of the FIFO
        aFull           : out std_logic;                                            -- Almost Full Flag of the FIFO
        Empty           : out std_logic;                                            -- Empty Flag of the FIFO
        Full            : out std_logic;                                            -- Full Flag of the FIFO
        WriteError      : out std_logic;                                            -- Write Error Flag of the FIFO
        ReadError       : out std_logic;                                            -- Read Error Flag of the FIFO
        WriteCount      : out std_logic_vector((pointersLength - 1) downto 0);      -- Write Pointer
        ReadCount       : out std_logic_vector((pointersLength - 1) downto 0);      -- Read pointer
        d_o             : out std_logic_vector((dt_width - 1) downto 0)             -- Parallel Data Output of the FIFO
    );
end FIFO_Module;

architecture fifo_arch of FIFO_Module is

-- Auxiliary registers to connect FIFO with Module Outputs
------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal aEmpty_reg       : std_logic;
signal aFull_reg        : std_logic;
signal Empty_reg        : std_logic;
signal Full_reg         : std_logic;
signal rd_Err           : std_logic;
signal wr_Err           : std_logic;
signal rd_Count_reg     : std_logic_vector((pointersLength - 1) downto 0);
signal wr_Count_reg     : std_logic_vector((pointersLength - 1) downto 0);
    
begin
    
    -- DUALCLOCK FIFO Instantiation
------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
    FIFO_DUALCLOCK_MACRO_inst : FIFO_DUALCLOCK_MACRO
       generic map (
          DEVICE                        => "7SERIES",               -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
          ALMOST_FULL_OFFSET            => aFull_Off,               -- Sets almost full threshold
          ALMOST_EMPTY_OFFSET           => aEmpty_Off,              -- Sets the almost empty threshold
          DATA_WIDTH                    => dt_width,                -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
          FIFO_SIZE                     => "36Kb",                  -- Target BRAM, "18Kb" or "36Kb" 
          FIRST_WORD_FALL_THROUGH       => fwft                     -- Sets the FIFO FWFT to TRUE or FALSE
       ) 
       port map (
          ALMOSTEMPTY                   => aEmpty_reg,              -- 1-bit output almost empty
          ALMOSTFULL                    => aFull_reg,               -- 1-bit output almost full
          DO                            => d_o,                     -- Output data, width defined by DATA_WIDTH parameter
          EMPTY                         => Empty_reg,               -- 1-bit output empty
          FULL                          => Full_reg,                -- 1-bit output full
          RDCOUNT                       => rd_Count_reg,            -- Output read count, width determined by FIFO depth
          RDERR                         => rd_Err,                  -- 1-bit output read error
          WRCOUNT                       => wr_Count_reg,            -- Output write count, width determined by FIFO depth
          WRERR                         => wr_Err,                  -- 1-bit output write error
          DI                            => d_i,                     -- Input data, width defined by DATA_WIDTH parameter
          RDCLK                         => rd_clk,                  -- 1-bit input read clock
          RDEN                          => rd_en,                   -- 1-bit input read enable
          RST                           => rst,                     -- 1-bit input reset
          WRCLK                         => wr_clk,                  -- 1-bit input write clock
          WREN                          => wr_en                    -- 1-bit input write enable
       );

    -- Output assignation
------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
    aEmpty                  <= aEmpty_reg;
    aFull                   <= aFull_reg;
    Empty                   <= Empty_reg;
    Full                    <= Full_reg;
    ReadError               <= rd_Err;
    WriteError              <= wr_Err;
    ReadCount               <= rd_Count_reg;
    WriteCount              <= wr_Count_reg;
    
end fifo_arch;