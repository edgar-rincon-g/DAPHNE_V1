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
        n_ch : integer := 1
    );
    Port ( 
        dt_clk : in std_logic;
        dt_div_clk : in std_logic;
        dt_in : in std_logic_vector(n_ch downto 0);
        reset : in std_logic;
        al_mode : in std_logic;
        pll_lckd : in std_logic;
        train_active : in std_logic;
        custom_active : in std_logic;
        --start_align : in std_logic; --looking for inmediate start
        ph_ovfl : out std_logic;
        btslp_on : out std_logic;
        phase_ctrl : out std_logic_vector(1 downto 0);
        align_done : out std_logic;
        dt_out : out std_logic_vector(13 downto 0)
    );
end DataAcquisition;

architecture datMod_arch of DataAcquisition is

-- FSM Component instantiation
component AlignFSM is
    Port ( 
        --clk : in std_logic; -- Used for synchronization only
        clk_div : in std_logic;
        rst : in std_logic;
        iser_data : in std_logic_vector(13 downto 0);
        frame_data : in std_logic_vector(13 downto 0);
        al_frame : in std_logic;
        pll_locked : in std_logic;
        train_pat_active : in std_logic;
        custom_pat_active : in std_logic;
        --start_process : in std_logic;
        phase_overflow : out std_logic;
        bitslip_on_flag : out std_logic;
        bitslip : out std_logic;
        phase_out : out std_logic_vector(1 downto 0);
        done : out std_logic
    );
end component;

-- Iserdese Component instantiation
component Iserdese_Block
    Generic (
        init_val : bit := '0';
        inter_type : string := "MEMORY"
    );
    Port ( 
        clk_input : in std_logic;
        clk_div : in std_logic;
        data_in : in std_logic;
        rst : in std_logic;
        bitslip_s : in std_logic;
        q_vector : out std_logic_vector(13 downto 0)
    );
end component;

-- Aux signals to interconnect the components
signal global_bitslip: std_logic := '0';
signal fr_data: std_logic_vector(13 downto 0);
signal data_out: std_logic_vector(13 downto 0);--array_8x14bits;

begin

-- Instantiates the FSM that aligns the data coming from the AFE5808A
-----------------------------------------------------------------------------------
FSM_INST: AlignFSM
port map (
    --clk => dt_clk,
    clk_div => dt_div_clk,
    rst => reset,
    iser_data => data_out,
    frame_data => fr_data,
    al_frame => al_mode,
    pll_locked => pll_lckd,
    train_pat_active => train_active,
    custom_pat_active => custom_active,
    --start_process => start_align,
    phase_overflow => ph_ovfl,
    bitslip_on_flag => btslp_on,
    bitslip => global_bitslip,
    phase_out => phase_ctrl,
    done => align_done
);

-- Instantiates the Iserdese module that uses the frame clock as another data input
-----------------------------------------------------------------------------------
ISER_FR: Iserdese_Block
    generic map (
        inter_type => "NETWORKING"
    )
    port map ( 
        clk_input => dt_clk,
        clk_div => dt_div_clk,
        data_in => dt_in(n_ch),
        rst => reset,
        bitslip_s => global_bitslip,
        q_vector => fr_data
    );

-- Instantiates the other Iserdese modules that obtain the data from each channel
-----------------------------------------------------------------------------------
--ISER_BLOCK : for i in (n_ch - 1) downto 0 generate
    DATA_ISER : Iserdese_Block
        generic map (
            inter_type => "NETWORKING"
        )
        port map ( 
            clk_input => dt_clk,
            clk_div => dt_div_clk,
            data_in => dt_in(0),
            rst => reset,
            bitslip_s => global_bitslip,
            q_vector => data_out--(i)
        );
--end generate ISER_BLOCK;

-- Data is stored again in the outputs of the module
dt_out <= data_out;

end datMod_arch;