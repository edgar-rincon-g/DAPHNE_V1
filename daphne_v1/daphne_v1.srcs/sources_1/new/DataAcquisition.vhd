----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 08.05.2023 12:06:34
-- Design Name: Data Acquisition Module Build
-- Module Name: DataAcquisition - datMod_arch
-- Project Name: DAPHNE V1 - ACQUISITION MANAGER
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2022.2
-- Description: 
-- Connects all the elements regarding data acquisition and alignment
-- Dependencies: 
-- Relies on 'Iserdese_Block.vhd' and 'AlignFSM.vhd' files
-- Revision:
-- Revision 0.01 - File Created
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

entity DataAcquisition is
    Generic (
        n_ch    : integer   := 1
    );
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        dt_clk              : in std_logic;                         -- Recovered Clock Routed from the FPGA
        dt_div_clk          : in std_logic;                         -- Divided Version of dt_clk (By 7)
        dt_in               : in std_logic_vector(n_ch downto 0);   -- Input Array of Data (Frame Clk - 7...0 Channels)
        reset               : in std_logic;                         -- Async Reset
        al_mode             : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_lckd            : in std_logic;                         -- PLL locked
        train_active        : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        custom_active       : in std_logic;                         -- Custom Training Pattern Active in the AFE Outputs
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        ph_ovfl             : out std_logic;                        -- Phase Overflowed (Digital Bit Clock Alignment)
        btslp_on            : out std_logic;                        -- Bitslip Being Executed on the Iserdeses
        phase_ctrl          : out std_logic_vector(1 downto 0);     -- Selected Phase to Align the Data ("11" Reserved for Future Use)
        dg_align_done       : out std_logic;                        -- Digital Clock Aligned With The Data
        align_done          : out std_logic;                        -- Data Completely Aligned
        dt_out              : out std_logic_vector(13 downto 0)     -- Output of the Iserdese Modules
    );
end DataAcquisition;

architecture datMod_arch of DataAcquisition is

-- FSM Component instantiation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
component AlignFSM 
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
end component AlignFSM;

-- Iserdese Component instantiation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
component Iserdese_Block
    Generic (
        init_val            : bit := '0';
        inter_type          : string := "MEMORY"                -- Interface Type Of The Serial Data & ISERDESE
    );
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_input           : in std_logic;                     -- Input Clock to the Iserdese
        clk_div             : in std_logic;                     -- Divided Version of clk_input
        data_in             : in std_logic;                     -- Serialized Data 
        rst                 : in std_logic;                     -- Async Reset (Should be Driven By Flip Flop, Must Verify this DRC)
        bitslip_s           : in std_logic;                     -- Bitslip to the Iserdese
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        q_vector            : out std_logic_vector(13 downto 0) -- Deserialized Data
    );
end component;

-- Aux signals to interconnect the components
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal global_bitslip       : std_logic := '0';
signal fr_data              : std_logic_vector(13 downto 0);
signal data_out             : std_logic_vector(13 downto 0);--array_8x14bits;

begin

    -- Instantiates the FSM that aligns the data coming from the AFE5808A
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    FSM_INST: AlignFSM
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            clk_div             => dt_div_clk,
            rst                 => reset,
            iser_data           => data_out,
            frame_data          => fr_data,
            al_frame            => al_mode,
            pll_locked          => pll_lckd,
            train_pat_active    => train_active,
            custom_pat_active   => custom_active,
            
            -- Module Outputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            phase_overflow      => ph_ovfl,
            bitslip_on_flag     => btslp_on,
            bitslip             => global_bitslip,
            phase_out           => phase_ctrl,
            done_bit_fsm        => dg_align_done,
            done_frame_fsm      => align_done
        );

    -- Instantiates the Iserdese module that uses the frame clock as another data input
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ISER_FR: Iserdese_Block
        generic map (
            inter_type  => "NETWORKING"
        )
        port map ( 
            clk_input   => dt_clk,
            clk_div     => dt_div_clk,
            data_in     => dt_in(n_ch),
            rst         => reset,
            bitslip_s   => global_bitslip,
            q_vector    => fr_data
        );

    -- Instantiates the other Iserdese modules that obtain the data from each channel
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --ISER_BLOCK : for i in (n_ch - 1) downto 0 generate
        DATA_ISER : Iserdese_Block
            generic map (
                inter_type  => "NETWORKING"
            )
            port map ( 
                clk_input   => dt_clk,
                clk_div     => dt_div_clk,
                data_in     => dt_in(0),
                rst         => reset,
                bitslip_s   => global_bitslip,
                q_vector    => data_out--(i)
            );
    --end generate ISER_BLOCK;

    -- Data is stored again in the outputs of the module
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    dt_out <= data_out;

end datMod_arch;