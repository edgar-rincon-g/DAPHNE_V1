----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Ávila Gómez
-- 
-- Create Date: 17.05.2023 11:13:54
-- Design Name: FIFO Resetter
-- Module Name: ResetMemory_Module - rstMem_arch
-- Project Name: DAPHNE V1 - MEMORY MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Creates a Module that generates the process needed to reset FIFOs flags
-- and other important matters such as WREN and RDEN assertion timings
-- Dependencies: 
-- Uses the 'Synchronizer.vhd' file to synchronize in CDC
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Must be updated to resolve possible CDC timing issues between RDCLK and WRCLK
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ResetMemory_Module is
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
end ResetMemory_Module;

architecture rstMem_arch of ResetMemory_Module is

-- Since there is one input of the rd_ctrl process that is generated form a different Clock Domain, CDC must be done
-- Synchronizer instantiation is therefore done
-- Synchronizer Component Instantiation
component Synchronizer is
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
end component;

-- Aux signals to connect the Reset processes and reset FIFOs flags in a proper manner
signal initRst: std_logic := '0';
-- ASYNC_REG Property modification, for testing purposes, comment back if needed or really did not work
----------------------------------------------------------------------------------------------------------------------
--attribute ASYNC_REG : string;
--attribute ASYNC_REG of initRst : signal is "TRUE";
----------------------------------------------------------------------------------------------------------------------
signal synchInitRst: std_logic := '0';
signal resetCounter: std_logic_vector(2 downto 0) := "000";
signal automaticReset: std_logic := '0';
signal wrEnCounter: std_logic_vector(1 downto 0) := "00";
signal wr_en_rst_ctrl_reg: std_logic := '0';
signal rdEnCounter: std_logic_vector(1 downto 0) := "00";
signal rd_en_rst_ctrl_reg: std_logic := '0';
--signal wrEndProc: std_logic := '0';
----------------------------------------------------------------------------------------------------------------------
-- Read Clock Flags reinitialization
signal resetCounter_rd: std_logic_vector(2 downto 0) := "000";
signal initRst_rd: std_logic := '0';
signal automaticReset_rd: std_logic := '0';
-- Write Clock Flags reinitialization
signal resetCounter_wr: std_logic_vector(2 downto 0) := "000";
signal initRst_wr: std_logic := '0';
signal automaticReset_wr: std_logic := '0';

begin

