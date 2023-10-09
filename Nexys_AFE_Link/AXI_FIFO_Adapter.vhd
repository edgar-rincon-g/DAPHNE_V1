------------------------------------------------------------------------------------
---- Company: Universidad EIA
---- Engineer: Daniel Avila Gomez
---- 
---- Create Date: 09.08.2023 11:04:02
---- Design Name: AXI FIFO Data Bus Adapter
---- Module Name: AXI_FIFO_Adapter - axiFIFO_arch
---- Project Name: Nexys Video Ethernet and AFE Merge
---- Target Devices: XC7A200T-1SBG484C
---- Tool Versions: 2023.1
---- Description: 
---- Creates a module whos elogic separates the 16 bit data bus that is output by the
---- AFE's FIFO and then sends it in 2 bytes through AXI Stream Interface 
---- Dependencies: 
---- Relies on the 'FIFOManager.vhd' module and its dependencies
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity AXI_FIFO_Adapter is
--    Generic (
--        -- Frequency of the Write Clock (MHz)
--        WR_CLK_FREQ : real := 100.0;
--        -- Frequency of the Read Clock (MHz)
--        RD_CLK_FREQ : real := 100.0;
--        -- FIFO Important Parameters
--        data_width : integer := 14;
--        fifoPointersLength : integer := 11;
--        AEMPTY_OFF : bit_vector := X"0080";
--        AFULL_OFF : bit_vector := X"0080" 
--    );
--    Port (
--        d_i : in std_logic_vector((data_width - 1) downto 0);
--        dt_rdy : in std_logic;
--        wr_enable : in std_logic;
--        rd_enable : in std_logic;
--        full_read : in std_logic;
--        wr_clk : in std_logic;
--        rd_clk : in std_logic;
--        m_axi_clk : in std_logic;
--        rst : in std_logic;
--        --mem_rst: in std_logic;     
--        a_empty : out std_logic;
--        a_full : out std_logic;
--        empty : out std_logic;
--        full : out std_logic; 
--        wr_err : out std_logic;
--        rd_err : out std_logic;
--        wr_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
--        rd_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
--        m_axi_fifo_tdata : out std_logic_vector((data_width/2) downto 0);
--        m_axi_fifo_tvalid : out std_logic;
--        m_axi_fifo_tready : in std_logic;
--        m_axi_fifo_tlast : out std_logic;
--        m_axi_fifo_tuser : out std_logic 
--    );
--end AXI_FIFO_Adapter;

--architecture axiFIFO_arch of AXI_FIFO_Adapter is

---- Aux Signals of the module
--signal mem_data_out : std_logic_vector((data_width - 1) downto 0) := (others => '0');
--signal data_valid : std_logic := '0';
--signal m_axi_fifo_tvalid_reg : std_logic := '0';
--signal m_axi_fifo_tlast_reg : std_logic := '0';
--signal m_axi_fifo_tdata_reg : std_logic_vector(7 downto 0) := (others => '0');
--signal d_MSB : std_logic_vector(7 downto 0) := (others => '0');
--signal d_LSB : std_logic_vector(7 downto 0) := (others => '0');
--signal is_last_data : std_logic := '0';
--signal start_axi : std_logic := '0';
--signal start_axi_reg : std_logic := '0';
----signal was_written : std_logic := '0';
----signal empty_reg : std_logic := '0';
----signal write_valid : std_logic := '0';

--type states is (RESET, IDLE, SEND_MSB, SEND_LSB);
--signal State, NextState : states;

