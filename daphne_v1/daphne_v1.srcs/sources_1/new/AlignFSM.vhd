----------------------------------------------------------------------------------
-- Company: Unviersidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 05.05.2023 14:59:21
-- Design Name: Data Alignment FSM Full Build
-- Module Name: AlignFSM - alFsm_arch
-- Project Name: DAPHNE V1 - DATA ALIGNMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.1
-- Description: 
-- Creates a big Module containing all the training FSM to align the Digital and Frame Clocks with the Data
-- Dependencies: 
-- Relies on 'bitFSM_Module.vhd', 'frameFSM_Module.vhd' files
-- Revision:
-- Revision 0.02 - File Updated
-- Additional Comments:
-- The Alignment Module has succesfully included both FSM to completely align the data
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AlignFSM is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_div             : in std_logic;                         -- Divided Version of the Digital Clock
        rst                 : in std_logic;                         -- Async Reset
        iser_data           : in std_logic_vector(13 downto 0);     -- Channel Data (use Channel 0 to Align all 8 Channels)
        frame_data          : in std_logic_vector(13 downto 0);     -- Frame Clock Turned To Data
        al_frame            : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_locked          : in std_logic;                         -- PLL Locked
        train_pat_active    : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        custom_pat_active   : in std_logic;                         -- Custom Training Pattern Active in the AFE Outputs
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        phase_overflow      : out std_logic;                        -- Phase Overflowed (Digital Bit Clock Alignment)
        bitslip_on_flag     : out std_logic;                        -- Bitslip Operation being Executed
        bitslip             : out std_logic;                        -- Bitslipt Control Output for the Iserdese
        phase_out           : out std_logic_vector(1 downto 0);     -- Selected Phase to Align the Data ("11" Reserved for Future Use)
        done_bit_fsm        : out std_logic;                        -- Data Aligned With the Digital Clock
        done_frame_fsm      : out std_logic                         -- Data Aligned With Frame Clock (Final Alignment)
    );
end AlignFSM;

architecture alFsm_arch of AlignFSM is

-- Bit Aligning FSM component instantiation
component bitFSM_Module is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_fsm             : in std_logic;                         -- FSM Clock
        rst                 : in std_logic;                         -- Reset Active HIGH
        iser_data           : in std_logic_vector(13 downto 0);     -- Channel 0 Data
        al_frame            : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_locked          : in std_logic;                         -- PLL Locked
        train_pat_active    : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        do_process          : in std_logic;                         -- Start Alignment
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        phase_ovfl          : out std_logic;                        -- Overflow in the Phase Counter
        phase_out           : out std_logic_vector(1 downto 0);     -- Selected Phase (Output "11" Reserved for Future Use)
        bit_done            : out std_logic                         -- FSM Finished with Alignment
    );
end component;

-- Frame Aligning FSM component instantiation
component frameFSM_Module is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_fsm             : in std_logic;                         -- FSM Clock
        rst                 : in std_logic;                         -- Reset Active HIGH
        frame_data          : in std_logic_vector(13 downto 0);     -- Frame Clock Turned into Data
        iser_data           : in std_logic_vector(13 downto 0);     -- Channel 0 Data
        al_frame            : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        bit_done            : in std_logic;                         -- FSM Bit - Digital Clock Finished with Alignment
        pll_locked          : in std_logic;                         -- PLL Locked
        do_process          : in std_logic;                         -- Start Alignment
        custom_pat_active   : in std_logic;                         -- Custom Training Pattern Active in the AFE Outputs
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        exc_bitslip_flag    : out std_logic;                        -- Bitslip Operation being Executed
        bitslip_out         : out std_logic;                        -- Bitslipt Control Output for the Iserdese
        fr_done             : out std_logic                         -- FSM Finished with Full Alignment
    );
end component;

-- Aux signals to interconnect the FSMs
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal done_bit             : std_logic := '0';
signal done_align           : std_logic := '0';
signal phase_overflow_reg   : std_logic := '0';
signal start_process        : std_logic;

begin

    -- Modifies the value of start_process signal
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    start_process   <= '0' when (done_align = '1') else '1'; 

    -- Instantiates the Bit (Digital Clock) FSM
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    FSM_BIT: bitFSM_Module
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            clk_fsm             => clk_div,
            rst                 => rst,
            iser_data           => iser_data,
            al_frame            => al_frame,
            pll_locked          => pll_locked,
            train_pat_active    => train_pat_active,
            do_process          => start_process,
            
            -- Module Outputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            phase_ovfl          => phase_overflow_reg,
            phase_out           => phase_out,
            bit_done            => done_bit
        );

    -- Instantiates the Frame (Frame Clock) FSM
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    FSM_FRAME: frameFSM_Module
        port map ( 
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            clk_fsm             => clk_div,
            rst                 => rst,
            frame_data          => frame_data,
            iser_data           => iser_data,
            al_frame            => al_frame,
            bit_done            => done_bit,
            pll_locked          => pll_locked,
            do_process          => start_process,
            custom_pat_active   => custom_pat_active,
            -- Module Outputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            exc_bitslip_flag    => bitslip_on_flag,
            bitslip_out         => bitslip,
            fr_done             => done_align
        );
    
       
    -- Phase Overflow Flag Output of the Module assignation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    phase_overflow  <= phase_overflow_reg;
    
    -- Done Output of the Module assignation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    done_bit_fsm        <= done_bit; 
    done_frame_fsm      <= done_align;
    
end alFsm_arch;