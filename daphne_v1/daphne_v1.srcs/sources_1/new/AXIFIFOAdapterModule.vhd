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
-- Revision 0.02 - File Modified
-- Additional Comments:
-- Created a new file in order to add the AXI Stream Logic Converter into a separate entity
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

entity AXIFIFOAdapterModule is
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ                 : real          := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ                 : real          := 100.0;
        -- FIFO Important Parameters
        data_width                  : integer       := 14;                                          -- Width Of The Data Stored In The FIFO 
        fifoPointersLength          : integer       := 11;                                          -- FIFO Pointers Length
        AEMPTY_OFF                  : bit_vector    := X"0080";                                     -- Almost Empty Offset
        AFULL_OFF                   : bit_vector    := X"0080";                                     -- Almost Full Offset
        -- AXI Stream Data Bus Width
        AXI_STREAM_BUS_WIDTH        : integer       := 8                                            -- AXI Stream Data Bus Width
    );
    Port (
        -- Module Inputs
    ----------------------------------------------------------------------------------------------------------------------------------
        d_i                         : in std_logic_vector((data_width - 1) downto 0);               -- Parallel Data Input for the FIFO
        dt_rdy                      : in std_logic;                                                 -- Data Ready Flag from Acquisition Module
        wr_enable                   : in std_logic;                                                 -- Write Enable Control Signal for the FIFO
        rd_enable                   : in std_logic;                                                 -- Read Enable Control Signal for the FIFO
        wr_clk                      : in std_logic;                                                 -- Write Clock for the FIFO
        rd_clk                      : in std_logic;                                                 -- Read Clock for the FIFO
        m_axi_clk                   : in std_logic;                                                 -- AXI Stream Interface Clock
        rst                         : in std_logic;                                                 -- Async Reset
    
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------    
        a_empty                     : out std_logic;                                                -- Almost Empty Flag of the FIFO
        a_full                      : out std_logic;                                                -- Almost Full Flag of the FIFO
        empty                       : out std_logic;                                                -- Empty Flag of the FIFO
        full                        : out std_logic;                                                -- Full Flag of the FIFO 
        wr_err                      : out std_logic;                                                -- Write Error Flag of the FIFO
        rd_err                      : out std_logic;                                                -- Read Error Flag of the FIFO
        wr_count                    : out std_logic_vector((fifoPointersLength - 1) downto 0);      -- Write Pointer of the FIFO
        rd_count                    : out std_logic_vector((fifoPointersLength - 1) downto 0);      -- Read Pointer of the FIFO
        fifo_o                      : out std_logic_vector(13 downto 0);                            -- Parallel Data Output of the FIFO
        m_axi_fifo_tdata            : out std_logic_vector((data_width/2) downto 0);                -- AXI Stream Data from the FIFO
        m_axi_fifo_tvalid           : out std_logic;                                                -- AXI Stream Valid Control Signal
        m_axi_fifo_tready           : in std_logic;                                                 -- AXI Stream Ready Control Signal
        m_axi_fifo_tlast            : out std_logic;                                                -- AXI Stream Last Control Signal
        m_axi_fifo_tuser            : out std_logic                                                 -- AXI Stream User Control Signal (Errors in the data)
    );
end AXIFIFOAdapterModule;

architecture axiFIFO_arch of AXIFIFOAdapterModule is

-- Aux Signals of the module
-------------------------------------------------------------------------------------------------------------------------------   
signal mem_data_out                 : std_logic_vector((data_width - 1) downto 0) := (others => '0');
signal data_valid                   : std_logic := '0';

-- AXI Stream Aux Signals
-------------------------------------------------------------------------------------------------------------------------------   
signal m_aux_axi_fifo_tready        : std_logic := '0';
signal m_aux_axi_fifo_tvalid        : std_logic := '0';
signal m_aux_axi_fifo_tlast         : std_logic := '0';
signal m_aux_axi_fifo_tuser         : std_logic := '0';
signal m_aux_axi_fifo_tdata         : std_logic_vector((AXI_STREAM_BUS_WIDTH - 1) downto 0) := (others => '0');