---- FIFO Component
--component FIFOManager 
--    Generic (
--        -- Frequency of the Write Clock (MHz)
--        WR_CLK_FREQ : real := 100.0;
--        -- Frequency of the Read Clock (MHz)
--        RD_CLK_FREQ : real := 100.0;
--        -- FIFO Important Parameters
--        data_width : integer := 14;
--        fifoPointersLength : integer := 11;
--        AEMPTY_OFF : bit_vector := X"0080";
--        AFULL_OFF : bit_vector := X"0080" 
--    );
--    Port ( 
--        d_i : in std_logic_vector((data_width - 1) downto 0);
--        dt_rdy : in std_logic;
--        wr_enable : in std_logic;
--        rd_enable : in std_logic;
--        wr_clk : in std_logic;
--        rd_clk : in std_logic;
--        rst : in std_logic;
--        --mem_rst: in std_logic;     
--        a_empty : out std_logic;
--        a_full : out std_logic;
--        empty : out std_logic;
--        full : out std_logic; 
--        wr_err : out std_logic;
--        rd_err : out std_logic;
--        data_rd_valid : out std_logic;
--        wr_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
--        rd_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
--        d_o : out std_logic_vector((data_width - 1) downto 0)       
--    );
--end component FIFOManager;

--begin   
    
---------------------------------------------------------------------------------------------------------------------------------   
--    -- FIFO Component
--    MEMORY_CTRL_COM : FIFOManager
--    generic map (
--        WR_CLK_FREQ => WR_CLK_FREQ,
--        RD_CLK_FREQ => RD_CLK_FREQ,
--        data_width => data_width,
--        fifoPointersLength => fifoPointersLength,
--        AEMPTY_OFF => AEMPTY_OFF,
--        AFULL_OFF => AFULL_OFF 
--    )
--    port map (
--        d_i => d_i,
--        dt_rdy => dt_rdy,
--        wr_enable => wr_enable,
--        rd_enable => rd_enable,
--        wr_clk => wr_clk,
--        rd_clk => rd_clk,
--        rst => rst, 
--        a_empty => a_empty,
--        a_full => a_full,
--        empty => empty,
--        full => full,
--        wr_err => wr_err,
--        rd_err => rd_err,
--        data_rd_valid => data_valid,
--        wr_count => wr_count,
--        rd_count => rd_count,
--        d_o => mem_data_out
--    );
   
---------------------------------------------------------------------------------------------------------------------------------   
--    -- Define both Bytes that compose the output of the FIFO
--    -- Combinatorial assignment
----    d_LSB <= mem_data_out(7 downto 0);
----    d_MSB <= "00" & mem_data_out(13 downto 8);
--    -- Synchronous Assignment
--    FIFO_OUTPUT_REG : process(m_axi_clk, rst, mem_data_out)
--    begin
--        if rising_edge(m_axi_clk) then
--            if (rst = '1') then
--                d_LSB <= X"00";
--                d_MSB <= X"00";
--            else
--                if (start_axi = '1') then
--                    d_LSB <= mem_data_out(7 downto 0);
--                    d_MSB <= "00" & mem_data_out(13 downto 8);
--                else
--                    d_LSB <= X"00";
--                    d_MSB <= X"00";
--                end if;
--            end if;
--        end if;
--    end process FIFO_OUTPUT_REG;

---------------------------------------------------------------------------------------------------------------------------------   
--    -- Finite State Machine to send the data through AXI Stream Interface
--    STATES_MODIFIER_COM : process(m_axi_clk, rst) is
--    begin
--        if rising_edge(m_axi_clk) then
--            if (rst = '1') then
--                State <= RESET;     
--            else
--                State <= NextState;     
--            end if;
--        end if;
--    end process STATES_MODIFIER_COM;
     
--    OUTPUT_CTRL : process(State, d_MSB, d_LSB, is_last_data) is
--    begin
--        case (State) is     
--            when RESET =>
--                m_axi_fifo_tdata_reg <= X"00";
--                m_axi_fifo_tvalid_reg <= '0';
--                m_axi_fifo_tlast_reg <= '0'; 
--            when IDLE =>
--                m_axi_fifo_tdata_reg <= X"00";
--                m_axi_fifo_tvalid_reg <= '0';
--                m_axi_fifo_tlast_reg <= '0';
--            when SEND_MSB =>
--                m_axi_fifo_tdata_reg <= d_MSB;
--                m_axi_fifo_tvalid_reg <= '1';
--                m_axi_fifo_tlast_reg <= '0';
--            when SEND_LSB =>
--                m_axi_fifo_tdata_reg <= d_LSB;
--                m_axi_fifo_tvalid_reg <= '1';
--                if (is_last_data = '1') then
--                    -- Ask if this is the last byte being sent
--                    m_axi_fifo_tlast_reg <= '1';
--                else
--                    -- Keep the signal low
--                    m_axi_fifo_tlast_reg <= '0';
--                end if;
--            when others => 
--                m_axi_fifo_tdata_reg <= X"00";
--                m_axi_fifo_tvalid_reg <= '0';
--                m_axi_fifo_tlast_reg <= '0';
--        end case;
--    end process OUTPUT_CTRL;
     
