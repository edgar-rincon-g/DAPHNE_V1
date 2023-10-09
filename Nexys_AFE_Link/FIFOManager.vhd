----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel ?vila G?mez
-- 
-- Create Date: 16.05.2023 15:13:33
-- Design Name: FIFO Manager Build
-- Module Name: FIFOManager - fifoMan_arch
-- Project Name: DAPHNE V1 - MEMORY MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Instantiates a FIFO Memory and the needed logic to reset its flags
-- Dependencies: 
-- Relies on 'FIFO_Module.vhd', 'ResetMemory_Module.vhd', 'wrFSM_Module.vhd'  
-- and 'rdFSM_Module-vhd' files
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

entity FIFOManager is
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ : real := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ : real := 100.0;
        -- FIFO Important Parameters
        data_width : integer := 14;
        fifoPointersLength : integer := 11;
        AEMPTY_OFF : bit_vector := X"0080";
        AFULL_OFF : bit_vector := X"0080" 
    );
    Port ( 
        d_i : in std_logic_vector((data_width - 1) downto 0);
        dt_rdy : in std_logic;
        wr_enable : in std_logic;
        rd_enable : in std_logic;
        wr_clk : in std_logic;
        rd_clk : in std_logic;
        rst : in std_logic;
        --mem_rst: in std_logic;     
        a_empty : out std_logic;
        a_full : out std_logic;
        empty : out std_logic;
        full : out std_logic; 
        wr_err : out std_logic;
        rd_err : out std_logic;
        data_rd_valid : out std_logic;
        wr_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        rd_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        d_o : out std_logic_vector((data_width - 1) downto 0)       
    );
end FIFOManager;

architecture fifoMan_arch of FIFOManager is

-- Reset Component Instantiation
component ResetMemory_Module is
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ : real := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ : real := 100.0
    );
    Port ( 
        wr_clk : in std_logic;
        rd_clk : in std_logic;
        rst : in std_logic;
        --mem_rst : in std_logic;
        rst_o : out std_logic;
        wr_en_rst_ctrl : out std_logic;
        rd_en_rst_ctrl : out std_logic 
    );
end component;

-- FIFO Component instantiation
component FIFO_Module is
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
end component FIFO_Module;

-- Write Enable FIFO Component instantiation
component wrFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        fifo_aFull : in std_logic; -- Almost Full flag from FIFO to know when to "stop" writing
        ext_wr_en : in std_logic; -- External write enable to control FSM
        fifo_wr_err : in std_logic; -- If FIFO goes into error state FSM shouldn't allow write operations
        dt_rdy : in std_logic; -- When data is ready to be wirtten to FIFO
        wr_en : out std_logic; -- Writing the FIFO is enabled or disabled
        wr_err : out std_logic -- Write error state was reached
    );
end component wrFSM_Module;

-- Read Enable FIFO Component instantiation
component rdFSM_Module is
    Port ( 
        clk_fsm : in std_logic;
        rst : in std_logic;
        fifo_Empty : in std_logic; -- Empty flag from FIFO stating that another read operation will damage FIFO
        ext_rd_en : in std_logic; -- External write enable to control FSM
        fifo_rd_err : in std_logic; -- If FIFO goes into error state FSM should not allow read operations
        rd_en : out std_logic; -- Reading the FIFO is enabled or disabled
        rd_err : out std_logic -- Read error state was reached
    );
end component rdFSM_Module;

-- Aux signals to connect the FIFO and reset its flags in a proper manner
signal initRst: std_logic := '0';
signal resetCounter: std_logic_vector(2 downto 0) := "000";
signal automaticReset: std_logic := '0';
signal wrEnCounter: std_logic_vector(1 downto 0) := "00";
signal rdEnCounter: std_logic_vector(1 downto 0) := "00";
signal rst_reg: std_logic := '0';
signal wr_en_aux: std_logic := '0';
signal rd_en_aux: std_logic := '0';
signal wr_en_rst_ctrl: std_logic := '0';
signal rd_en_rst_ctrl: std_logic := '0';
signal a_full_reg: std_logic := '0';
signal wr_en_reg: std_logic := '0';
signal wr_err_reg: std_logic := '0';
signal empty_reg: std_logic := '0';
signal rd_err_reg: std_logic := '0';
signal rd_en_reg: std_logic := '0';
begin

    -- Reset Component Creation
---------------------------------------------------------------------------------------------------------------    
    RESET_COM : ResetMemory_Module
        generic map (
            -- Frequency of the Write Clock (MHz)
            WR_CLK_FREQ => WR_CLK_FREQ,
            -- Frequency of the Read Clock (MHz)
            RD_CLK_FREQ => RD_CLK_FREQ
        )
        port map ( 
            wr_clk => wr_clk,
            rd_clk => rD_clk,
            rst => rst,
            --mem_rst => mem_rst,
            rst_o => rst_reg,
            wr_en_rst_ctrl => wr_en_rst_ctrl,
            rd_en_rst_ctrl => rd_en_rst_ctrl
        );
    
    -- Write Enable signal is asserted after Rst Cycle is stable for timing reasons, refer to UG473
    wr_en_aux <= wr_en_rst_ctrl AND wr_enable;
    -- Write Enable signal is asserted after Rst Cycle is stable for timing reasons, refer to UG473
    rd_en_aux <= rd_en_rst_ctrl AND rd_enable;
    
    -- FIFO Memory creation
---------------------------------------------------------------------------------------------------------------
    FIFO_MEM : FIFO_Module
        generic map (
            dt_width => data_width,
            pointersLength => fifoPointersLength,
            fwft => FALSE,
            aEmpty_Off => AEMPTY_OFF,
            aFull_Off => AFULL_OFF
        )
        port map ( 
            rst => rst_reg,
            d_i => d_i,
            rd_en => rd_en_reg,
            wr_en => wr_en_reg,
            rd_clk => rd_clk,
            wr_clk => wr_clk,
            aEmpty => a_empty,
            aFull => a_full_reg,
            Empty => empty_reg,
            Full => full,
            WriteError => wr_err_reg,
            ReadError => rd_err_reg,
            WriteCount => wr_count,
            ReadCount => rd_count,
            d_o => d_o
        );

    -- Writing FSM creation
---------------------------------------------------------------------------------------------------------------
    WRITE_FSM : wrFSM_Module
        port map (
            clk_fsm => wr_clk,
            rst => rst,
            fifo_aFull => a_full_reg,
            ext_wr_en => wr_en_aux,
            fifo_wr_err => wr_err_reg,
            dt_rdy => dt_rdy,
            wr_en => wr_en_reg,
            wr_err => wr_err
        );

    -- Reading FSM creation
---------------------------------------------------------------------------------------------------------------
    READ_FSM : rdFSM_Module
        port map ( 
            clk_fsm => rd_clk,
            rst => rst,
            fifo_Empty => empty_reg,
            ext_rd_en => rd_en_aux,
            fifo_rd_err => rd_err_reg,
            rd_en => rd_en_reg,
            rd_err => rd_err
        );
    
    -- Memory Module Outputs
    a_full <= a_full_reg;
    empty <= empty_reg;
    data_rd_valid <= rd_en_reg;
    
end fifoMan_arch;