-- FIFO Component Declaration
-------------------------------------------------------------------------------------------------------------------------------   
component FIFOManagerModule 
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ                 : real          := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ                 : real          := 100.0;
        -- FIFO Important Parameters
        data_width                  : integer       := 14;
        fifoPointersLength          : integer       := 11;
        AEMPTY_OFF                  : bit_vector    := X"0080";                                     -- Almost Empty Offset
        AFULL_OFF                   : bit_vector    := X"0080"                                      -- Almost Full Offset
    );
    Port ( 
        -- Module Inputs
    --------------------------------------------------------------------------------------------------------------------------------------------
        d_i                         : in std_logic_vector((data_width - 1) downto 0);               -- Parallel Data Input for the FIFO
        dt_rdy                      : in std_logic;                                                 -- Data Alligned from the Acquisition Module
        wr_enable                   : in std_logic;                                                 -- Write Enable Used by the Module
        rd_enable                   : in std_logic;                                                 -- Read Enable Used by the Module
        wr_clk                      : in std_logic;                                                 -- Write Clock Used by the Module
        rd_clk                      : in std_logic;                                                 -- Read Clock Used by the Module
        rst                         : in std_logic;                                                 -- Reset for the FIFO
        
        -- Module Outputs
    --------------------------------------------------------------------------------------------------------------------------------------------    
        a_empty                     : out std_logic;                                                -- Almost Empty Flag of the FIFO
        a_full                      : out std_logic;                                                -- Almost Full Flag of the FIFO
        empty                       : out std_logic;                                                -- Empty Flag of the FIFO
        full                        : out std_logic;                                                -- Full Flag of the FIFO
        wr_err                      : out std_logic;                                                -- Write Error Flag Generated by the Module
        rd_err                      : out std_logic;                                                -- Read Error Flag Generated by the Module
        data_rd_valid               : out std_logic;                                                -- Real Read Flag for the FIFO
        wr_count                    : out std_logic_vector((fifoPointersLength - 1) downto 0);      -- Write Pointer of the FIFO
        rd_count                    : out std_logic_vector((fifoPointersLength - 1) downto 0);      -- Read Pointer of the FIFO
        d_o                         : out std_logic_vector((data_width - 1) downto 0)               -- Parallel Data Output of the FIFO
    );
end component FIFOManagerModule;

-- FIFO Reader To AXI Stream Logic Component Declaration
-------------------------------------------------------------------------------------------------------------------------------   
component FIFO_TO_AXI_Stream_Logic is
    Generic (
        AXI_STREAM_DATA_WIDTH       : integer       := 8;                                           -- AXI Stream Data Bus Width
        DATA_WIDTH                  : integer       := 14                                           -- FIFO Data Width
    );
    Port ( 
        -- Module Inputs
    -------------------------------------------------------------------------------------------------------------------------------   
        d_i                         : in std_logic_vector((DATA_WIDTH - 1) downto 0);               -- Data Vector Output By The FIFO
        rst                         : in std_logic;                                                 -- Asynchronous Reset
        m_axi_clk                   : in std_logic;                                                 -- AXI Stream Interface Clock
        fifo_rd_clk                 : in std_logic;                                                 -- Clock Used To Read The FIFO
        fifo_rd_data_valid          : in std_logic;                                                 -- Read Enable Signal Used By The FIFO
        m_axi_fifo_tready           : in std_logic;                                                 -- AXI Stream Ready Control Signal
        
        
        -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------------------   
        m_axi_fifo_tdata            : out std_logic_vector((AXI_STREAM_DATA_WIDTH - 1) downto 0);   -- AXI Stream Data from the FIFO
        m_axi_fifo_tvalid           : out std_logic;                                                -- AXI Stream Valid Control Signal
        m_axi_fifo_tlast            : out std_logic;                                                -- AXI Stream Last Control Signal
        m_axi_fifo_tuser            : out std_logic                                                 -- AXI Stream User Control Signal (Errors in the data transfer)
    );