--    NEXT_STATE_PROC : process(State, start_axi, is_last_data) is
--    begin
--        NextState <= State;     
--        case (State) is
--            when RESET =>
--                NextState <= IDLE;     
--            when IDLE =>
--                -- Start asking/pooling to see if we need to send data, only when the tready signal is HIGH
--                if ((start_axi = '1') AND (m_axi_fifo_tready = '1')) then
--                    NextState <= SEND_MSB;
--                end if;
--            when SEND_MSB =>
--                -- One firstclock cycle to send the Most Significant Byte
--                NextState <= SEND_LSB;
--            when SEND_LSB =>
--                -- One second clock cycle to send the Least Significant Byte
--                -- Ask if there is more data to send
--                if (is_last_data = '0') then
--                    -- Still more data to stream 
--                    NextState <= SEND_MSB;
--                else
--                    -- Process has finished, go back to idle state
--                    NextState <= IDLE;
--                end if;
--            when others =>
--                -- Do nothing
--        end case;
--    end process NEXT_STATE_PROC; 
    
---------------------------------------------------------------------------------------------------------------------------------   
--    -- Control signals to operate the AXI Stream Finite State Machine generator
    
--    -- When does the system start to stream the data? After there is a read operation, also define when to stop it
--    START_AXI_STREAM : process(rd_clk, rst)
--    begin
--        if rising_edge(rd_clk) then
--            if (rst = '1') then
--                start_axi <= '0';
--            else
--                if (data_valid = '1') then
--                    -- Use the real RD_ENABLE signal that the FIFO is using
--                    start_axi <= '1';
--                else
--                    -- Deassert this flag
--                    start_axi <= '0';
--                end if;
--            end if;
--        end if;
--    end process START_AXI_STREAM;
    
--    -- Now, define when does the system send the last stream of data
--    END_AXI_STREAM : process(m_axi_clk, rst)
--    begin
--        if rising_edge(m_axi_clk) then
--            if (rst = '1') then
--                start_axi_reg <= '0';
--            else
--                -- Register the start axi signal
--                start_axi_reg <= start_axi;
--            end if;
--        end if;
--    end process END_AXI_STREAM;   
    
--    -- Combinatorial output defining the change in this register
--    is_last_data <= '1' when ((start_axi_reg = '1') AND (start_axi = '0')) else '0';
    
---------------------------------------------------------------------------------------------------------------------------------      
--    -- Output of the Module Assignation
--    m_axi_fifo_tdata <= m_axi_fifo_tdata_reg;
--    m_axi_fifo_tvalid <= m_axi_fifo_tvalid_reg;
--    m_axi_fifo_tlast <= m_axi_fifo_tlast_reg;
--    m_axi_fifo_tuser <= '0';
    
--end axiFIFO_arch;





----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 09.08.2023 11:04:02
-- Design Name: AXI FIFO Data Bus Adapter
-- Module Name: AXI_FIFO_Adapter - axiFIFO_arch
-- Project Name: Nexys Video Ethernet and AFE Merge
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a module whos elogic separates the 16 bit data bus that is output by the
-- AFE's FIFO and then sends it in 2 bytes through AXI Stream Interface 
-- Dependencies: 
-- Relies on the 'FIFOManager.vhd' module and its dependencies
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity AXI_FIFO_Adapter is
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
--        full_read : in std_logic;
        wr_clk : in std_logic;
        rd_clk : in std_logic;
        m_axi_clk : in std_logic;
        rst : in std_logic;
        --mem_rst: in std_logic;     
        a_empty : out std_logic;
        a_full : out std_logic;
        empty : out std_logic;
        full : out std_logic; 
        wr_err : out std_logic;
        rd_err : out std_logic;
        wr_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        rd_count : out std_logic_vector((fifoPointersLength - 1) downto 0);
        fifo_o : out std_logic_vector(13 downto 0);
        m_axi_fifo_tdata : out std_logic_vector((data_width/2) downto 0);
        m_axi_fifo_tvalid : out std_logic;
        m_axi_fifo_tready : in std_logic;
        m_axi_fifo_tlast : out std_logic;
        m_axi_fifo_tuser : out std_logic 
    );
