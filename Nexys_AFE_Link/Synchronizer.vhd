----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 17.05.2023 15:27:42
-- Design Name: Synchronizer Build
-- Module Name: Synchronizer - sync_arch
-- Project Name: DAPHNE V1 - SYNCHRONIZER
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Creates a n-stages synchronizer to solve metaestability issues
-- Dependencies: 
-- Relies on 'FDRE_Module.vhd' file
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Uses Xilinx Template, all credits to the creator
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

entity Synchronizer is
    Generic (
        SYNC_STAGES : integer := 2; -- Integer value for number of synchronizing registers, must be 2 or higher
        --pipeline_stages : integer := 1; -- High-fanout nets, Integer value for number of registers on the output
                                        --  of the synchronizer for the purpose of improving performance. 
        INIT : std_ulogic := '0'
    );
    Port ( 
        clk : in std_logic; -- The clock used by these registers, referring to its clock domain
        rst : in std_logic; -- Synchronous reset of the registers
        async_i : in std_logic; -- Asynchronous input of the module
        sync_o : out std_logic -- Synchronized output of the module
    );
end Synchronizer;

architecture sync_arch of Synchronizer is

-- Type D Flip-Flop Component instantiation
component FDRE_Module is
    Generic (
        init_val : bit := '0'
    );
    Port ( 
        d_i : in std_logic;
        rst : in std_logic;
        clk_en : in std_logic;
        clk : in std_logic;
        d_o : out std_logic
    );
end component;

-- Aux signals to interconnect the Flip-Flops
signal ff_Line : std_logic_vector((SYNC_STAGES - 2) downto 0) := (others => INIT);
attribute ASYNC_REG : string;
attribute ASYNC_REG of ff_Line : signal is "TRUE";

begin

    -- Flip Flop chain generation
-------------------------------------------------------------------------------------------------------------------
    FLIP_FLOP_CHAIN : for i in (SYNC_STAGES - 1) downto 0 generate
        -- First Flip Flop
        FIRST_FF: if (i = 0) generate
        attribute ASYNC_REG of FIRST_FLIP_FLOP : label is "TRUE"; 
        begin
            FIRST_FLIP_FLOP : FDRE_Module
            port map (
                d_i => async_i,
                rst => rst,
                clk_en => '1',
                clk => clk,
                d_o => ff_Line(0)
            );
        end generate FIRST_FF;
        
        -- Middle Flip Flops
        MID_FF: if ((i > 0) AND (i < (SYNC_STAGES - 1))) generate
        attribute ASYNC_REG of MID_FLIP_FLOPS : label is "TRUE"; 
        begin
            MID_FLIP_FLOPS : FDRE_Module
            port map (
                d_i => ff_Line(i-1),
                rst => rst,
                clk_en => '1',
                clk => clk,
                d_o => ff_Line(i)
            );
        end generate MID_FF;
        
        -- Last Flip Flop
        LAST_FF: if (i = (SYNC_STAGES - 1)) generate
        attribute ASYNC_REG of LAST_FLIP_FLOP : label is "TRUE"; 
        begin
            LAST_FLIP_FLOP : FDRE_Module
            port map (
                d_i => ff_Line(i-1),
                rst => rst,
                clk_en => '1',
                clk => clk,
                d_o => sync_o
            );
        end generate LAST_FF;
    end generate FLIP_FLOP_CHAIN;

-- Vivado Xilinx Template
-------------------------------------------------------------------------------------------------------------------
--process(<clk>)
--   begin
--    if(<clk>'event and <clk>='1')then
--       sreg <= sreg(SYNC_STAGES-2 downto 0) & <async_in>;  -- Async Input <async_in>
--    end if;
--   end process;

--   no_pipeline : if PIPELINE_STAGES = 0 generate
--   begin
--      <sync_out> <= sreg(SYNC_STAGES-1);
--   end generate;

--   one_pipeline : if PIPELINE_STAGES = 1 generate
--   begin
--    process(<clk>)
--    begin
--      if(<clk>'event and <clk>='1') then
--        <sync_out> <= sreg(SYNC_STAGES-1);
--      end if;
--    end process;
--   end generate;

--   multiple_pipeline : if PIPELINE_STAGES > 1 generate
--   begin
--    process(<clk>)
--    begin
--      if(<clk>'event and <clk>='1') then
--        sreg_pipe <= sreg_pipe(PIPELINE_STAGES-2 downto 0) & sreg(SYNC_STAGES-1);
--      end if;
--    end process;
--    <sync_out> <= sreg_pipe(PIPELINE_STAGES-1);
--   end generate;

end sync_arch;