end component FIFO_TO_AXI_Stream_Logic;

begin   
    
    -- FIFO Component
-------------------------------------------------------------------------------------------------------------------------------   
    FIFO_MANAGER_COM : FIFOManagerModule
        generic map (
            WR_CLK_FREQ             => WR_CLK_FREQ,
            RD_CLK_FREQ             => RD_CLK_FREQ,
            data_width              => data_width,
            fifoPointersLength      => fifoPointersLength,
            AEMPTY_OFF              => AEMPTY_OFF,
            AFULL_OFF               => AFULL_OFF 
        )
        port map (
            -- Module Inputs
        --------------------------------------------------------------------------------------------------------------------------------------------
            d_i                     => d_i,
            dt_rdy                  => dt_rdy,
            wr_enable               => wr_enable,
            rd_enable               => rd_enable,
            wr_clk                  => wr_clk,
            rd_clk                  => rd_clk,
            rst                     => rst, 
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------------
            a_empty                 => a_empty,
            a_full                  => a_full,
            empty                   => empty,
            full                    => full,
            wr_err                  => wr_err,
            rd_err                  => rd_err,
            data_rd_valid           => data_valid,
            wr_count                => wr_count,
            rd_count                => rd_count,
            d_o                     => mem_data_out
        );
   
    -- FIFO To AXI Stream Logic Component
-------------------------------------------------------------------------------------------------------------------------------   
    FIFO_TO_AXI_STREAM_COM : FIFO_TO_AXI_Stream_Logic 
        generic map (
            AXI_STREAM_DATA_WIDTH   => AXI_STREAM_BUS_WIDTH,                                        -- AXI Stream Data Bus Width
            DATA_WIDTH              => data_width                                                   -- FIFO Data Width
        )
        port map ( 
            -- Module Inputs
        -------------------------------------------------------------------------------------------------------------------------------   
            d_i                     => mem_data_out,                                                -- Data Vector Output By The FIFO
            rst                     => rst,                                                         -- Asynchronous Reset
            m_axi_clk               => m_axi_clk,                                                   -- AXI Stream Interface Clock
            fifo_rd_clk             => rd_clk,                                                      -- Clock Used To Read The FIFO
            fifo_rd_data_valid      => data_valid,                                                  -- Read Enable Signal Used By The FIFO
            m_axi_fifo_tready       => m_aux_axi_fifo_tready,                                       -- AXI Stream Ready Control Signal
        
        
            -- Module Outputs
        -------------------------------------------------------------------------------------------------------------------------------   
            m_axi_fifo_tdata        => m_aux_axi_fifo_tdata,                                        -- AXI Stream Data from the FIFO
            m_axi_fifo_tvalid       => m_aux_axi_fifo_tvalid,                                       -- AXI Stream Valid Control Signal
            m_axi_fifo_tlast        => m_aux_axi_fifo_tlast,                                        -- AXI Stream Last Control Signal
            m_axi_fifo_tuser        => m_aux_axi_fifo_tuser                                         -- AXI Stream User Control Signal (Errors in the data transfer)
        );

    -- Inputs Of The Module Assignation (AXI Stream Interface)
-------------------------------------------------------------------------------------------------------------------------------      
    m_aux_axi_fifo_tready           <= m_axi_fifo_tready;
    
    -- Output of the Module Assignation
-------------------------------------------------------------------------------------------------------------------------------      
    fifo_o                          <= mem_data_out;
    m_axi_fifo_tdata                <= m_aux_axi_fifo_tdata;
    m_axi_fifo_tvalid               <= m_aux_axi_fifo_tvalid; 
    m_axi_fifo_tlast                <= m_aux_axi_fifo_tlast;
    m_axi_fifo_tuser                <= m_aux_axi_fifo_tuser;
    
end axiFIFO_arch;