end AXI_FIFO_Adapter;

architecture axiFIFO_arch of AXI_FIFO_Adapter is

-- Aux Signals of the module
signal mem_data_out : std_logic_vector((data_width - 1) downto 0) := (others => '0');
signal data_valid : std_logic := '0';
signal m_axi_fifo_tvalid_reg : std_logic := '0';
signal m_axi_fifo_tlast_reg : std_logic := '0';
signal m_axi_fifo_tdata_reg : std_logic_vector(7 downto 0) := (others => '0');
signal d_MSB : std_logic_vector(7 downto 0) := (others => '0');
signal d_LSB : std_logic_vector(7 downto 0) := (others => '0');
signal is_last_data : std_logic := '0';
signal start_axi : std_logic := '0';
signal start_axi_reg : std_logic := '0';
--signal was_written : std_logic := '0';
--signal empty_reg : std_logic := '0';
--signal write_valid : std_logic := '0';

type states is (RESET, IDLE, SEND_MSB, SEND_LSB);
signal State, NextState : states;

-- FIFO Component
component FIFOManager 
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
end component FIFOManager;

begin   
    
-------------------------------------------------------------------------------------------------------------------------------   
    -- FIFO Component
    MEMORY_CTRL_COM : FIFOManager
    generic map (
        WR_CLK_FREQ => WR_CLK_FREQ,
        RD_CLK_FREQ => RD_CLK_FREQ,
        data_width => data_width,
        fifoPointersLength => fifoPointersLength,
        AEMPTY_OFF => AEMPTY_OFF,
        AFULL_OFF => AFULL_OFF 
    )
    port map (
        d_i => d_i,
        dt_rdy => dt_rdy,
        wr_enable => wr_enable,
        rd_enable => rd_enable,
        wr_clk => wr_clk,
        rd_clk => rd_clk,
        rst => rst, 
        a_empty => a_empty,
        a_full => a_full,
        empty => empty,
        full => full,
        wr_err => wr_err,
        rd_err => rd_err,
        data_rd_valid => data_valid,
        wr_count => wr_count,
        rd_count => rd_count,
        d_o => mem_data_out
    );
   
-------------------------------------------------------------------------------------------------------------------------------   
    -- Define both Bytes that compose the output of the FIFO
    -- Combinatorial assignment
--    d_LSB <= mem_data_out(7 downto 0);
--    d_MSB <= "00" & mem_data_out(13 downto 8);
    -- Synchronous Assignment
    FIFO_OUTPUT_REG : process(m_axi_clk, rst, mem_data_out)
    begin
        if rising_edge(m_axi_clk) then
            if (rst = '1') then
                d_LSB <= X"00";
                d_MSB <= X"00";
            else
                if (start_axi = '1') then
                    d_LSB <= mem_data_out(7 downto 0);
                    d_MSB <= "00" & mem_data_out(13 downto 8);
                else
                    d_LSB <= X"00";
                    d_MSB <= X"00";
                end if;
            end if;
        end if;
    end process FIFO_OUTPUT_REG;

