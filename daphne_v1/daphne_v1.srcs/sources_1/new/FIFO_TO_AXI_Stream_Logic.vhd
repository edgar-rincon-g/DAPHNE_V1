----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2024 11:35:44
-- Design Name: 
-- Module Name: FIFO_TO_AXI_Stream_Logic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity FIFO_TO_AXI_Stream_Logic is
    Generic (
        AXI_STREAM_DATA_WIDTH   : integer := 8;                                                 -- AXI Stream Data Bus Width
        DATA_WIDTH              : integer := 14                                                 -- FIFO Data Width
    );
    Port ( 
        -- Module Inputs
    -------------------------------------------------------------------------------------------------------------------------------   
        d_i                     : in std_logic_vector((DATA_WIDTH - 1) downto 0);               -- Data Vector Output By The FIFO
        rst                     : in std_logic;                                                 -- Asynchronous Reset
        m_axi_clk               : in std_logic;                                                 -- AXI Stream Interface Clock
        fifo_rd_clk             : in std_logic;                                                 -- Clock Used To Read The FIFO
        fifo_rd_data_valid      : in std_logic;                                                 -- Read Enable Signal Used By The FIFO
        m_axi_fifo_tready       : in std_logic;                                                 -- AXI Stream Ready Control Signal
        
        
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------------------   
        m_axi_fifo_tdata        : out std_logic_vector((AXI_STREAM_DATA_WIDTH - 1) downto 0);   -- AXI Stream Data from the FIFO
        m_axi_fifo_tvalid       : out std_logic;                                                -- AXI Stream Valid Control Signal
        m_axi_fifo_tlast        : out std_logic;                                                -- AXI Stream Last Control Signal
        m_axi_fifo_tuser        : out std_logic                                                 -- AXI Stream User Control Signal (Errors in the data transfer)
    );
end FIFO_TO_AXI_Stream_Logic;

architecture fAXI_arch of FIFO_TO_AXI_Stream_Logic is

-- Finite State Machine Signal Declaration
-------------------------------------------------------------------------------------------------------------------------------   
type states is (RESET, IDLE, SEND_MSB, SEND_LSB);
signal State, NextState         : states;

-- Signals Used In The Module Declaration
-------------------------------------------------------------------------------------------------------------------------------   
signal d_MSB                    : std_logic_vector((AXI_STREAM_DATA_WIDTH - 1) downto 0) := (others => '0');
signal d_LSB                    : std_logic_vector((AXI_STREAM_DATA_WIDTH - 1) downto 0) := (others => '0');
signal is_last_data             : std_logic := '0';
signal start_axi                : std_logic := '0';
signal start_axi_reg            : std_logic := '0';
signal m_axi_fifo_tvalid_reg    : std_logic := '0';
signal m_axi_fifo_tlast_reg     : std_logic := '0';
signal m_axi_fifo_tdata_reg     : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- Define both Bytes that compose the output of the FIFO
-------------------------------------------------------------------------------------------------------------------------------   
    -- Synchronous Assignment
    DATA_BYTE_ASSIGNATION : process(m_axi_clk, rst, d_i)
    begin
        if rising_edge(m_axi_clk) then
            if (rst = '1') then
                d_LSB <= X"00";
                d_MSB <= X"00";
            else
                if (start_axi = '1') then
                    d_LSB <= d_i(7 downto 0);
                    d_MSB <= "00" & d_i(13 downto 8);
                else
                    d_LSB <= X"00";
                    d_MSB <= X"00";
                end if;
            end if;
        end if;
    end process DATA_BYTE_ASSIGNATION;

    -- Finite State Machine to send the data through AXI Stream Interface
-------------------------------------------------------------------------------------------------------------------------------   
    -- States Modification Synchronous Process
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
    
    -- FSM Output Control Process
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
    
    -- States Modification Combinatorial Process
    NEXT_STATE_PROC : process(State, start_axi, is_last_data, m_axi_fifo_tready) is
    begin
        NextState <= State;     
        case (State) is
            when RESET =>
                NextState <= IDLE;     
            when IDLE =>
                -- Start asking/polling to see if we need to send data, only when the tready signal is HIGH
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
    
    -- Control signals to operate the AXI Stream Finite State Machine generator
-------------------------------------------------------------------------------------------------------------------------------   
    -- When does the system start to stream the data? After there is a read operation, also define when to stop it
    START_AXI_STREAM : process(fifo_rd_clk, rst)
    begin
        if rising_edge(fifo_rd_clk) then
            if (rst = '1') then
                start_axi <= '0';
            else
                if (fifo_rd_data_valid = '1') then
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

    -- Combinatorial Flags Output By The System
-------------------------------------------------------------------------------------------------------------------------------      
    -- Combinatorial output defining the change in this register
    is_last_data        <= '1' when ((start_axi_reg = '1') AND (start_axi = '0')) else '0';
    
    -- Output of the Module Assignation
-------------------------------------------------------------------------------------------------------------------------------      
    m_axi_fifo_tdata    <= m_axi_fifo_tdata_reg;
    m_axi_fifo_tvalid   <= m_axi_fifo_tvalid_reg;
    m_axi_fifo_tlast    <= m_axi_fifo_tlast_reg;
    m_axi_fifo_tuser    <= '0';

end fAXI_arch;