-------------------------------------------------------------------------------------------------------------------
    -- Comparate the clock frequencies in order to define the reset structure to be held
    RST_GEN_WR : if (WR_CLK_FREQ < RD_CLK_FREQ) generate
        -- Write Clock is slower, therefore counting the amount of time needed with this clock is enough
        
        -- Synchronizer creation
    -------------------------------------------------------------------------------------------------------------------    
        SYNCH_COM : Synchronizer 
            generic map (
                SYNC_STAGES => 6,
                INIT => '0'
            )
            port map ( 
                clk => rd_clk,
                rst => rst,
                async_i => initRst,
                sync_o => synchInitRst
            );
        
        -- Process to reset FIFOs Flags
    -------------------------------------------------------------------------------------------------------------------
        autom_reset: process(wr_clk, rst, initRst, resetCounter) --mem_rst
        begin
            if rising_edge(wr_clk) then 
                if (rst = '1') then
                    initRst <= '0'; -- Synchronous reset of the system
                    resetCounter <= "000";
                    automaticReset <= '0';
                else
                    if (initRst = '0') then-- OR mem_rst = '1') then
                        -- The process must be done either when booting up or when there is a soft reset
                        if (resetCounter = "101") then
                            resetCounter <= "000";
                            initRst <= '1'; -- Automatic Initial Reset has been finished
                            automaticReset <= '0';
                        else
                            resetCounter <= std_logic_vector(unsigned(resetCounter) + 1);
                            initRst <= '0'; -- Automatic Initial Reset still in progress
                            automaticReset <= '1';
                        end if;
                    end if; 
                end if;
            end if;
        end process autom_reset;
    
        -- Process to hold WREN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        wr_ctrl: process(wr_clk, rst, initRst, wrEnCounter, wr_en_rst_ctrl_reg)
        begin
            if rising_edge(wr_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    wrEnCounter <= "00";
                    wr_en_rst_ctrl_reg <= '0';
                else
                    -- Aux write enable control process            
                    if (initRst = '1' AND wr_en_rst_ctrl_reg = '0') then
                        -- According to UG473, WREN should be held LOW for two WRCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (wrEnCounter = "10") then
                            wrEnCounter <= "00";
                            wr_en_rst_ctrl_reg <= '1'; -- Write enable input is valid
                        else
                            wrEnCounter <= std_logic_vector(unsigned(wrEnCounter) + 1);
                            wr_en_rst_ctrl_reg <= '0'; -- Write enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process wr_ctrl;
    
        -- Process to hold RDEN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        rd_ctrl: process(rd_clk, rst, synchInitRst, rdEnCounter, rd_en_rst_ctrl_reg)
        begin
            if rising_edge(rd_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    rdEnCounter <= "00";
                    rd_en_rst_ctrl_reg <= '0';
                else
                    -- Aux read enable control process            
                    if (synchInitRst = '1' AND rd_en_rst_ctrl_reg = '0') then
                        -- According to UG473, RDEN should be held LOW for two RDCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (rdEnCounter = "10") then
                            rdEnCounter <= "00";
                            rd_en_rst_ctrl_reg <= '1'; -- Read enable input is valid
                        else
                            rdEnCounter <= std_logic_vector(unsigned(rdEnCounter) + 1);
                            rd_en_rst_ctrl_reg <= '0'; -- Read enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process rd_ctrl;
    
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------
        -- Reset Enable Output
        rst_o <= automaticReset;
        -- Write Enable Output
        wr_en_rst_ctrl <= wr_en_rst_ctrl_reg;
        -- Read Enable Output
        rd_en_rst_ctrl <= rd_en_rst_ctrl_reg;
    end generate RST_GEN_WR;
    
-------------------------------------------------------------------------------------------------------------------
    -- Comparate the clock frequencies in order to define the reset structure to be held
    RST_GEN_RD : if (WR_CLK_FREQ > RD_CLK_FREQ) generate
        -- Write Clock is faster, therefore to reset the flags we must use the Read Clock since it is the slowest one
        
        -- Synchronizer creation
    -------------------------------------------------------------------------------------------------------------------    
        SYNCH_COM : Synchronizer 
            generic map (
                SYNC_STAGES => 6,
                INIT => '0'
            )
            port map ( 
                clk => wr_clk,
                rst => rst,
                async_i => initRst,
                sync_o => synchInitRst
            );
        
        -- Process to reset FIFOs Flags
    -------------------------------------------------------------------------------------------------------------------
        autom_reset: process(rd_clk, rst, initRst, resetCounter) --mem_rst
        begin
            if rising_edge(rd_clk) then 
                if (rst = '1') then
                    initRst <= '0'; -- Synchronous reset of the system
                    resetCounter <= "000";
                    automaticReset <= '0';
                else
                    if (initRst = '0') then-- OR mem_rst = '1') then
                        -- The process must be done either when booting up or when there is a soft reset
                        if (resetCounter = "101") then
                            resetCounter <= "000";
                            initRst <= '1'; -- Automatic Initial Reset has been finished
                            automaticReset <= '0';
                        else
                            resetCounter <= std_logic_vector(unsigned(resetCounter) + 1);
                            initRst <= '0'; -- Automatic Initial Reset still in progress
                            automaticReset <= '1';
                        end if;
                    end if; 
                end if;
            end if;
        end process autom_reset;
    
        -- Process to hold WREN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        wr_ctrl: process(wr_clk, rst, synchInitRst, wrEnCounter, wr_en_rst_ctrl_reg)
        begin
            if rising_edge(wr_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    wrEnCounter <= "00";
                    wr_en_rst_ctrl_reg <= '0';
                else
                    -- Aux write enable control process            
                    if (synchInitRst = '1' AND wr_en_rst_ctrl_reg = '0') then
                        -- According to UG473, WREN should be held LOW for two WRCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (wrEnCounter = "10") then
                            wrEnCounter <= "00";
                            wr_en_rst_ctrl_reg <= '1'; -- Write enable input is valid
                        else
                            wrEnCounter <= std_logic_vector(unsigned(wrEnCounter) + 1);
                            wr_en_rst_ctrl_reg <= '0'; -- Write enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process wr_ctrl;
    
        -- Process to hold RDEN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        rd_ctrl: process(rd_clk, rst, initRst, rdEnCounter, rd_en_rst_ctrl_reg)
        begin
            if rising_edge(rd_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    rdEnCounter <= "00";
                    rd_en_rst_ctrl_reg <= '0';
                else
                    -- Aux read enable control process            
                    if (initRst = '1' AND rd_en_rst_ctrl_reg = '0') then
                        -- According to UG473, RDEN should be held LOW for two RDCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (rdEnCounter = "10") then
                            rdEnCounter <= "00";
                            rd_en_rst_ctrl_reg <= '1'; -- Read enable input is valid
                        else
                            rdEnCounter <= std_logic_vector(unsigned(rdEnCounter) + 1);
                            rd_en_rst_ctrl_reg <= '0'; -- Read enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process rd_ctrl;
    
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------
        -- Reset Enable Output
        rst_o <= automaticReset;
        -- Write Enable Output
        wr_en_rst_ctrl <= wr_en_rst_ctrl_reg;
        -- Read Enable Output
        rd_en_rst_ctrl <= rd_en_rst_ctrl_reg;
    end generate RST_GEN_RD;
    
-------------------------------------------------------------------------------------------------------------------
    -- Comparate the clock frequencies in order to define the reset structure to be held
    RST_GEN_BOTH : if (WR_CLK_FREQ = RD_CLK_FREQ) generate
        -- The clocks have the same speed, therefore to reset the flags any clock can be used, and there are no synchronizers
        -- for CDC (not needed), There must be some kind of logic to implement the phase differences between clocks, cause although
        -- they have the same frequency, they are asynchronous, therefore one clock may reach 5 cycles before the other
        
        -- Process to reset FIFOs Flags
    -------------------------------------------------------------------------------------------------------------------
        autom_reset_rd: process(rd_clk, rst, initRst_rd, resetCounter_rd) --mem_rst
        begin
            if rising_edge(rd_clk) then 
                if (rst = '1') then
                    initRst_rd <= '0'; -- Synchronous reset of the system
                    resetCounter_rd <= "000";
                    automaticReset_rd <= '0';
                else
                    if (initRst_rd = '0') then-- OR mem_rst = '1') then
                        -- The process must be done either when booting up or when there is a soft reset
                        if (resetCounter = "101") then
                            resetCounter_rd <= "000";
                            initRst_rd <= '1'; -- Automatic Initial Reset has been finished
                            automaticReset_rd <= '0';
                        else
                            resetCounter_rd <= std_logic_vector(unsigned(resetCounter) + 1);
                            initRst_rd <= '0'; -- Automatic Initial Reset still in progress
                            automaticReset_rd <= '1';
                        end if;
                    end if; 
                end if;
            end if;
        end process autom_reset_rd;
        
        autom_reset_wr: process(rd_clk, rst, initRst_wr, resetCounter_wr) --mem_rst
        begin
            if rising_edge(rd_clk) then 
                if (rst = '1') then
                    initRst_wr <= '0'; -- Synchronous reset of the system
                    resetCounter_wr <= "000";
                    automaticReset_wr <= '0';
                else
                    if (initRst_wr = '0') then-- OR mem_rst = '1') then
                        -- The process must be done either when booting up or when there is a soft reset
                        if (resetCounter_wr = "101") then
                            resetCounter_wr <= "000";
                            initRst_wr <= '1'; -- Automatic Initial Reset has been finished
                            automaticReset_wr <= '0';
                        else
                            resetCounter_wr <= std_logic_vector(unsigned(resetCounter) + 1);
                            initRst_wr <= '0'; -- Automatic Initial Reset still in progress
                            automaticReset_wr <= '1';
                        end if;
                    end if; 
                end if;
            end if;
        end process autom_reset_wr;
        
    -------------------------------------------------------------------------------------------------------------------
        -- Change the reset signal according to each clock
        automaticReset <= automaticReset_wr OR automaticReset_rd;
    
        -- Process to hold WREN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        wr_ctrl: process(wr_clk, rst, initRst_wr, wrEnCounter, wr_en_rst_ctrl_reg)
        begin
            if rising_edge(wr_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    wrEnCounter <= "00";
                    wr_en_rst_ctrl_reg <= '0';
                else
                    -- Aux write enable control process            
                    if (initRst_wr = '1' AND wr_en_rst_ctrl_reg = '0') then
                        -- According to UG473, WREN should be held LOW for two WRCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (wrEnCounter = "10") then
                            wrEnCounter <= "00";
                            wr_en_rst_ctrl_reg <= '1'; -- Write enable input is valid
                        else
                            wrEnCounter <= std_logic_vector(unsigned(wrEnCounter) + 1);
                            wr_en_rst_ctrl_reg <= '0'; -- Write enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process wr_ctrl;
    
        -- Process to hold RDEN Low, timing concerns
    -------------------------------------------------------------------------------------------------------------------
        rd_ctrl: process(rd_clk, rst, initRst_rd, rdEnCounter, rd_en_rst_ctrl_reg)
        begin
            if rising_edge(rd_clk) then
                if (rst = '1') then -- OR mem_rst = '1') then
                    rdEnCounter <= "00";
                    rd_en_rst_ctrl_reg <= '0';
                else
                    -- Aux read enable control process            
                    if (initRst_rd = '1' AND rd_en_rst_ctrl_reg = '0') then
                        -- According to UG473, RDEN should be held LOW for two RDCLK cycles 
                        -- after the Reset is deasserted to guarantee timing
                        if (rdEnCounter = "10") then
                            rdEnCounter <= "00";
                            rd_en_rst_ctrl_reg <= '1'; -- Read enable input is valid
                        else
                            rdEnCounter <= std_logic_vector(unsigned(rdEnCounter) + 1);
                            rd_en_rst_ctrl_reg <= '0'; -- Read enable input is not valid
                        end if;
                    end if;
                end if;
            end if;
        end process rd_ctrl;
    
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------
        -- Reset Enable Output
        rst_o <= automaticReset;
        -- Write Enable Output
        wr_en_rst_ctrl <= wr_en_rst_ctrl_reg;
        -- Read Enable Output
        rd_en_rst_ctrl <= rd_en_rst_ctrl_reg;        
    end generate RST_GEN_BOTH;
    
end rstMem_arch;