-------------------------------------------------------------------------------------------------------------------------------   
    -- Finite State Machine to send the data through AXI Stream Interface
    STATES_MODIFIER_COM : process(m_axi_clk, rst) is
    begin
        if rising_edge(m_axi_clk) then
            if (rst = '1') then
                State <= RESET;     
            else
                State <= NextState;     
            end if;
        end if;
    end process STATES_MODIFIER_COM;
     
    OUTPUT_CTRL : process(State, d_MSB, d_LSB, is_last_data) is
    begin
        case (State) is     
            when RESET =>
                m_axi_fifo_tdata_reg <= X"00";
                m_axi_fifo_tvalid_reg <= '0';
                m_axi_fifo_tlast_reg <= '0'; 
            when IDLE =>
                m_axi_fifo_tdata_reg <= X"00";
                m_axi_fifo_tvalid_reg <= '0';
                m_axi_fifo_tlast_reg <= '0';
            when SEND_MSB =>
                m_axi_fifo_tdata_reg <= d_MSB;
                m_axi_fifo_tvalid_reg <= '1';
                m_axi_fifo_tlast_reg <= '0';
            when SEND_LSB =>
                m_axi_fifo_tdata_reg <= d_LSB;
                m_axi_fifo_tvalid_reg <= '1';
                if (is_last_data = '1') then
                    -- Ask if this is the last byte being sent
                    m_axi_fifo_tlast_reg <= '1';
                else
                    -- Keep the signal low
                    m_axi_fifo_tlast_reg <= '0';
                end if;
            when others => 
                m_axi_fifo_tdata_reg <= X"00";
                m_axi_fifo_tvalid_reg <= '0';
                m_axi_fifo_tlast_reg <= '0';
        end case;
    end process OUTPUT_CTRL;
     
    NEXT_STATE_PROC : process(State, start_axi, is_last_data, m_axi_fifo_tready) is
    begin
        NextState <= State;     
        case (State) is
            when RESET =>
                NextState <= IDLE;     
            when IDLE =>
                -- Start asking/pooling to see if we need to send data, only when the tready signal is HIGH
                if ((start_axi = '1') AND (m_axi_fifo_tready = '1')) then
                    NextState <= SEND_MSB;
                end if;
            when SEND_MSB =>
                -- One firstclock cycle to send the Most Significant Byte
                NextState <= SEND_LSB;
            when SEND_LSB =>
                -- One second clock cycle to send the Least Significant Byte
                -- Ask if there is more data to send
                if (is_last_data = '0') then
                    -- Still more data to stream 
                    NextState <= SEND_MSB;
                else
                    -- Process has finished, go back to idle state
                    NextState <= IDLE;
                end if;
            when others =>
                -- Do nothing
        end case;
    end process NEXT_STATE_PROC; 
    
-------------------------------------------------------------------------------------------------------------------------------   
    -- Control signals to operate the AXI Stream Finite State Machine generator
    
    -- When does the system start to stream the data? After there is a read operation, also define when to stop it
    START_AXI_STREAM : process(rd_clk, rst)
    begin
        if rising_edge(rd_clk) then
            if (rst = '1') then
                start_axi <= '0';
            else
                if (data_valid = '1') then
                    -- Use the real RD_ENABLE signal that the FIFO is using
                    start_axi <= '1';
                else
                    -- Deassert this flag
                    start_axi <= '0';
                end if;
            end if;
        end if;
    end process START_AXI_STREAM;
    
    -- Now, define when does the system send the last stream of data
    END_AXI_STREAM : process(m_axi_clk, rst)
    begin
        if rising_edge(m_axi_clk) then
            if (rst = '1') then
                start_axi_reg <= '0';
            else
                -- Register the start axi signal
                start_axi_reg <= start_axi;
            end if;
        end if;
    end process END_AXI_STREAM;   
    
    -- Combinatorial output defining the change in this register
    is_last_data <= '1' when ((start_axi_reg = '1') AND (start_axi = '0')) else '0';
    
-------------------------------------------------------------------------------------------------------------------------------      
    -- Output of the Module Assignation
    fifo_o <= mem_data_out;
    m_axi_fifo_tdata <= m_axi_fifo_tdata_reg;
    m_axi_fifo_tvalid <= m_axi_fifo_tvalid_reg;
    m_axi_fifo_tlast <= m_axi_fifo_tlast_reg;
    m_axi_fifo_tuser <= '0';
    
end axiFIFO_arch;