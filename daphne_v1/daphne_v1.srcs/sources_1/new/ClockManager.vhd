----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel �vila G�mez
-- 
-- Create Date: 08.05.2023 11:58:32
-- Design Name: Clock Manager Build
-- Module Name: ClockManager - clkMod_arch
-- Project Name: DAPHNE V1 - ACQUISITION MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Creates the module that manages all the clock signals coming from AFE5808A
-- Dependencies: 
-- Relies on 'PLL_Module.vhd' and 'ClockMUX.vhd' files
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
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ClockManager is
    Port ( 
        clk_sys             : in std_logic;                     -- System CLock 100 MHz
        clk_in              : in std_logic;                     -- Input Clock To the PLL
        rst                 : in std_logic;                     -- Async Reset
        phase_sel           : in std_logic_vector(1 downto 0);  -- Selected Phase Coming From Data Acquisition Module
        pll_locked          : out std_logic;                    -- PLL Locked
        clk_out             : out std_logic;                    -- Recovered Clock Routed to the rest of the FPGA
        clk_div_out         : out std_logic                     -- Divided Version of clk_out (By 7)
    );
end ClockManager;

architecture clkMod_arch of ClockManager is

-- PLL Component instantiation
-----------------------------------------------------------------------------------------------------------------------------------------------------------
component PLL_Module
    generic (
        mult_val        : integer   := 5;                   -- Multiplication Value for the Frequency
        div_val         : integer   := 1;                   -- Division Value for the Frequency
        o_div_val       : integer   := 1;                   -- Divided Value for the Output Frequency
        period          : real      := 10.000               -- Period of the Input Clock
    );
    port (
        in_clk          : in std_logic;                     -- Input Clock 
        reset           : in std_logic;                     -- Async Reset
        clk_phase       : out std_logic_vector(2 downto 0); -- Clock Phases Generated
        clk_div_phase   : out std_logic_vector(2 downto 0); -- Divided Versions of clk_phase
        lckd            : out std_logic                     -- PLL Locked
    );
end component PLL_Module;

-- MUX Component instantiation
-----------------------------------------------------------------------------------------------------------------------------------------------------------
component ClockMUX
    port (
        phase_vec       : in std_logic_vector(2 downto 0);  -- Array of Clocks to MUX
        mux_ctrl        : in std_logic_vector(1 downto 0);  -- Control of the MUX
        clk             : out std_logic                     -- Selected Clock
    );
end component ClockMUX;

-- Aux signal to interconnect the components
-----------------------------------------------------------------------------------------------------------------------------------------------------------
signal clk_out_phase        : std_logic_vector(2 downto 0);
signal phase_sel_div        : std_logic_vector(2 downto 0);
signal clk_out_div_phase    : std_logic_vector(2 downto 0);
signal clk_div_aux          : std_logic;
signal rst_aux1             : std_logic;
signal rst_aux2             : std_logic;
signal rst_aux3             : std_logic;
signal rst_aux4             : std_logic;
signal rst_aux5             : std_logic;
signal rst_aux6             : std_logic;
signal rst_pll              : std_logic;

begin

    -- Instantiates the input delay for the reset that enters the pll
-----------------------------------------------------------------------------------------------------------------------------------------------------------
    DELAY_RST : process(clk_sys, rst, rst_aux1, rst_aux2, rst_aux3, rst_aux4, rst_aux5, rst_aux6) 
    begin
        if rising_edge(clk_sys) then
            rst_aux1    <= rst;
            rst_aux2    <= rst_aux1;
            rst_aux3    <= rst_aux2;
            rst_aux4    <= rst_aux3;
            rst_aux5    <= rst_aux4;
            rst_aux6    <= rst_aux5;
            rst_pll     <= rst_aux6;            
        end if;
    end process;

    -- Instantiates the PLL that outputs the different clock phases
-----------------------------------------------------------------------------------------------------------------------------------------------------------
    PLL_COM : PLL_Module
    generic map (
        mult_val        => 3,                   -- 3 DAPHNE, 5 Nexys
        div_val         => 1,
        o_div_val       => 21,                  -- 21 DAPHNE, 35 Nexys
        period          => 2.286                -- 2.286 DAPHNE, 3.571 Nexys
    )
    port map (
        in_clk          => clk_in,
        reset           => rst_pll,
        clk_phase       => clk_out_phase,
        clk_div_phase   => clk_out_div_phase,
        lckd            => pll_locked
    );

    -- Instantiates the MUX that receives the phases from the PLL
-----------------------------------------------------------------------------------------------------------------------------------------------------------
    MUX_CLK_COM : ClockMUX 
    port map (
        phase_vec       => clk_out_phase,
        mux_ctrl        => phase_sel,
        clk             => clk_out
    );

    -- Instantiates the MUX that receives the DIVIDED phases from the PLL
-----------------------------------------------------------------------------------------------------------------------------------------------------------
    MUX_CLK_DIV_COM : ClockMUX
    port map (
        phase_vec       => clk_out_div_phase,
        mux_ctrl        => phase_sel,
        clk             => clk_div_aux
    );

    -- Aux signal of Clock coming from MUX that is read inside this module is connected to output
-----------------------------------------------------------------------------------------------------------------------------------------------------------
    clk_div_out         <= clk_div_aux;
    
    
end clkMod_arch;