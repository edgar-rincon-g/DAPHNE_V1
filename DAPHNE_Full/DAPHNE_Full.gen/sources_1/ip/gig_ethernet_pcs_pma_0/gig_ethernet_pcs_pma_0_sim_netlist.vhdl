-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 23 14:33:51 2023
-- Host        : danielA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_clocking is
  port (
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    userclk : out STD_LOGIC;
    userclk2 : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    txoutclk : in STD_LOGIC;
    mmcm_reset : in STD_LOGIC;
    rxoutclk : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_clocking;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_clocking is
  signal clkfbout : STD_LOGIC;
  signal clkout0 : STD_LOGIC;
  signal clkout1 : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal txoutclk_bufg : STD_LOGIC;
  signal NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of bufg_gtrefclk : label is "PRIMITIVE";
  attribute box_type of bufg_txoutclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk2 : label is "PRIMITIVE";
  attribute box_type of ibufds_gtrefclk : label is "PRIMITIVE";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
  attribute box_type of rxrecclkbufg : label is "PRIMITIVE";
begin
  gtrefclk_out <= \^gtrefclk_out\;
bufg_gtrefclk: unisim.vcomponents.BUFG
     port map (
      I => \^gtrefclk_out\,
      O => gtrefclk_bufg
    );
bufg_txoutclk: unisim.vcomponents.BUFG
     port map (
      I => txoutclk,
      O => txoutclk_bufg
    );
bufg_userclk: unisim.vcomponents.BUFG
     port map (
      I => clkout1,
      O => userclk
    );
bufg_userclk2: unisim.vcomponents.BUFG
     port map (
      I => clkout0,
      O => userclk2
    );
ibufds_gtrefclk: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => '0',
      I => gtrefclk_p,
      IB => gtrefclk_n,
      O => \^gtrefclk_out\,
      ODIV2 => NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 16.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 16.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 8.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 16,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout,
      CLKFBOUT => clkfbout,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => txoutclk_bufg,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clkout0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clkout1,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => mmcm_locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => mmcm_reset
    );
rxrecclkbufg: unisim.vcomponents.BUFG
     port map (
      I => rxoutclk,
      O => rxuserclk2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_common_reset is
  port (
    PLL0RESET : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0reset_out : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_common_reset;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_common_reset is
  signal COMMON_RESET : STD_LOGIC;
  signal COMMON_RESET_i_1_n_0 : STD_LOGIC;
  signal common_reset_asserted : STD_LOGIC;
  signal common_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of COMMON_RESET_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of common_reset_asserted_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair0";
begin
COMMON_RESET_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => common_reset_asserted,
      I1 => state,
      I2 => COMMON_RESET,
      O => COMMON_RESET_i_1_n_0
    );
COMMON_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => COMMON_RESET_i_1_n_0,
      Q => COMMON_RESET,
      R => \out\(0)
    );
common_reset_asserted_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state,
      I1 => common_reset_asserted,
      O => common_reset_asserted_i_1_n_0
    );
common_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => common_reset_asserted_i_1_n_0,
      Q => common_reset_asserted,
      R => \out\(0)
    );
gtpe2_common_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => COMMON_RESET,
      I1 => gt0_pll0reset_out,
      I2 => cpll_reset_i,
      O => PLL0RESET
    );
\init_wait_count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => plusOp(0)
    );
\init_wait_count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => plusOp(1)
    );
\init_wait_count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => plusOp(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      O => plusOp(3)
    );
\init_wait_count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      O => plusOp(4)
    );
\init_wait_count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(4),
      O => plusOp(5)
    );
\init_wait_count[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => \init_wait_count[7]_i_4_n_0\,
      I2 => init_wait_count_reg(5),
      O => plusOp(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => init_wait_count_reg(7),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      O => \init_wait_count[7]_i_1_n_0\
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(7),
      I1 => init_wait_count_reg(5),
      I2 => \init_wait_count[7]_i_4_n_0\,
      I3 => init_wait_count_reg(6),
      O => plusOp(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(5),
      I3 => init_wait_count_reg(4),
      O => \init_wait_count[7]_i_3_n_0\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(2),
      O => \init_wait_count[7]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(0),
      Q => init_wait_count_reg(0),
      R => '0'
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(1),
      Q => init_wait_count_reg(1),
      R => '0'
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(2),
      Q => init_wait_count_reg(2),
      R => '0'
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(3),
      Q => init_wait_count_reg(3),
      R => '0'
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(4),
      Q => init_wait_count_reg(4),
      R => '0'
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(5),
      Q => init_wait_count_reg(5),
      R => '0'
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(6),
      Q => init_wait_count_reg(6),
      R => '0'
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(7),
      Q => init_wait_count_reg(7),
      R => '0'
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_done,
      I1 => \init_wait_count[7]_i_3_n_0\,
      I2 => init_wait_count_reg(7),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(6),
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => state,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gt_common is
  port (
    gt0_pll0lock_out : out STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    cpll_reset_i : out STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    PLL0RESET : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gt_common;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gt_common is
  signal PLL0PD : STD_LOGIC;
  signal \cpllpd_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[94]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[126]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[95]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtpe2_common_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gtpe2_common_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[94]_srl31 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \cpllpd_wait_reg[95]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[126]_srl31 ";
  attribute equivalent_register_removal of \cpllreset_wait_reg[127]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[95]_srl32 ";
  attribute box_type : string;
  attribute box_type of gtpe2_common_i : label is "PRIMITIVE";
begin
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[31]_srl32_n_1\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[63]_srl32_n_1\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[63]_srl32_n_1\,
      Q => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q => PLL0PD,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[95]_srl32_n_1\,
      Q => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q => cpll_reset_i,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[31]_srl32_n_1\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[63]_srl32_n_1\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[63]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[95]_srl32_n_1\
    );
gtpe2_common_i: unisim.vcomponents.GTPE2_COMMON
    generic map(
      BIAS_CFG => X"0000000000050001",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK0_INVERTED => '0',
      IS_GTGREFCLK1_INVERTED => '0',
      IS_PLL0LOCKDETCLK_INVERTED => '0',
      IS_PLL1LOCKDETCLK_INVERTED => '0',
      PLL0_CFG => X"01F03DC",
      PLL0_DMON_CFG => '0',
      PLL0_FBDIV => 4,
      PLL0_FBDIV_45 => 5,
      PLL0_INIT_CFG => X"00001E",
      PLL0_LOCK_CFG => X"1E8",
      PLL0_REFCLK_DIV => 1,
      PLL1_CFG => X"01F03DC",
      PLL1_DMON_CFG => '0',
      PLL1_FBDIV => 1,
      PLL1_FBDIV_45 => 4,
      PLL1_INIT_CFG => X"00001E",
      PLL1_LOCK_CFG => X"1E8",
      PLL1_REFCLK_DIV => 1,
      PLL_CLKOUT_CFG => B"00000000",
      RSVD_ATTR0 => X"0000",
      RSVD_ATTR1 => X"0000",
      SIM_PLL0REFCLK_SEL => B"001",
      SIM_PLL1REFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "2.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      BGRCALOVRDENB => '1',
      DMONITOROUT(7 downto 0) => NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED(7 downto 0),
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtpe2_common_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtpe2_common_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTEASTREFCLK0 => '0',
      GTEASTREFCLK1 => '0',
      GTGREFCLK0 => '0',
      GTGREFCLK1 => '0',
      GTREFCLK0 => gtrefclk_out,
      GTREFCLK1 => '0',
      GTWESTREFCLK0 => '0',
      GTWESTREFCLK1 => '0',
      PLL0FBCLKLOST => NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED,
      PLL0LOCK => gt0_pll0lock_out,
      PLL0LOCKDETCLK => independent_clock_bufg,
      PLL0LOCKEN => '1',
      PLL0OUTCLK => gt0_pll0outclk_out,
      PLL0OUTREFCLK => gt0_pll0outrefclk_out,
      PLL0PD => PLL0PD,
      PLL0REFCLKLOST => gt0_pll0refclklost_out,
      PLL0REFCLKSEL(2 downto 0) => B"001",
      PLL0RESET => PLL0RESET,
      PLL1FBCLKLOST => NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED,
      PLL1LOCK => NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED,
      PLL1LOCKDETCLK => '0',
      PLL1LOCKEN => '1',
      PLL1OUTCLK => gt0_pll1outclk_out,
      PLL1OUTREFCLK => gt0_pll1outrefclk_out,
      PLL1PD => '1',
      PLL1REFCLKLOST => NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED,
      PLL1REFCLKSEL(2 downto 0) => B"001",
      PLL1RESET => '0',
      PLLRSVD1(15 downto 0) => B"0000000000000000",
      PLLRSVD2(4 downto 0) => B"00000",
      PMARSVD(7 downto 0) => B"00000000",
      PMARSVDOUT(15 downto 0) => NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED(15 downto 0),
      RCALENB => '1',
      REFCLKOUTMONITOR0 => NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED,
      REFCLKOUTMONITOR1 => NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => enablealign,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => enablealign,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => enablealign,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => enablealign,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => enablealign,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_1 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_1 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_2 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_2 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_4 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_5 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_wtd_timer is
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter_stg2[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_4_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal reset_i_7_n_0 : STD_LOGIC;
  signal reset_i_8_n_0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair118";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \counter_stg3[0]_i_5\ : label is "soft_lutpair119";
  attribute ADDER_THRESHOLD of \counter_stg3_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_i_8 : label is "soft_lutpair119";
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => plusOp(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      O => plusOp(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      O => plusOp(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(3),
      O => plusOp(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(3),
      O => plusOp(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => data_out,
      I1 => reset_i_2_n_0,
      I2 => eqOp,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => plusOp(5)
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(2),
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => eqOp
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_7\,
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg2_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg2_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg2_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg2_reg[0]_i_2_n_4\,
      O(2) => \counter_stg2_reg[0]_i_2_n_5\,
      O(1) => \counter_stg2_reg[0]_i_2_n_6\,
      O(0) => \counter_stg2_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg2_reg(3 downto 1),
      S(0) => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_5\,
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_4\,
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_6\,
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_5\,
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_4\,
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_7\,
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg2_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg2_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[4]_i_1_n_4\,
      O(2) => \counter_stg2_reg[4]_i_1_n_5\,
      O(1) => \counter_stg2_reg[4]_i_1_n_6\,
      O(0) => \counter_stg2_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(7 downto 4)
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_6\,
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_5\,
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_4\,
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_7\,
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg2_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[8]_i_1_n_4\,
      O(2) => \counter_stg2_reg[8]_i_1_n_5\,
      O(1) => \counter_stg2_reg[8]_i_1_n_6\,
      O(0) => \counter_stg2_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(11 downto 8)
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_6\,
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => eqOp,
      I1 => \counter_stg3[0]_i_3_n_0\,
      I2 => counter_stg2_reg(3),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg2_reg(11),
      I5 => counter_stg2_reg(4),
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter_stg2_reg(10),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg2_reg(6),
      I4 => \counter_stg3[0]_i_5_n_0\,
      O => \counter_stg3[0]_i_3_n_0\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(7),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(0),
      O => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_7\,
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg3_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg3_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg3_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg3_reg[0]_i_2_n_4\,
      O(2) => \counter_stg3_reg[0]_i_2_n_5\,
      O(1) => \counter_stg3_reg[0]_i_2_n_6\,
      O(0) => \counter_stg3_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg3_reg(3 downto 1),
      S(0) => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_5\,
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_4\,
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_6\,
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_5\,
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_4\,
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_7\,
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg3_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg3_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[4]_i_1_n_4\,
      O(2) => \counter_stg3_reg[4]_i_1_n_5\,
      O(1) => \counter_stg3_reg[4]_i_1_n_6\,
      O(0) => \counter_stg3_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(7 downto 4)
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_6\,
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_5\,
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_4\,
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_7\,
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg3_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[8]_i_1_n_4\,
      O(2) => \counter_stg3_reg[8]_i_1_n_5\,
      O(1) => \counter_stg3_reg[8]_i_1_n_6\,
      O(0) => \counter_stg3_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(11 downto 8)
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_6\,
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => reset_i_2_n_0,
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => reset_i_3_n_0,
      I1 => reset_i_4_n_0,
      I2 => reset_i_5_n_0,
      I3 => reset_i_6_n_0,
      I4 => reset_i_7_n_0,
      I5 => reset_i_8_n_0,
      O => reset_i_2_n_0
    );
reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_stg3_reg(9),
      I1 => counter_stg3_reg(8),
      I2 => counter_stg3_reg(11),
      I3 => counter_stg3_reg(1),
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter_stg3_reg(6),
      I1 => counter_stg2_reg(10),
      I2 => counter_stg3_reg(4),
      I3 => counter_stg3_reg(0),
      O => reset_i_4_n_0
    );
reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(8),
      I2 => counter_stg2_reg(11),
      I3 => counter_stg2_reg(4),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg2_reg(7),
      I1 => counter_stg3_reg(10),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg3_reg(3),
      O => reset_i_6_n_0
    );
reset_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter_stg3_reg(7),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg3_reg(5),
      I3 => counter_stg3_reg(2),
      O => reset_i_7_n_0
    );
reset_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(6),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(0),
      O => reset_i_8_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_resets;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_resets is
  signal pma_reset_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of pma_reset_pipe : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \pma_reset_pipe_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[1]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[2]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[3]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[3]\ : label is "yes";
begin
  \out\(0) <= pma_reset_pipe(3);
\pma_reset_pipe_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => pma_reset_pipe(0)
    );
\pma_reset_pipe_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(0),
      PRE => reset,
      Q => pma_reset_pipe(1)
    );
\pma_reset_pipe_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(1),
      PRE => reset,
      Q => pma_reset_pipe(2)
    );
\pma_reset_pipe_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(2),
      PRE => reset,
      Q => pma_reset_pipe(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_0 is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
resetdone_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out,
      I1 => resetdone_0,
      O => resetdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_10 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_10 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_12 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_13 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_13 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_14 is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out : out STD_LOGIC;
    data_sync_reg6_0 : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    time_out_wait_bypass_s3 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_1\ : in STD_LOGIC;
    rx_fsm_reset_done_int_reg : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_0 : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_1 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_14 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_14 is
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA8A8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I3 => \FSM_sequential_rx_state_reg[0]\,
      I4 => \FSM_sequential_rx_state_reg[0]_0\,
      O => D(0)
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03443377"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \FSM_sequential_rx_state_reg[0]_0\,
      O => D(1)
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFFFFFDDDF0000"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_rx_state_reg[3]_0\,
      I2 => Q(0),
      I3 => time_out_wait_bypass_s3,
      I4 => Q(3),
      I5 => \FSM_sequential_rx_state_reg[3]_1\,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E0"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \^data_out\,
      I2 => Q(3),
      I3 => Q(1),
      O => data_sync_reg6_0
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^data_out\,
      I1 => rx_fsm_reset_done_int_reg_1,
      I2 => rx_fsm_reset_done_int_reg_0,
      I3 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => Q(3),
      I3 => Q(2),
      I4 => data_in,
      O => \FSM_sequential_rx_state_reg[3]\
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => rx_fsm_reset_done_int_reg,
      I3 => rx_fsm_reset_done_int_reg_0,
      I4 => \^data_out\,
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CFCC3B3B0000"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg,
      I1 => \^data_out\,
      I2 => rx_fsm_reset_done_int_reg_0,
      I3 => rx_fsm_reset_done_int_reg_1,
      I4 => Q(1),
      I5 => Q(0),
      O => rx_fsm_reset_done_int_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_15 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_15 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_16 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    data_out : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    reset_time_out_reg_3 : in STD_LOGIC;
    reset_time_out_reg_4 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_16 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_16 is
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01550101"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]\,
      I1 => \FSM_sequential_rx_state_reg[0]_0\(0),
      I2 => Q(0),
      I3 => \FSM_sequential_rx_state[3]_i_4_n_0\,
      I4 => \FSM_sequential_rx_state_reg[0]_1\,
      I5 => \FSM_sequential_rx_state_reg[0]_2\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]_3\,
      I1 => pll0lock_sync,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FFFFFF100000"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => reset_time_out_reg_1,
      I2 => reset_time_out_reg_2,
      I3 => reset_time_out_i_5_n_0,
      I4 => reset_time_out_reg_3,
      I5 => reset_time_out_reg_4,
      O => reset_time_out_reg
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10DD10DDDC11DCDD"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => pll0lock_sync,
      I3 => Q(1),
      I4 => Q(0),
      I5 => data_out,
      O => reset_time_out_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_17 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_17;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_17 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_18 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_18;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_19 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_19;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_19 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_3 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_3 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_6 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_6 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_wait_done_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_4\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_7 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_7 is
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_sequential_tx_state[3]_i_3_n_0\,
      I2 => Q(1),
      I3 => \FSM_sequential_tx_state[3]_i_4_n_0\,
      I4 => Q(0),
      I5 => \FSM_sequential_tx_state_reg[0]\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F2F2F2F"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_2\,
      I1 => mmcm_lock_reclocked,
      I2 => Q(2),
      I3 => pll0lock_sync,
      I4 => \FSM_sequential_tx_state_reg[0]_3\,
      I5 => \FSM_sequential_tx_state_reg[0]_4\,
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45004500450045FF"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => \FSM_sequential_tx_state_reg[0]_0\,
      I3 => Q(2),
      I4 => pll0lock_sync,
      I5 => \FSM_sequential_tx_state_reg[0]_1\,
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(3),
      I2 => reset_time_out_reg_0,
      I3 => reset_time_out_i_3_n_0,
      I4 => reset_time_out_i_4_n_0,
      I5 => reset_time_out,
      O => init_wait_done_reg
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FF0F0404FF0F"
    )
        port map (
      I0 => Q(3),
      I1 => pll0lock_sync,
      I2 => Q(2),
      I3 => mmcm_lock_reclocked,
      I4 => Q(1),
      I5 => txresetdone_s3,
      O => reset_time_out_i_3_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FCCCE000FCC0E"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      I5 => pll0lock_sync,
      O => reset_time_out_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_8 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_8 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_9 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_9 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_9 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
AdcDLwZ0nnGzv5TDcZbvmo8juh/L7r5Ln9QY2yUn5cTlzy2XcpcLQGayMi2crxIOdsY0a0j06BBh
2G0Yx7+mmSCP8wBaCbZNdl9q6RkxtPSh6WAuSHXm6uCtOYYpNi8vS/HdDMnXPMzt3RbsKYIqV7TA
uwYWzyNkbHn95y3mdm4=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LWithB7I+qbCaWfpMubGNmSmgHQTq4UYcDCxKCGZmRe46zK0DYPMwqa5GFnuRTd3FLcOqJPS6XmG
upS2SKFium4YLYLo2TTqX4ynd/rCINfdlmkH8Qf0clbCGWyqDGZmilIblfHxH7pWFLRAkqEKfoPs
LcZnpqZSTfxd6NvWF1HzqDAdN8ul5soqkijwDoTeZgpCRISABxo2X+9pbEvxjIii8YJOTjOfgD9d
9oBJaUUuqzT410kXBpw5o92pxO1hRDwoBn1ADzSBD1ph1lPeA+sdioNX0AksR5VXueFkh49q2FLS
t8lv0fFY+H6zKnqaskZOCHhBv7SBQMJbhdZGtA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rCud1181VYLRaXsjLGfLdVX3LCQlqn2v6niJakuMmKtjkJzI7B9gFJS3sqSNHbeZuKa1WgAzjHbs
782/OQwcUiZSzte8OOnp/Ncp5cBb1D/xqmyQCfF12Ev667AiqPOetB4/oQ8cjkL4smwUIaYhz33w
EIG3XPA9IdRjvXrNxe4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DXao4pfwceV66rnzLhbOfqmEARlTM4vKYGyYX4E6d7LJsoPz+gxCUvB/ViSTAiO7RS8+AtiCVzLZ
ToDGmWLZ4Ze5wnDFZ416NMZyj6n+CgQm7XCNiJ5Alp6cqYuV8darL2RZKuXwALEROzxzzmIp25N2
8wzECnSVhSRxY/P5zFjz1E1jmZThbqx9s4Srrn1WxvGbaQQgeiMJFS6ZpOsFA8cQNzr+QST0cC8m
4fIj4W1v8Rq8IX474kT+xHw4tl5NNtLolLik2M+XcmGtoiImAcx4CN/8bamFysZlQXeUZYaiEAZh
ZRMAiBpNffv6cRi4gIxPFCm8eUyAznmrF2wQIg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UErr2ZCX/IFyYtSnmq21xHIJzK4+4p+E/FlW18iDcl2SLC/5hvI+kxU5WVAITsumau6B/okZ+uAL
vTFiJ18TQFW4M8sTAJo2HkDbz73ZRfokFv7xtgutGQIIsQ5q4BAOhooZUGqJ5aMv6WnC1ospr7ZA
F9lU5AprL4BnKLOBlA6KhGqIsvDscYzJ7fh0xyAXygRmYqCznbpNsHq0CXSbDefZUzg/LV99Fx12
geJxiAoaqchO+zxvkQH62W8ePXjE9m033DZjTHwPLnf/xwfSTVf0RSilZSo5X4RTScvvLhKbNCjv
n+Cmqtm/8rFjZg4rYBq8L3YhS1yI9zjpcotZug==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
A1+dG2S8/AoEy9EHY7xRy9I662+w0enYmA14dFejc491yGTFjnX6NNCtrTPTeCG78F1eJ0GN3DBo
FFvmEzFRDt6BF0Fzo+Ihcur3Bp0wusHy9eDlmWgPMvgoCf/wMpQogUXl/TsKSPfCKY9dZMAH8J4w
LP1dHzM9UeTQEqXl2DnwexGtOjb12cDa8hz7yD4/Ba9V0yvxilbqUBnszG6rRD/Qll1H7caly9Ni
N/9yZ5MYDJWR8RfVaq2R5v9aq6M9WTmitR5cN3JYnF72dCZ2GCjQIdX5sICewDfvOWqjQQeTBVtk
adNzZ5GKBoOxvp1c6nmeDnxaHBj3nj9a5FkZAw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KV/m9P9ZrqO7ZtXWWh19rPE5KmzOSDOzchxMolLN0TOl1YJxOsjrsWQ7/7pSQeESCAhu6cyQdOaI
yEcXjmHS4ohphSRR1HzPNar6mbaIc788TZqD+snPS5lT8jg0KMmJV3ULX2jYR1V7zIEy2nV79ho0
Y+aY4ZQHH4qRGVLhjX4gOBRUWJeDhDj8x2siH82nPaUZewwdP7RxElbypiopDx0PkruBXBap8Jwg
S27bALei3+ug5bMEK6Okfx8ReSbLiEYLOSkrwOZ0dCnSQmdAKQ1Wmn9YOes2Y1JbTM6lpyyjxnAK
FVzvhMLIEr9e0ybWMhOk575AKmEu+zO5tp5/rQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
G6jT5kkJYq9kHrjRy2NNDAsJwMcUAxTTSDBc1UGyogRouKd/lQ5TrsaxZU7PdQh4+dLMeAb9GTLN
mUF8VDY7TLE+VIdh4oqI5jJKSyh/hW6kFTVPXQgpTBTVbAysDLd5LTt2MTustEmSUd4ufdKqddSp
GRr8yaSfEQqW9P2gfYHOa4o2BgLrJ5tcVDhlgpTJTdW3Xq+Tx+ykDNpCOrJidKIkrnFdWB0UrYEQ
b2MLBNiPMJcDw6PTvYJ9TOH3DFNc4OgI1nU4COcSYU+gpMb8AYJKAGANknJ/tHb70W3b7RbY0ve+
TraEXB9+FfAl6T05Ksa1x+20LiqE+4bgfnPrEWI74oiGHYqe7WB+Bxis9Hbxqr5O2rpJ8I8GW6kR
o7iv49fdM+Nh17Y5fG+KgZ2I4azS7VdSoh7wydOFxSOo1I4MfeFa4W6S4n1IqlFWY/8tqkdoCLQP
XdLEWVESPK3ZCMUSa+w+msjGOeNZUy09Y+EiyY5y0UnTWur8/zFlfNBa

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XjuQri0CC9+3HgQKoYZx1bqSi79+B9g7kl/OOfe9fhHATgKwWKNx3svOkQqIdltwth7Dgiqf6d03
nVvr+gr2gHrFN7N0qa/uYh7vmVE1xGjXxyY7uyhsOR6LfugO9ki8lOO1++c2LQKxHDgQ8hKm1PLQ
kvb09oGJMMweKMiCcJ/10FvMQsr9/Ri8SFRet+X6HMBnAQkse7CEgjSB/F/kDDo+CDVVxJjFCFVE
Zxld+zWy9pSMeowKQUXwJsnG6u62+xe7Gh+A39kx25rfKNzxbzthIytOe6sCDvK7SFqpTRR8iHMw
7BSn6KHEY193DPwdHu2NKrAxLTlU59GaIHt0Og==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xGKAIp/zmGrqlX57+IX8XiGsjdabkGADEJN+w1lpy1sOY8U687dSP/S+3A9LB+dxFopDf9evM+aJ
zfnPIRs88b+XNcr30VFsUKqol8/l8dKE335VUM7/KqjzoDeO9Im074rcNTNkrGihkLZg29+nc663
3Mp81nCgqIy0CjdjjNagQoybIfJypyUstIRQoUDgYy5+XFkOhi+YfLWplurnmVQMniJRgI6O/1Wy
W9Pz2Vp/coIqghLJ6rWwpcyelSEFsZohmhx5ISmWXdy1cJiJdAovZ30l1BoFu/YNw7R1Pqj9XEcl
HpPbXJK4OJ5Dq0kDlRkDoMsGGOwDymAnxmHP9w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E2NG2WE/XLIrTJ//5zp4MZShIlYUEv9C8pP6NLFXlu83G5ifj6iYac4aMWAf+vzNST79R1A5mtMV
N2NIrv0Qv8LKRziZAPxeN6IJ7god6ZYYAJAISE2uuOcUD9vNDXnbKF9j6gngTchOzQxAi7V3sTzT
c/Van++s7tDuKNrW7ySkgAXZGz/DVfGWD8vCrKbR///Pfr4B3G1uu4w7je1FwfY2zgdFIgWn15gY
PHv2bhn60bFHlcjaKKH5VtCFbN76jdD182AP91tB9cTsYHQypzg6MGu99UwjP+b225lPmH5xHuBk
mKPETCrQgu1JNXUt6YUv/ZwMr0C4waD0BcvelA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 228032)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  port (
    data_in : out STD_LOGIC;
    gt0_rxuserrdy_t : out STD_LOGIC;
    gt0_gtrxreset_gt : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg6 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_out : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \^gt0_rxuserrdy_t\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \init_wait_done_i_1__1_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_4__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_6_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_data_valid_n_4 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_1 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_i_5_n_0 : STD_LOGIC;
  signal time_out_100us_i_6_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_2ms_i_5__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_6_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal \time_out_wait_bypass_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_n_3\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_8_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_10\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_8\ : label is "soft_lutpair69";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reset_time_out_i_2__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reset_time_out_i_3__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reset_time_out_i_4__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of reset_time_out_i_6 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of time_out_100us_i_6 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of time_out_1us_i_3 : label is "soft_lutpair78";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of time_tlock_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1__0\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4__0\ : label is "soft_lutpair73";
begin
  data_in <= \^data_in\;
  gt0_rxuserrdy_t <= \^gt0_rxuserrdy_t\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8000AF00"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF75FF55"
    )
        port map (
      I0 => rx_state(0),
      I1 => reset_time_out_reg_n_0,
      I2 => time_tlock_max,
      I3 => rx_state(1),
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100005551555"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1BFF1B1B1B1B1B"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => reset_time_out_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => init_wait_done_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000151"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFFFFF"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => time_out_2ms_reg_n_0,
      I2 => reset_time_out_reg_n_0,
      I3 => rx_state(1),
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(2),
      I2 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD0000000000000"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => rx_state(0),
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(0),
      Q => rx_state(0),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(1),
      Q => rx_state(1),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(3),
      Q => rx_state(3),
      R => \out\(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^gt0_rxuserrdy_t\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt0_rxuserrdy_t\,
      R => \out\(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => \out\(0)
    );
gt0_gtrxreset_gt_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTRXRESET,
      I1 => \^data_in\,
      I2 => gt0_gtrxreset_gt_d1_reg,
      O => gt0_gtrxreset_gt
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => GTRXRESET,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => GTRXRESET,
      R => \out\(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__2\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__2\(2)
    );
\init_wait_count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(2),
      O => \init_wait_count[3]_i_1__1_n_0\
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__2\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__2\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3__0_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(5),
      O => init_wait_count
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4__0_n_0\,
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(5),
      O => \p_0_in__2\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      O => \init_wait_count[6]_i_3__0_n_0\
    );
\init_wait_count[6]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \init_wait_count[6]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[3]_i_1__1_n_0\,
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__1_n_0\
    );
\init_wait_done_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => \init_wait_count[6]_i_3__0_n_0\,
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => \init_wait_done_i_1__1_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__3\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__3\(6)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__3\(7)
    );
\mmcm_lock_count[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(1),
      I1 => rxresetdone_s3,
      O => \reset_time_out_i_2__0_n_0\
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      O => \reset_time_out_i_3__0_n_0\
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      O => \reset_time_out_i_4__0_n_0\
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55227762"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => reset_time_out_reg_0,
      I3 => rx_state(0),
      I4 => rx_state(1),
      O => reset_time_out_i_6_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_pll0lock_n_1,
      Q => reset_time_out_reg_n_0,
      S => \out\(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_5,
      Q => \^data_in\,
      R => \out\(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_0_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_0_sync_block_14
     port map (
      D(2) => \rx_state__0\(3),
      D(1 downto 0) => \rx_state__0\(1 downto 0),
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[1]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[3]\ => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[3]_0\ => \FSM_sequential_rx_state[3]_i_8_n_0\,
      \FSM_sequential_rx_state_reg[3]_1\ => \FSM_sequential_rx_state[3]_i_9_n_0\,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_in => \^data_in\,
      data_out => data_valid_sync,
      data_sync_reg1_0 => data_out,
      data_sync_reg6_0 => sync_data_valid_n_4,
      independent_clock_bufg => independent_clock_bufg,
      rx_fsm_reset_done_int_reg => time_out_1us_reg_n_0,
      rx_fsm_reset_done_int_reg_0 => reset_time_out_reg_n_0,
      rx_fsm_reset_done_int_reg_1 => time_out_100us_reg_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_sync_block_15
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_0_sync_block_16
     port map (
      E(0) => sync_pll0lock_n_0,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\(0) => \wait_time_cnt[6]_i_2__0_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \FSM_sequential_rx_state[3]_i_5_n_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => sync_data_valid_n_4,
      \FSM_sequential_rx_state_reg[0]_3\ => time_out_2ms_reg_n_0,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_out => data_valid_sync,
      gt0_pll0lock_out => gt0_pll0lock_out,
      independent_clock_bufg => independent_clock_bufg,
      reset_time_out_reg => sync_pll0lock_n_1,
      reset_time_out_reg_0 => \reset_time_out_i_2__0_n_0\,
      reset_time_out_reg_1 => \reset_time_out_i_3__0_n_0\,
      reset_time_out_reg_2 => \reset_time_out_i_4__0_n_0\,
      reset_time_out_reg_3 => reset_time_out_i_6_n_0,
      reset_time_out_reg_4 => reset_time_out_reg_n_0
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_rx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      data_sync_reg6_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_sync_block_19
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
time_out_100us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_100us_i_3_n_0,
      I2 => time_out_100us_i_4_n_0,
      I3 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(15),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      I2 => time_out_100us_i_5_n_0,
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(11),
      I5 => time_out_100us_i_6_n_0,
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => time_out_2ms_i_6_n_0,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(5),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_out_100us_i_5_n_0
    );
time_out_100us_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => time_out_100us_i_6_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_100us_i_2_n_0,
      I2 => time_out_1us_i_2_n_0,
      I3 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \time_out_2ms_i_4__0_n_0\,
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(10),
      I5 => time_out_1us_i_3_n_0,
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(11),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_2ms_i_3_n_0,
      I2 => \time_out_2ms_i_4__0_n_0\,
      I3 => \time_out_2ms_i_5__0_n_0\,
      I4 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => time_out_2ms_i_6_n_0,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(5),
      I5 => time_out_counter_reg(6),
      O => time_out_2ms_i_2_n_0
    );
time_out_2ms_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(18),
      O => time_out_2ms_i_3_n_0
    );
\time_out_2ms_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(3),
      O => \time_out_2ms_i_4__0_n_0\
    );
\time_out_2ms_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(19),
      O => \time_out_2ms_i_5__0_n_0\
    );
time_out_2ms_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_out_2ms_i_6_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_2ms_i_3_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(5),
      I5 => \time_out_2ms_i_5__0_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \time_out_counter_reg[16]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[16]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(19 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_4\,
      Q => time_out_counter_reg(19),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \time_out_wait_bypass_i_2__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => time_out_wait_bypass_i_1_n_0
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \time_out_wait_bypass_i_3__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(0),
      I4 => \time_out_wait_bypass_i_4__0_n_0\,
      O => \time_out_wait_bypass_i_2__0_n_0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      O => \time_out_wait_bypass_i_3__0_n_0\
    );
\time_out_wait_bypass_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(8),
      O => \time_out_wait_bypass_i_4__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_tlock_max1_carry_i_2_n_0,
      DI(1) => time_tlock_max1_carry_i_3_n_0,
      DI(0) => time_tlock_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_5_n_0,
      S(2) => time_tlock_max1_carry_i_6_n_0,
      S(1) => time_tlock_max1_carry_i_7_n_0,
      S(0) => time_tlock_max1_carry_i_8_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => time_out_counter_reg(15),
      DI(2) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \time_tlock_max1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => time_tlock_max1,
      CO(0) => \time_tlock_max1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \time_tlock_max1_carry__1_i_1_n_0\,
      DI(0) => \time_tlock_max1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \time_tlock_max1_carry__1_i_3_n_0\,
      S(0) => \time_tlock_max1_carry__1_i_4_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(19),
      I1 => time_out_counter_reg(18),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      O => \time_tlock_max1_carry__1_i_3_n_0\
    );
\time_tlock_max1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_4_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_8_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_out_wait_bypass_i_2__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt0__0\(2)
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt0__0\(3)
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(4)
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(3),
      O => \wait_time_cnt0__0\(5)
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(1),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4__0_n_0\,
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4__0_n_0\,
      O => \wait_time_cnt0__0\(6)
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(2),
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(3),
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(4),
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(5),
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(6),
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg_0 : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_t : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_sync_reg1_1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET0 : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal \^pll0_reset_reg_0\ : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \^gt0_txuserrdy_t\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal \^mmcm_reset\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal refclk_stable_count : STD_LOGIC;
  signal \refclk_stable_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_9_n_0\ : STD_LOGIC;
  signal refclk_stable_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \refclk_stable_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal refclk_stable_i_1_n_0 : STD_LOGIC;
  signal refclk_stable_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_PLL0LOCK_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_4_n_0 : STD_LOGIC;
  signal time_out_2ms_i_5_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_i_4_n_0 : STD_LOGIC;
  signal time_out_500us_i_5_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_3_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_4_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_5_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_6\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair90";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4\ : label is "soft_lutpair87";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_time_out_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \time_out_2ms_i_3__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of time_out_500us_i_5 : label is "soft_lutpair89";
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_2 : label is "soft_lutpair93";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair86";
begin
  PLL0_RESET_reg_0 <= \^pll0_reset_reg_0\;
  data_in <= \^data_in\;
  gt0_txuserrdy_t <= \^gt0_txuserrdy_t\;
  mmcm_reset <= \^mmcm_reset\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55400000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => tx_state(1),
      I2 => time_out_2ms_reg_n_0,
      I3 => tx_state(2),
      I4 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I5 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0D00"
    )
        port map (
      I0 => tx_state(2),
      I1 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(1),
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[1]_i_2_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0414040455555555"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(1),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBFBB"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_tlock_max_reg_n_0,
      I4 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      O => \tx_state__0\(3)
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404040404FFF0"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      I2 => tx_state(3),
      I3 => init_wait_done_reg_n_0,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(0),
      I4 => wait_time_cnt_reg(4),
      I5 => wait_time_cnt_reg(5),
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(1),
      Q => tx_state(1),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(3),
      Q => tx_state(3),
      R => \out\(0)
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      I4 => \^mmcm_reset\,
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => \^mmcm_reset\,
      R => \out\(0)
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => PLL0_RESET0,
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(2),
      I5 => \^pll0_reset_reg_0\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^pll0_reset_reg_0\,
      R => \out\(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt0_txuserrdy_t\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt0_txuserrdy_t\,
      R => \out\(0)
    );
gtpe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTTXRESET,
      I1 => \^data_in\,
      I2 => gtpe2_i,
      O => gt0_gttxreset_in0_out
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => GTTXRESET,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => GTTXRESET,
      R => \out\(0)
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(2),
      O => \init_wait_count[3]_i_1__0_n_0\
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(5),
      O => init_wait_count
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4_n_0\,
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      O => \init_wait_count[6]_i_3_n_0\
    );
\init_wait_count[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \init_wait_count[6]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[3]_i_1__0_n_0\,
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => \init_wait_count[6]_i_3_n_0\,
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => mmcm_lock_reclocked_i_2_n_0,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3F00000020"
    )
        port map (
      I0 => PLL0_RESET0,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(2),
      I5 => pll_reset_asserted_reg_n_0,
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => refclk_stable_reg_n_0,
      I1 => pll_reset_asserted_reg_n_0,
      I2 => gt0_pll0refclklost_out,
      O => PLL0_RESET0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => \out\(0)
    );
\refclk_stable_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_3_n_0\,
      I1 => \refclk_stable_count[0]_i_4_n_0\,
      I2 => \refclk_stable_count[0]_i_5_n_0\,
      I3 => \refclk_stable_count[0]_i_6_n_0\,
      O => refclk_stable_count
    );
\refclk_stable_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(28),
      I1 => refclk_stable_count_reg(21),
      I2 => refclk_stable_count_reg(23),
      I3 => refclk_stable_count_reg(25),
      O => \refclk_stable_count[0]_i_10_n_0\
    );
\refclk_stable_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => refclk_stable_count_reg(26),
      I1 => refclk_stable_count_reg(11),
      I2 => refclk_stable_count_reg(13),
      I3 => refclk_stable_count_reg(20),
      O => \refclk_stable_count[0]_i_11_n_0\
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => refclk_stable_count_reg(18),
      I1 => refclk_stable_count_reg(6),
      I2 => refclk_stable_count_reg(22),
      I3 => refclk_stable_count_reg(29),
      I4 => \refclk_stable_count[0]_i_8_n_0\,
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      I1 => refclk_stable_count_reg(14),
      I2 => refclk_stable_count_reg(31),
      I3 => refclk_stable_count_reg(8),
      I4 => \refclk_stable_count[0]_i_9_n_0\,
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => refclk_stable_count_reg(17),
      I1 => refclk_stable_count_reg(12),
      I2 => refclk_stable_count_reg(19),
      I3 => refclk_stable_count_reg(16),
      I4 => \refclk_stable_count[0]_i_10_n_0\,
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => refclk_stable_count_reg(1),
      I1 => refclk_stable_count_reg(7),
      I2 => refclk_stable_count_reg(30),
      I3 => refclk_stable_count_reg(9),
      I4 => \refclk_stable_count[0]_i_11_n_0\,
      O => \refclk_stable_count[0]_i_6_n_0\
    );
\refclk_stable_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      O => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => refclk_stable_count_reg(10),
      I1 => refclk_stable_count_reg(27),
      I2 => refclk_stable_count_reg(3),
      I3 => refclk_stable_count_reg(2),
      O => \refclk_stable_count[0]_i_8_n_0\
    );
\refclk_stable_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(4),
      I1 => refclk_stable_count_reg(24),
      I2 => refclk_stable_count_reg(15),
      I3 => refclk_stable_count_reg(5),
      O => \refclk_stable_count[0]_i_9_n_0\
    );
\refclk_stable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_7\,
      Q => refclk_stable_count_reg(0),
      R => '0'
    );
\refclk_stable_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(2) => \refclk_stable_count_reg[0]_i_2_n_1\,
      CO(1) => \refclk_stable_count_reg[0]_i_2_n_2\,
      CO(0) => \refclk_stable_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refclk_stable_count_reg[0]_i_2_n_4\,
      O(2) => \refclk_stable_count_reg[0]_i_2_n_5\,
      O(1) => \refclk_stable_count_reg[0]_i_2_n_6\,
      O(0) => \refclk_stable_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => refclk_stable_count_reg(3 downto 1),
      S(0) => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_5\,
      Q => refclk_stable_count_reg(10),
      R => '0'
    );
\refclk_stable_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_4\,
      Q => refclk_stable_count_reg(11),
      R => '0'
    );
\refclk_stable_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_7\,
      Q => refclk_stable_count_reg(12),
      R => '0'
    );
\refclk_stable_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[12]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[12]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[12]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[12]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[12]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(15 downto 12)
    );
\refclk_stable_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_6\,
      Q => refclk_stable_count_reg(13),
      R => '0'
    );
\refclk_stable_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_5\,
      Q => refclk_stable_count_reg(14),
      R => '0'
    );
\refclk_stable_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_4\,
      Q => refclk_stable_count_reg(15),
      R => '0'
    );
\refclk_stable_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_7\,
      Q => refclk_stable_count_reg(16),
      R => '0'
    );
\refclk_stable_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[16]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[16]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[16]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[16]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[16]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(19 downto 16)
    );
\refclk_stable_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_6\,
      Q => refclk_stable_count_reg(17),
      R => '0'
    );
\refclk_stable_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_5\,
      Q => refclk_stable_count_reg(18),
      R => '0'
    );
\refclk_stable_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_4\,
      Q => refclk_stable_count_reg(19),
      R => '0'
    );
\refclk_stable_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_6\,
      Q => refclk_stable_count_reg(1),
      R => '0'
    );
\refclk_stable_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_7\,
      Q => refclk_stable_count_reg(20),
      R => '0'
    );
\refclk_stable_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[20]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[20]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[20]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[20]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[20]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(23 downto 20)
    );
\refclk_stable_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_6\,
      Q => refclk_stable_count_reg(21),
      R => '0'
    );
\refclk_stable_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_5\,
      Q => refclk_stable_count_reg(22),
      R => '0'
    );
\refclk_stable_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_4\,
      Q => refclk_stable_count_reg(23),
      R => '0'
    );
\refclk_stable_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_7\,
      Q => refclk_stable_count_reg(24),
      R => '0'
    );
\refclk_stable_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[24]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[24]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[24]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[24]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[24]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(27 downto 24)
    );
\refclk_stable_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_6\,
      Q => refclk_stable_count_reg(25),
      R => '0'
    );
\refclk_stable_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_5\,
      Q => refclk_stable_count_reg(26),
      R => '0'
    );
\refclk_stable_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_4\,
      Q => refclk_stable_count_reg(27),
      R => '0'
    );
\refclk_stable_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_7\,
      Q => refclk_stable_count_reg(28),
      R => '0'
    );
\refclk_stable_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refclk_stable_count_reg[28]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[28]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[28]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[28]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[28]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(31 downto 28)
    );
\refclk_stable_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_6\,
      Q => refclk_stable_count_reg(29),
      R => '0'
    );
\refclk_stable_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_5\,
      Q => refclk_stable_count_reg(2),
      R => '0'
    );
\refclk_stable_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_5\,
      Q => refclk_stable_count_reg(30),
      R => '0'
    );
\refclk_stable_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_4\,
      Q => refclk_stable_count_reg(31),
      R => '0'
    );
\refclk_stable_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_4\,
      Q => refclk_stable_count_reg(3),
      R => '0'
    );
\refclk_stable_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_7\,
      Q => refclk_stable_count_reg(4),
      R => '0'
    );
\refclk_stable_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(3) => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[4]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[4]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[4]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[4]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[4]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(7 downto 4)
    );
\refclk_stable_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_6\,
      Q => refclk_stable_count_reg(5),
      R => '0'
    );
\refclk_stable_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_5\,
      Q => refclk_stable_count_reg(6),
      R => '0'
    );
\refclk_stable_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_4\,
      Q => refclk_stable_count_reg(7),
      R => '0'
    );
\refclk_stable_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_7\,
      Q => refclk_stable_count_reg(8),
      R => '0'
    );
\refclk_stable_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[8]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[8]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[8]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[8]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[8]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(11 downto 8)
    );
\refclk_stable_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_6\,
      Q => refclk_stable_count_reg(9),
      R => '0'
    );
refclk_stable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_6_n_0\,
      I1 => \refclk_stable_count[0]_i_5_n_0\,
      I2 => \refclk_stable_count[0]_i_4_n_0\,
      I3 => \refclk_stable_count[0]_i_3_n_0\,
      O => refclk_stable_i_1_n_0
    );
refclk_stable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => refclk_stable_i_1_n_0,
      Q => refclk_stable_reg_n_0,
      R => '0'
    );
reset_time_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      O => reset_time_out_i_2_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_PLL0LOCK_n_1,
      Q => reset_time_out,
      R => \out\(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_PLL0LOCK: entity work.gig_ethernet_pcs_pma_0_sync_block_7
     port map (
      E(0) => sync_PLL0LOCK_n_0,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \FSM_sequential_tx_state_reg[0]_0\ => time_out_500us_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_1\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_2\ => \FSM_sequential_tx_state[3]_i_7_n_0\,
      \FSM_sequential_tx_state_reg[0]_3\ => refclk_stable_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_4\ => pll_reset_asserted_reg_n_0,
      Q(3 downto 0) => tx_state(3 downto 0),
      gt0_pll0lock_out => gt0_pll0lock_out,
      independent_clock_bufg => independent_clock_bufg,
      init_wait_done_reg => sync_PLL0LOCK_n_1,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => init_wait_done_reg_n_0,
      reset_time_out_reg_0 => reset_time_out_i_2_n_0,
      txresetdone_s3 => txresetdone_s3
    );
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_0_sync_block_8
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_sync_block_9
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_sync_block_12
     port map (
      data_in => \^data_in\,
      data_out => tx_fsm_reset_done_int_s2,
      data_sync_reg1_0 => data_sync_reg1
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => time_out_500us_i_3_n_0,
      I1 => \time_out_2ms_i_3__0_n_0\,
      I2 => time_out_2ms_i_4_n_0,
      I3 => time_out_2ms_i_5_n_0,
      I4 => time_out_500us_i_4_n_0,
      O => time_out_2ms
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(0),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(18),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(17),
      O => time_out_2ms_i_5_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAABA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => time_tlock_max_i_5_n_0,
      I4 => time_out_500us_i_4_n_0,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(15),
      I5 => time_out_500us_i_5_n_0,
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(14),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(14),
      O => time_out_500us_i_4_n_0
    );
time_out_500us_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      O => time_out_500us_i_5_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => time_out_wait_bypass_i_2_n_0,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => time_out_wait_bypass_i_3_n_0,
      I1 => time_out_wait_bypass_i_4_n_0,
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(11),
      I5 => time_out_wait_bypass_i_5_n_0,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(10),
      O => time_out_wait_bypass_i_3_n_0
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      O => time_out_wait_bypass_i_4_n_0
    );
time_out_wait_bypass_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(2),
      I5 => wait_bypass_count_reg(3),
      O => time_out_wait_bypass_i_5_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_tlock_max_i_3_n_0,
      I3 => time_tlock_max_i_4_n_0,
      I4 => time_tlock_max_i_5_n_0,
      I5 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(12),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(18),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(15),
      I5 => time_out_counter_reg(16),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(0),
      I4 => time_out_counter_reg(2),
      I5 => time_out_counter_reg(1),
      O => time_tlock_max_i_5_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^data_in\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^data_in\,
      R => \out\(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_wait_bypass_i_2_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => wait_time_cnt0(2)
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => wait_time_cnt0(3)
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(4)
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(3),
      O => wait_time_cnt0(5)
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4_n_0\,
      O => sel
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4_n_0\,
      O => wait_time_cnt0(6)
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(2),
      Q => wait_time_cnt_reg(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(3),
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(4),
      Q => wait_time_cnt_reg(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(5),
      Q => wait_time_cnt_reg(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(6),
      Q => wait_time_cnt_reg(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    DRPDI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[7]_0\ : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \original_rd_data_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal drp_op_done : STD_LOGIC;
  signal drp_op_done_o_i_1_n_0 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_in_sync : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_rd_data : STD_LOGIC;
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal original_rd_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal rst_sync : STD_LOGIC;
  signal rxpmaresetdone_s : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  signal rxpmaresetdone_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair117";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of drp_op_done_o_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of gtpe2_i_i_1 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_10 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_11 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_12 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_13 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_14 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_15 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_16 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_17 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_18 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_19 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of gtpe2_i_i_4 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_5 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_6 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_8 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_9 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair110";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_2_in,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => flag,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \original_rd_data_reg[0]_0\,
      I1 => flag,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rxpmaresetdone_ss,
      I2 => rxpmaresetdone_sss,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => rxpmaresetdone_ss,
      I2 => p_1_in,
      I3 => \original_rd_data_reg[0]_0\,
      I4 => p_3_in,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_3_in,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => gtrxreset_ss,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => flag
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      PRE => rst_sync,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_2_in
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_3_in
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => p_0_in
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
drp_op_done_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => flag,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => drp_op_done,
      O => drp_op_done_o_i_1_n_0
    );
drp_op_done_o_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => gtrxreset_ss,
      D => drp_op_done_o_i_1_n_0,
      Q => drp_op_done
    );
flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => flag,
      I1 => flag_reg_n_0,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => p_3_in,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => drp_op_done,
      O => \FSM_onehot_state_reg[7]_0\
    );
gtpe2_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(9),
      I3 => drp_op_done,
      O => DRPDI(9)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(8),
      I3 => drp_op_done,
      O => DRPDI(8)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(7),
      I3 => drp_op_done,
      O => DRPDI(7)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(6),
      I3 => drp_op_done,
      O => DRPDI(6)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(5),
      I3 => drp_op_done,
      O => DRPDI(5)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(4),
      I3 => drp_op_done,
      O => DRPDI(4)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(3),
      I3 => drp_op_done,
      O => DRPDI(3)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(2),
      I3 => drp_op_done,
      O => DRPDI(2)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(1),
      I3 => drp_op_done,
      O => DRPDI(1)
    );
gtpe2_i_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(0),
      I3 => drp_op_done,
      O => DRPDI(0)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => \FSM_onehot_state_reg[5]_0\
    );
gtpe2_i_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drp_op_done,
      O => DRPADDR(0)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(15),
      I3 => drp_op_done,
      O => DRPDI(15)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(14),
      I3 => drp_op_done,
      O => DRPDI(14)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(13),
      I3 => drp_op_done,
      O => DRPDI(13)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(12),
      I3 => drp_op_done,
      O => DRPDI(12)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rd_data_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => DRPDI(11)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(10),
      I3 => drp_op_done,
      O => DRPDI(10)
    );
gtrxreset_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_3_in,
      I2 => gtrxreset_ss,
      I3 => p_1_in,
      I4 => p_0_in,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \gtrxreset_i__0\
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \gtrxreset_i__0\,
      Q => GTRXRESET
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_in_sync,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
\original_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => original_rd_data0
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(0),
      I1 => original_rd_data(0),
      I2 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(10),
      I1 => original_rd_data(10),
      I2 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(11),
      I1 => original_rd_data(11),
      I2 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(12),
      I1 => original_rd_data(12),
      I2 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(13),
      I1 => original_rd_data(13),
      I2 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(14),
      I1 => original_rd_data(14),
      I2 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => next_rd_data
    );
\rd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(15),
      I1 => original_rd_data(15),
      I2 => flag_reg_n_0,
      O => \rd_data[15]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(1),
      I1 => original_rd_data(1),
      I2 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(2),
      I1 => original_rd_data(2),
      I2 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(3),
      I1 => original_rd_data(3),
      I2 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(4),
      I1 => original_rd_data(4),
      I2 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(5),
      I1 => original_rd_data(5),
      I2 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(6),
      I1 => original_rd_data(6),
      I2 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(7),
      I1 => original_rd_data(7),
      I2 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(8),
      I1 => original_rd_data(8),
      I2 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(9),
      I1 => original_rd_data(9),
      I2 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[0]_i_1_n_0\,
      Q => in7(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[10]_i_1_n_0\,
      Q => in7(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[11]_i_1_n_0\,
      Q => \rd_data_reg_n_0_[11]\
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[12]_i_1_n_0\,
      Q => in7(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[13]_i_1_n_0\,
      Q => in7(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[14]_i_1_n_0\,
      Q => in7(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[15]_i_2_n_0\,
      Q => in7(15)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[1]_i_1_n_0\,
      Q => in7(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[2]_i_1_n_0\,
      Q => in7(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[3]_i_1_n_0\,
      Q => in7(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[4]_i_1_n_0\,
      Q => in7(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[5]_i_1_n_0\,
      Q => in7(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[6]_i_1_n_0\,
      Q => in7(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[7]_i_1_n_0\,
      Q => in7(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[8]_i_1_n_0\,
      Q => in7(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[9]_i_1_n_0\,
      Q => in7(9)
    );
rxpmaresetdone_s_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_sync,
      Q => rxpmaresetdone_s
    );
rxpmaresetdone_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_s,
      Q => rxpmaresetdone_ss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
sync_gtrxreset_in: entity work.gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      CLK => CLK,
      SR(0) => SR(0),
      reset_out => gtrxreset_in_sync
    );
sync_rst_sync: entity work.gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      CLK => CLK,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.gig_ethernet_pcs_pma_0_sync_block_6
     port map (
      CLK => CLK,
      data_in => data_in,
      data_out => rxpmaresetdone_sync
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
AdcDLwZ0nnGzv5TDcZbvmo8juh/L7r5Ln9QY2yUn5cTlzy2XcpcLQGayMi2crxIOdsY0a0j06BBh
2G0Yx7+mmSCP8wBaCbZNdl9q6RkxtPSh6WAuSHXm6uCtOYYpNi8vS/HdDMnXPMzt3RbsKYIqV7TA
uwYWzyNkbHn95y3mdm4=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LWithB7I+qbCaWfpMubGNmSmgHQTq4UYcDCxKCGZmRe46zK0DYPMwqa5GFnuRTd3FLcOqJPS6XmG
upS2SKFium4YLYLo2TTqX4ynd/rCINfdlmkH8Qf0clbCGWyqDGZmilIblfHxH7pWFLRAkqEKfoPs
LcZnpqZSTfxd6NvWF1HzqDAdN8ul5soqkijwDoTeZgpCRISABxo2X+9pbEvxjIii8YJOTjOfgD9d
9oBJaUUuqzT410kXBpw5o92pxO1hRDwoBn1ADzSBD1ph1lPeA+sdioNX0AksR5VXueFkh49q2FLS
t8lv0fFY+H6zKnqaskZOCHhBv7SBQMJbhdZGtA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rCud1181VYLRaXsjLGfLdVX3LCQlqn2v6niJakuMmKtjkJzI7B9gFJS3sqSNHbeZuKa1WgAzjHbs
782/OQwcUiZSzte8OOnp/Ncp5cBb1D/xqmyQCfF12Ev667AiqPOetB4/oQ8cjkL4smwUIaYhz33w
EIG3XPA9IdRjvXrNxe4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DXao4pfwceV66rnzLhbOfqmEARlTM4vKYGyYX4E6d7LJsoPz+gxCUvB/ViSTAiO7RS8+AtiCVzLZ
ToDGmWLZ4Ze5wnDFZ416NMZyj6n+CgQm7XCNiJ5Alp6cqYuV8darL2RZKuXwALEROzxzzmIp25N2
8wzECnSVhSRxY/P5zFjz1E1jmZThbqx9s4Srrn1WxvGbaQQgeiMJFS6ZpOsFA8cQNzr+QST0cC8m
4fIj4W1v8Rq8IX474kT+xHw4tl5NNtLolLik2M+XcmGtoiImAcx4CN/8bamFysZlQXeUZYaiEAZh
ZRMAiBpNffv6cRi4gIxPFCm8eUyAznmrF2wQIg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UErr2ZCX/IFyYtSnmq21xHIJzK4+4p+E/FlW18iDcl2SLC/5hvI+kxU5WVAITsumau6B/okZ+uAL
vTFiJ18TQFW4M8sTAJo2HkDbz73ZRfokFv7xtgutGQIIsQ5q4BAOhooZUGqJ5aMv6WnC1ospr7ZA
F9lU5AprL4BnKLOBlA6KhGqIsvDscYzJ7fh0xyAXygRmYqCznbpNsHq0CXSbDefZUzg/LV99Fx12
geJxiAoaqchO+zxvkQH62W8ePXjE9m033DZjTHwPLnf/xwfSTVf0RSilZSo5X4RTScvvLhKbNCjv
n+Cmqtm/8rFjZg4rYBq8L3YhS1yI9zjpcotZug==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
A1+dG2S8/AoEy9EHY7xRy9I662+w0enYmA14dFejc491yGTFjnX6NNCtrTPTeCG78F1eJ0GN3DBo
FFvmEzFRDt6BF0Fzo+Ihcur3Bp0wusHy9eDlmWgPMvgoCf/wMpQogUXl/TsKSPfCKY9dZMAH8J4w
LP1dHzM9UeTQEqXl2DnwexGtOjb12cDa8hz7yD4/Ba9V0yvxilbqUBnszG6rRD/Qll1H7caly9Ni
N/9yZ5MYDJWR8RfVaq2R5v9aq6M9WTmitR5cN3JYnF72dCZ2GCjQIdX5sICewDfvOWqjQQeTBVtk
adNzZ5GKBoOxvp1c6nmeDnxaHBj3nj9a5FkZAw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KV/m9P9ZrqO7ZtXWWh19rPE5KmzOSDOzchxMolLN0TOl1YJxOsjrsWQ7/7pSQeESCAhu6cyQdOaI
yEcXjmHS4ohphSRR1HzPNar6mbaIc788TZqD+snPS5lT8jg0KMmJV3ULX2jYR1V7zIEy2nV79ho0
Y+aY4ZQHH4qRGVLhjX4gOBRUWJeDhDj8x2siH82nPaUZewwdP7RxElbypiopDx0PkruBXBap8Jwg
S27bALei3+ug5bMEK6Okfx8ReSbLiEYLOSkrwOZ0dCnSQmdAKQ1Wmn9YOes2Y1JbTM6lpyyjxnAK
FVzvhMLIEr9e0ybWMhOk575AKmEu+zO5tp5/rQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
G6jT5kkJYq9kHrjRy2NNDAsJwMcUAxTTSDBc1UGyogRouKd/lQ5TrsaxZU7PdQh4+dLMeAb9GTLN
mUF8VDY7TLE+VIdh4oqI5jJKSyh/hW6kFTVPXQgpTBTVbAysDLd5LTt2MTustEmSUd4ufdKqddSp
GRr8yaSfEQqW9P2gfYHOa4o2BgLrJ5tcVDhlgpTJTdW3Xq+Tx+ykDNpCOrJidKIkrnFdWB0UrYEQ
b2MLBNiPMJcDw6PTvYJ9TOH3DFNc4OgI1nU4COcSYU+gpMb8AYJKAGANknJ/tHb70W3b7RbY0ve+
TraEXB9+FfAl6T05Ksa1x+20LiqE+4bgfnPrEWI74oiGHYqe7WB+Bxis9Hbxqr5O2rpJ8I8GW6kR
o7iv49fdM+Nh17Y5fG+KgZ2I4azS7VdSoh7wydOFxSOo1I4MfeFa4W6S4n1IqlFWY/8tqkdoCLQP
XdLEWVESPK3ZCMUSa+w+msjGOeNZUy09Y+EiyY5y0UnTWur8/zFlfNBa

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XjuQri0CC9+3HgQKoYZx1bqSi79+B9g7kl/OOfe9fhHATgKwWKNx3svOkQqIdltwth7Dgiqf6d03
nVvr+gr2gHrFN7N0qa/uYh7vmVE1xGjXxyY7uyhsOR6LfugO9ki8lOO1++c2LQKxHDgQ8hKm1PLQ
kvb09oGJMMweKMiCcJ/10FvMQsr9/Ri8SFRet+X6HMBnAQkse7CEgjSB/F/kDDo+CDVVxJjFCFVE
Zxld+zWy9pSMeowKQUXwJsnG6u62+xe7Gh+A39kx25rfKNzxbzthIytOe6sCDvK7SFqpTRR8iHMw
7BSn6KHEY193DPwdHu2NKrAxLTlU59GaIHt0Og==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xGKAIp/zmGrqlX57+IX8XiGsjdabkGADEJN+w1lpy1sOY8U687dSP/S+3A9LB+dxFopDf9evM+aJ
zfnPIRs88b+XNcr30VFsUKqol8/l8dKE335VUM7/KqjzoDeO9Im074rcNTNkrGihkLZg29+nc663
3Mp81nCgqIy0CjdjjNagQoybIfJypyUstIRQoUDgYy5+XFkOhi+YfLWplurnmVQMniJRgI6O/1Wy
W9Pz2Vp/coIqghLJ6rWwpcyelSEFsZohmhx5ISmWXdy1cJiJdAovZ30l1BoFu/YNw7R1Pqj9XEcl
HpPbXJK4OJ5Dq0kDlRkDoMsGGOwDymAnxmHP9w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E2NG2WE/XLIrTJ//5zp4MZShIlYUEv9C8pP6NLFXlu83G5ifj6iYac4aMWAf+vzNST79R1A5mtMV
N2NIrv0Qv8LKRziZAPxeN6IJ7god6ZYYAJAISE2uuOcUD9vNDXnbKF9j6gngTchOzQxAi7V3sTzT
c/Van++s7tDuKNrW7ySkgAXZGz/DVfGWD8vCrKbR///Pfr4B3G1uu4w7je1FwfY2zgdFIgWn15gY
PHv2bhn60bFHlcjaKKH5VtCFbN76jdD182AP91tB9cTsYHQypzg6MGu99UwjP+b225lPmH5xHuBk
mKPETCrQgu1JNXUt6YUv/ZwMr0C4waD0BcvelA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69440)
`protect data_block
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
vOv+drc+METFd+mdkFQ=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtpe2_i_7 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  signal DRPADDR : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GTRXRESET : STD_LOGIC;
  signal gtpe2_i_n_0 : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_43 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_63 : STD_LOGIC;
  signal gtpe2_i_n_64 : STD_LOGIC;
  signal gtpe2_i_n_65 : STD_LOGIC;
  signal gtpe2_i_n_66 : STD_LOGIC;
  signal gtpe2_i_n_67 : STD_LOGIC;
  signal gtpe2_i_n_68 : STD_LOGIC;
  signal gtpe2_i_n_69 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_70 : STD_LOGIC;
  signal gtpe2_i_n_71 : STD_LOGIC;
  signal gtpe2_i_n_72 : STD_LOGIC;
  signal gtpe2_i_n_73 : STD_LOGIC;
  signal gtpe2_i_n_74 : STD_LOGIC;
  signal gtpe2_i_n_75 : STD_LOGIC;
  signal gtpe2_i_n_76 : STD_LOGIC;
  signal gtpe2_i_n_77 : STD_LOGIC;
  signal gtpe2_i_n_78 : STD_LOGIC;
  signal gtpe2_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_1 : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_11 : STD_LOGIC;
  signal gtrxreset_seq_i_n_12 : STD_LOGIC;
  signal gtrxreset_seq_i_n_13 : STD_LOGIC;
  signal gtrxreset_seq_i_n_14 : STD_LOGIC;
  signal gtrxreset_seq_i_n_15 : STD_LOGIC;
  signal gtrxreset_seq_i_n_16 : STD_LOGIC;
  signal gtrxreset_seq_i_n_17 : STD_LOGIC;
  signal gtrxreset_seq_i_n_18 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_3 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute box_type : string;
  attribute box_type of gtpe2_i : label is "PRIMITIVE";
begin
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE106001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8 downto 5) => B"0000",
      DRPADDR(4) => DRPADDR(4),
      DRPADDR(3 downto 1) => B"000",
      DRPADDR(0) => DRPADDR(4),
      DRPCLK => CLK,
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      DRPDO(15) => gtpe2_i_n_63,
      DRPDO(14) => gtpe2_i_n_64,
      DRPDO(13) => gtpe2_i_n_65,
      DRPDO(12) => gtpe2_i_n_66,
      DRPDO(11) => gtpe2_i_n_67,
      DRPDO(10) => gtpe2_i_n_68,
      DRPDO(9) => gtpe2_i_n_69,
      DRPDO(8) => gtpe2_i_n_70,
      DRPDO(7) => gtpe2_i_n_71,
      DRPDO(6) => gtpe2_i_n_72,
      DRPDO(5) => gtpe2_i_n_73,
      DRPDO(4) => gtpe2_i_n_74,
      DRPDO(3) => gtpe2_i_n_75,
      DRPDO(2) => gtpe2_i_n_76,
      DRPDO(1) => gtpe2_i_n_77,
      DRPDO(0) => gtpe2_i_n_78,
      DRPEN => gtrxreset_seq_i_n_18,
      DRPRDY => gtpe2_i_n_0,
      DRPWE => gtrxreset_seq_i_n_1,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => rxn,
      GTPRXP => rxp,
      GTPTXN => txn,
      GTPTXP => txp,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => GTRXRESET,
      GTTXRESET => gt0_gttxreset_in0_out,
      LOOPBACK(2 downto 0) => B"000",
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => gt0_pll0outclk_out,
      PLL0REFCLK => gt0_pll0outrefclk_out,
      PLL1CLK => gt0_pll1outclk_out,
      PLL1REFCLK => gt0_pll1outrefclk_out,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => gtpe2_i_n_8,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => gtpe2_i_3(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => gtpe2_i_4(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => gtpe2_i_2(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => gtpe2_i_5(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => gtpe2_i_6(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => reset,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtpe2_i_0,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt0_rxuserrdy_t,
      RXUSRCLK => gtpe2_i_7,
      RXUSRCLK2 => gtpe2_i_7,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 2) => B"00",
      TXCHARDISPMODE(1 downto 0) => gtpe2_i_8(1 downto 0),
      TXCHARDISPVAL(3 downto 2) => B"00",
      TXCHARDISPVAL(1 downto 0) => gtpe2_i_9(1 downto 0),
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => gtpe2_i_10(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"100",
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => gtpe2_i_n_43,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => gtpe2_i_1,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt0_txuserrdy_t,
      TXUSRCLK => gtpe2_i_7,
      TXUSRCLK2 => gtpe2_i_7
    );
gtrxreset_seq_i: entity work.gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
     port map (
      CLK => CLK,
      D(15) => gtpe2_i_n_63,
      D(14) => gtpe2_i_n_64,
      D(13) => gtpe2_i_n_65,
      D(12) => gtpe2_i_n_66,
      D(11) => gtpe2_i_n_67,
      D(10) => gtpe2_i_n_68,
      D(9) => gtpe2_i_n_69,
      D(8) => gtpe2_i_n_70,
      D(7) => gtpe2_i_n_71,
      D(6) => gtpe2_i_n_72,
      D(5) => gtpe2_i_n_73,
      D(4) => gtpe2_i_n_74,
      D(3) => gtpe2_i_n_75,
      D(2) => gtpe2_i_n_76,
      D(1) => gtpe2_i_n_77,
      D(0) => gtpe2_i_n_78,
      DRPADDR(0) => DRPADDR(4),
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      \FSM_onehot_state_reg[5]_0\ => gtrxreset_seq_i_n_1,
      \FSM_onehot_state_reg[7]_0\ => gtrxreset_seq_i_n_18,
      GTRXRESET => GTRXRESET,
      SR(0) => SR(0),
      data_in => gtpe2_i_n_28,
      \original_rd_data_reg[0]_0\ => gtpe2_i_n_0,
      reset_sync5 => reset_sync5
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
AdcDLwZ0nnGzv5TDcZbvmo8juh/L7r5Ln9QY2yUn5cTlzy2XcpcLQGayMi2crxIOdsY0a0j06BBh
2G0Yx7+mmSCP8wBaCbZNdl9q6RkxtPSh6WAuSHXm6uCtOYYpNi8vS/HdDMnXPMzt3RbsKYIqV7TA
uwYWzyNkbHn95y3mdm4=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LWithB7I+qbCaWfpMubGNmSmgHQTq4UYcDCxKCGZmRe46zK0DYPMwqa5GFnuRTd3FLcOqJPS6XmG
upS2SKFium4YLYLo2TTqX4ynd/rCINfdlmkH8Qf0clbCGWyqDGZmilIblfHxH7pWFLRAkqEKfoPs
LcZnpqZSTfxd6NvWF1HzqDAdN8ul5soqkijwDoTeZgpCRISABxo2X+9pbEvxjIii8YJOTjOfgD9d
9oBJaUUuqzT410kXBpw5o92pxO1hRDwoBn1ADzSBD1ph1lPeA+sdioNX0AksR5VXueFkh49q2FLS
t8lv0fFY+H6zKnqaskZOCHhBv7SBQMJbhdZGtA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rCud1181VYLRaXsjLGfLdVX3LCQlqn2v6niJakuMmKtjkJzI7B9gFJS3sqSNHbeZuKa1WgAzjHbs
782/OQwcUiZSzte8OOnp/Ncp5cBb1D/xqmyQCfF12Ev667AiqPOetB4/oQ8cjkL4smwUIaYhz33w
EIG3XPA9IdRjvXrNxe4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DXao4pfwceV66rnzLhbOfqmEARlTM4vKYGyYX4E6d7LJsoPz+gxCUvB/ViSTAiO7RS8+AtiCVzLZ
ToDGmWLZ4Ze5wnDFZ416NMZyj6n+CgQm7XCNiJ5Alp6cqYuV8darL2RZKuXwALEROzxzzmIp25N2
8wzECnSVhSRxY/P5zFjz1E1jmZThbqx9s4Srrn1WxvGbaQQgeiMJFS6ZpOsFA8cQNzr+QST0cC8m
4fIj4W1v8Rq8IX474kT+xHw4tl5NNtLolLik2M+XcmGtoiImAcx4CN/8bamFysZlQXeUZYaiEAZh
ZRMAiBpNffv6cRi4gIxPFCm8eUyAznmrF2wQIg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UErr2ZCX/IFyYtSnmq21xHIJzK4+4p+E/FlW18iDcl2SLC/5hvI+kxU5WVAITsumau6B/okZ+uAL
vTFiJ18TQFW4M8sTAJo2HkDbz73ZRfokFv7xtgutGQIIsQ5q4BAOhooZUGqJ5aMv6WnC1ospr7ZA
F9lU5AprL4BnKLOBlA6KhGqIsvDscYzJ7fh0xyAXygRmYqCznbpNsHq0CXSbDefZUzg/LV99Fx12
geJxiAoaqchO+zxvkQH62W8ePXjE9m033DZjTHwPLnf/xwfSTVf0RSilZSo5X4RTScvvLhKbNCjv
n+Cmqtm/8rFjZg4rYBq8L3YhS1yI9zjpcotZug==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
A1+dG2S8/AoEy9EHY7xRy9I662+w0enYmA14dFejc491yGTFjnX6NNCtrTPTeCG78F1eJ0GN3DBo
FFvmEzFRDt6BF0Fzo+Ihcur3Bp0wusHy9eDlmWgPMvgoCf/wMpQogUXl/TsKSPfCKY9dZMAH8J4w
LP1dHzM9UeTQEqXl2DnwexGtOjb12cDa8hz7yD4/Ba9V0yvxilbqUBnszG6rRD/Qll1H7caly9Ni
N/9yZ5MYDJWR8RfVaq2R5v9aq6M9WTmitR5cN3JYnF72dCZ2GCjQIdX5sICewDfvOWqjQQeTBVtk
adNzZ5GKBoOxvp1c6nmeDnxaHBj3nj9a5FkZAw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KV/m9P9ZrqO7ZtXWWh19rPE5KmzOSDOzchxMolLN0TOl1YJxOsjrsWQ7/7pSQeESCAhu6cyQdOaI
yEcXjmHS4ohphSRR1HzPNar6mbaIc788TZqD+snPS5lT8jg0KMmJV3ULX2jYR1V7zIEy2nV79ho0
Y+aY4ZQHH4qRGVLhjX4gOBRUWJeDhDj8x2siH82nPaUZewwdP7RxElbypiopDx0PkruBXBap8Jwg
S27bALei3+ug5bMEK6Okfx8ReSbLiEYLOSkrwOZ0dCnSQmdAKQ1Wmn9YOes2Y1JbTM6lpyyjxnAK
FVzvhMLIEr9e0ybWMhOk575AKmEu+zO5tp5/rQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
G6jT5kkJYq9kHrjRy2NNDAsJwMcUAxTTSDBc1UGyogRouKd/lQ5TrsaxZU7PdQh4+dLMeAb9GTLN
mUF8VDY7TLE+VIdh4oqI5jJKSyh/hW6kFTVPXQgpTBTVbAysDLd5LTt2MTustEmSUd4ufdKqddSp
GRr8yaSfEQqW9P2gfYHOa4o2BgLrJ5tcVDhlgpTJTdW3Xq+Tx+ykDNpCOrJidKIkrnFdWB0UrYEQ
b2MLBNiPMJcDw6PTvYJ9TOH3DFNc4OgI1nU4COcSYU+gpMb8AYJKAGANknJ/tHb70W3b7RbY0ve+
TraEXB9+FfAl6T05Ksa1x+20LiqE+4bgfnPrEWI74oiGHYqe7WB+Bxis9Hbxqr5O2rpJ8I8GW6kR
o7iv49fdM+Nh17Y5fG+KgZ2I4azS7VdSoh7wydOFxSOo1I4MfeFa4W6S4n1IqlFWY/8tqkdoCLQP
XdLEWVESPK3ZCMUSa+w+msjGOeNZUy09Y+EiyY5y0UnTWur8/zFlfNBa

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XjuQri0CC9+3HgQKoYZx1bqSi79+B9g7kl/OOfe9fhHATgKwWKNx3svOkQqIdltwth7Dgiqf6d03
nVvr+gr2gHrFN7N0qa/uYh7vmVE1xGjXxyY7uyhsOR6LfugO9ki8lOO1++c2LQKxHDgQ8hKm1PLQ
kvb09oGJMMweKMiCcJ/10FvMQsr9/Ri8SFRet+X6HMBnAQkse7CEgjSB/F/kDDo+CDVVxJjFCFVE
Zxld+zWy9pSMeowKQUXwJsnG6u62+xe7Gh+A39kx25rfKNzxbzthIytOe6sCDvK7SFqpTRR8iHMw
7BSn6KHEY193DPwdHu2NKrAxLTlU59GaIHt0Og==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xGKAIp/zmGrqlX57+IX8XiGsjdabkGADEJN+w1lpy1sOY8U687dSP/S+3A9LB+dxFopDf9evM+aJ
zfnPIRs88b+XNcr30VFsUKqol8/l8dKE335VUM7/KqjzoDeO9Im074rcNTNkrGihkLZg29+nc663
3Mp81nCgqIy0CjdjjNagQoybIfJypyUstIRQoUDgYy5+XFkOhi+YfLWplurnmVQMniJRgI6O/1Wy
W9Pz2Vp/coIqghLJ6rWwpcyelSEFsZohmhx5ISmWXdy1cJiJdAovZ30l1BoFu/YNw7R1Pqj9XEcl
HpPbXJK4OJ5Dq0kDlRkDoMsGGOwDymAnxmHP9w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E2NG2WE/XLIrTJ//5zp4MZShIlYUEv9C8pP6NLFXlu83G5ifj6iYac4aMWAf+vzNST79R1A5mtMV
N2NIrv0Qv8LKRziZAPxeN6IJ7god6ZYYAJAISE2uuOcUD9vNDXnbKF9j6gngTchOzQxAi7V3sTzT
c/Van++s7tDuKNrW7ySkgAXZGz/DVfGWD8vCrKbR///Pfr4B3G1uu4w7je1FwfY2zgdFIgWn15gY
PHv2bhn60bFHlcjaKKH5VtCFbN76jdD182AP91tB9cTsYHQypzg6MGu99UwjP+b225lPmH5xHuBk
mKPETCrQgu1JNXUt6YUv/ZwMr0C4waD0BcvelA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18064)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtpe2_i_6 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_GT
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => SR(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i_0 => gtpe2_i,
      gtpe2_i_1 => gtpe2_i_0,
      gtpe2_i_10(1 downto 0) => gtpe2_i_9(1 downto 0),
      gtpe2_i_2(15 downto 0) => gtpe2_i_1(15 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_7 => gtpe2_i_6,
      gtpe2_i_8(1 downto 0) => gtpe2_i_7(1 downto 0),
      gtpe2_i_9(1 downto 0) => gtpe2_i_8(1 downto 0),
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => reset_sync5,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtpe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg_0 : in STD_LOGIC;
    gtpe2_i_8 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_init is
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal gt0_gtrxreset_gt : STD_LOGIC;
  signal gt0_gtrxreset_gt_d1 : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gt0_rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_4_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_t : STD_LOGIC;
  signal gt0_txuserrdy_t : STD_LOGIC;
  signal gtwizard_i_n_3 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal \^reset_in\ : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gt0_rx_cdrlock_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__2\ : label is 35;
begin
  reset_in <= \^reset_in\;
gt0_gtrxreset_gt_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_gtrxreset_gt,
      Q => gt0_gtrxreset_gt_d1,
      R => '0'
    );
gt0_rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(2) => gt0_rx_cdrlock_counter0_carry_n_1,
      CO(1) => gt0_rx_cdrlock_counter0_carry_n_2,
      CO(0) => gt0_rx_cdrlock_counter0_carry_n_3,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => gt0_rx_cdrlock_counter(4 downto 1)
    );
\gt0_rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => gt0_rx_cdrlock_counter(8 downto 5)
    );
\gt0_rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => gt0_rx_cdrlock_counter(12 downto 9)
    );
\gt0_rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => gt0_rx_cdrlock_counter(13)
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[0]_i_2_n_0\,
      I1 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(0)
    );
\gt0_rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I1 => gt0_rx_cdrlock_counter(4),
      I2 => gt0_rx_cdrlock_counter(5),
      I3 => gt0_rx_cdrlock_counter(7),
      I4 => gt0_rx_cdrlock_counter(6),
      I5 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      O => \gt0_rx_cdrlock_counter[0]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(10),
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(11),
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(12),
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(13),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(1),
      I1 => gt0_rx_cdrlock_counter(12),
      I2 => gt0_rx_cdrlock_counter(13),
      I3 => gt0_rx_cdrlock_counter(3),
      I4 => gt0_rx_cdrlock_counter(2),
      O => \gt0_rx_cdrlock_counter[13]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(4),
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => gt0_rx_cdrlock_counter(7),
      I3 => gt0_rx_cdrlock_counter(6),
      O => \gt0_rx_cdrlock_counter[13]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(9),
      I1 => gt0_rx_cdrlock_counter(8),
      I2 => gt0_rx_cdrlock_counter(10),
      I3 => gt0_rx_cdrlock_counter(11),
      O => \gt0_rx_cdrlock_counter[13]_i_4_n_0\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(4),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(6),
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(8),
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(9),
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(0),
      Q => gt0_rx_cdrlock_counter(0),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => gt0_gtrxreset_gt_d1
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => gt0_rx_cdrlocked_reg_n_0,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => gt0_gtrxreset_gt_d1
    );
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
     port map (
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_3,
      data_sync_reg1_0 => data_sync_reg1,
      data_sync_reg6 => gtpe2_i_4,
      gt0_gtrxreset_gt => gt0_gtrxreset_gt,
      gt0_gtrxreset_gt_d1_reg => gt0_gtrxreset_gt_d1_reg_0,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \out\(0),
      reset_time_out_reg_0 => gt0_rx_cdrlocked_reg_n_0
    );
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
     port map (
      PLL0_RESET_reg_0 => \^reset_in\,
      data_in => data_in,
      data_sync_reg1 => gtpe2_i_4,
      data_sync_reg1_0 => gtwizard_i_n_5,
      data_sync_reg1_1 => data_sync_reg1,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtpe2_i_8,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0)
    );
gtwizard_i: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => gt0_gtrxreset_gt_d1,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtwizard_i_n_3,
      gtpe2_i_0 => gtwizard_i_n_5,
      gtpe2_i_1(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_6 => gtpe2_i_4,
      gtpe2_i_7(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_8(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_9(1 downto 0) => gtpe2_i_7(1 downto 0),
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => \^reset_in\,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtpe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    gtpe2_i_8 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD is
begin
U0: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_init
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      data_in => data_in,
      data_out => data_out,
      data_sync_reg1 => data_sync_reg1,
      gt0_gtrxreset_gt_d1_reg_0 => gt0_gtrxreset_gt_d1_reg,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_0(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_1(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_4 => gtpe2_i_4,
      gtpe2_i_5(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_7(1 downto 0) => gtpe2_i_7(1 downto 0),
      gtpe2_i_8 => gtpe2_i_8,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_in => PLL0_RESET_reg,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_transceiver is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rxdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    gtpe2_i : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    userclk2 : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    txchardispval_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcharisk_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0refclklost_out : in STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    enablealign : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    \txdata_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_transceiver is
  signal data_valid_reg2 : STD_LOGIC;
  signal encommaalign_int : STD_LOGIC;
  signal gtwizard_inst_n_6 : STD_LOGIC;
  signal gtwizard_inst_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxchariscomma_i_1_n_0 : STD_LOGIC;
  signal rxchariscomma_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_i_1_n_0 : STD_LOGIC;
  signal rxcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[7]_i_1_n_0\ : STD_LOGIC;
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdisperr_i_1_n_0 : STD_LOGIC;
  signal rxdisperr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_i_1_n_0 : STD_LOGIC;
  signal rxnotintable_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal rxreset_int : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal txbufstatus_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_reg : STD_LOGIC;
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_reg : STD_LOGIC;
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_reg : STD_LOGIC;
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  signal txreset_int : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair126";
begin
gtwizard_inst: entity work.gig_ethernet_pcs_pma_0_GTWIZARD
     port map (
      CLK => CLK,
      D(1 downto 0) => rxclkcorcnt_int(1 downto 0),
      PLL0_RESET_reg => reset_in,
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => gtwizard_inst_n_7,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => gtwizard_inst_n_6,
      TXPD(0) => txpowerdown,
      data_in => data_in,
      data_out => data_valid_reg2,
      data_sync_reg1 => data_sync_reg1,
      gt0_gtrxreset_gt_d1_reg => rxreset_int,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i(15 downto 0) => rxdata_int(15 downto 0),
      gtpe2_i_0(1 downto 0) => rxchariscomma_int(1 downto 0),
      gtpe2_i_1(1 downto 0) => rxcharisk_int(1 downto 0),
      gtpe2_i_2(1 downto 0) => rxdisperr_int(1 downto 0),
      gtpe2_i_3(1 downto 0) => rxnotintable_int(1 downto 0),
      gtpe2_i_4 => gtpe2_i,
      gtpe2_i_5(1 downto 0) => txchardispmode_int(1 downto 0),
      gtpe2_i_6(1 downto 0) => txchardispval_int(1 downto 0),
      gtpe2_i_7(1 downto 0) => txcharisk_int(1 downto 0),
      gtpe2_i_8 => txreset_int,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_0_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk2 => userclk2
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_0_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_0_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_0_reset_wtd_timer
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset
    );
rxbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => rxbufstatus(0),
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => gtwizard_inst_n_7,
      Q => p_0_in,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => reset_sync5(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => reset_sync5(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle,
      I2 => rxchariscomma_double(0),
      O => rxchariscomma_i_1_n_0
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxchariscomma_i_1_n_0,
      Q => rxchariscomma(0),
      R => reset_sync5(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxchariscomma_int(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => reset_sync5(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => reset_sync5(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxcharisk_double(1),
      I1 => toggle,
      I2 => rxcharisk_double(0),
      O => rxcharisk_i_1_n_0
    );
rxcharisk_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxcharisk_i_1_n_0,
      Q => rxcharisk(0),
      R => reset_sync5(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxcharisk_int(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(0),
      Q => rxclkcorcnt_double(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(1),
      Q => rxclkcorcnt_double(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(0),
      Q => Q(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(1),
      Q => Q(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxclkcorcnt_int(1),
      Q => rxclkcorcnt_reg(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(8),
      I1 => toggle,
      I2 => rxdata_double(0),
      O => \rxdata[0]_i_1_n_0\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(9),
      I1 => toggle,
      I2 => rxdata_double(1),
      O => \rxdata[1]_i_1_n_0\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(10),
      I1 => toggle,
      I2 => rxdata_double(2),
      O => \rxdata[2]_i_1_n_0\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(11),
      I1 => toggle,
      I2 => rxdata_double(3),
      O => \rxdata[3]_i_1_n_0\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(12),
      I1 => toggle,
      I2 => rxdata_double(4),
      O => \rxdata[4]_i_1_n_0\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(13),
      I1 => toggle,
      I2 => rxdata_double(5),
      O => \rxdata[5]_i_1_n_0\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(14),
      I1 => toggle,
      I2 => rxdata_double(6),
      O => \rxdata[6]_i_1_n_0\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(15),
      I1 => toggle,
      I2 => rxdata_double(7),
      O => \rxdata[7]_i_1_n_0\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => reset_sync5(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => reset_sync5(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => reset_sync5(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => reset_sync5(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => reset_sync5(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => reset_sync5(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => reset_sync5(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => reset_sync5(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => reset_sync5(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => reset_sync5(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => reset_sync5(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => reset_sync5(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => reset_sync5(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => reset_sync5(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => reset_sync5(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => reset_sync5(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[0]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(0),
      R => reset_sync5(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[1]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(1),
      R => reset_sync5(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[2]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(2),
      R => reset_sync5(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[3]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(3),
      R => reset_sync5(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[4]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(4),
      R => reset_sync5(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[5]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(5),
      R => reset_sync5(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[6]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(6),
      R => reset_sync5(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[7]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(7),
      R => reset_sync5(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => reset_sync5(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => reset_sync5(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdisperr_double(1),
      I1 => toggle,
      I2 => rxdisperr_double(0),
      O => rxdisperr_i_1_n_0
    );
rxdisperr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr_i_1_n_0,
      Q => rxdisperr(0),
      R => reset_sync5(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdisperr_int(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => reset_sync5(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => reset_sync5(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxnotintable_double(1),
      I1 => toggle,
      I2 => rxnotintable_double(0),
      O => rxnotintable_i_1_n_0
    );
rxnotintable_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable_i_1_n_0,
      Q => rxnotintable(0),
      R => reset_sync5(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxnotintable_int(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => toggle,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => reset_sync5(0)
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtpe2_i,
      CE => '1',
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => reset_sync5(0)
    );
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_0_sync_block_3
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txbufstatus_reg(1),
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => gtwizard_inst_n_6,
      Q => txbufstatus_reg(1),
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispmode_reg,
      Q => txchardispmode_double(0),
      R => SR(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(0),
      Q => txchardispmode_double(1),
      R => SR(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(0),
      Q => txchardispmode_reg,
      R => SR(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg,
      Q => txchardispval_double(0),
      R => SR(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_double(1),
      R => SR(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_reg,
      R => SR(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg,
      Q => txcharisk_double(0),
      R => SR(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_double(1),
      R => SR(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_reg,
      R => SR(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(0),
      Q => txdata_double(0),
      R => SR(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_double(10),
      R => SR(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_double(11),
      R => SR(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_double(12),
      R => SR(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_double(13),
      R => SR(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_double(14),
      R => SR(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_double(15),
      R => SR(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(1),
      Q => txdata_double(1),
      R => SR(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(2),
      Q => txdata_double(2),
      R => SR(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(3),
      Q => txdata_double(3),
      R => SR(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(4),
      Q => txdata_double(4),
      R => SR(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(5),
      Q => txdata_double(5),
      R => SR(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(6),
      Q => txdata_double(6),
      R => SR(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(7),
      Q => txdata_double(7),
      R => SR(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_double(8),
      R => SR(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_double(9),
      R => SR(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_reg(0),
      R => SR(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_reg(1),
      R => SR(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_reg(2),
      R => SR(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_reg(3),
      R => SR(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_reg(4),
      R => SR(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_reg(5),
      R => SR(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_reg(6),
      R => SR(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_reg(7),
      R => SR(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => SR(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtpe2_i,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_block is
  port (
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 12 downto 0 );
    resetdone : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_detect : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    an_restart_config : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    gtpe2_i : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_block is
  signal enablealign : STD_LOGIC;
  signal mgt_rx_reset : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rx_reset_done_i : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal transceiver_inst_n_12 : STD_LOGIC;
  signal transceiver_inst_n_13 : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_core : label is "10'b0101010000";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_core : label is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_core : label is "artix7";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_core : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of gig_ethernet_pcs_pma_0_core : label is "soft";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_core : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of gig_ethernet_pcs_pma_0_core : label is "true";
begin
  resetdone <= \^resetdone\;
  status_vector(12 downto 0) <= \^status_vector\(12 downto 0);
gig_ethernet_pcs_pma_0_core: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_2_12
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15) => an_adv_config_vector(6),
      an_adv_config_vector(14) => '0',
      an_adv_config_vector(13 downto 11) => an_adv_config_vector(5 downto 3),
      an_adv_config_vector(10 downto 9) => B"00",
      an_adv_config_vector(8 downto 7) => an_adv_config_vector(2 downto 1),
      an_adv_config_vector(6) => '0',
      an_adv_config_vector(5) => an_adv_config_vector(0),
      an_adv_config_vector(4 downto 0) => B"00000",
      an_enable => NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED,
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      basex_or_sgmii => '0',
      configuration_valid => '0',
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => data_in,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED,
      enablealign => enablealign,
      ewrap => NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0100111101",
      loc_ref => NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED,
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED,
      mgt_rx_reset => mgt_rx_reset,
      mgt_tx_reset => mgt_tx_reset,
      phyad(4 downto 0) => B"00000",
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => powerdown,
      reset => \out\(0),
      reset_done => \^resetdone\,
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011111000",
      rxbufstatus(1) => rxbuferr,
      rxbufstatus(0) => '0',
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2) => '0',
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => '0',
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 12) => \^status_vector\(12 downto 9),
      status_vector(11 downto 10) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(11 downto 10),
      status_vector(9 downto 8) => \^status_vector\(8 downto 7),
      status_vector(7) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => userclk2
    );
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_in => transceiver_inst_n_13,
      data_out => rx_reset_done_i,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_in => transceiver_inst_n_12,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_0_transceiver
     port map (
      CLK => CLK,
      D(0) => txchardispmode,
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_tx_reset,
      data_in => transceiver_inst_n_12,
      data_sync_reg1 => data_in,
      enablealign => enablealign,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i => gtpe2_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      powerdown => powerdown,
      reset_in => gt0_pll0reset_out,
      reset_sync5(0) => mgt_rx_reset,
      rx_fsm_reset_done_int_reg => transceiver_inst_n_13,
      rxbufstatus(0) => rxbuferr,
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      \rxdata_reg[7]_0\(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxn => rxn,
      rxnotintable(0) => rxnotintable,
      rxoutclk => rxoutclk,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txchardispval_reg_reg_0(0) => txchardispval,
      txcharisk_reg_reg_0(0) => txcharisk,
      \txdata_reg_reg[7]_0\(7 downto 0) => txdata(7 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_support is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll0lock_out : out STD_LOGIC
  );
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_support : entity is "yes";
end gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_support is
  signal \<const0>\ : STD_LOGIC;
  signal PLL0RESET : STD_LOGIC;
  signal cpll_reset_i : STD_LOGIC;
  signal \^gt0_pll0lock_out\ : STD_LOGIC;
  signal \^gt0_pll0outclk_out\ : STD_LOGIC;
  signal \^gt0_pll0outrefclk_out\ : STD_LOGIC;
  signal \^gt0_pll0refclklost_out\ : STD_LOGIC;
  signal gt0_pll0reset_out : STD_LOGIC;
  signal \^gt0_pll1outclk_out\ : STD_LOGIC;
  signal \^gt0_pll1outrefclk_out\ : STD_LOGIC;
  signal \^gtrefclk_bufg_out\ : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal mmcm_reset : STD_LOGIC;
  signal \^pma_reset_out\ : STD_LOGIC;
  signal rxoutclk : STD_LOGIC;
  signal \^rxuserclk2_out\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txoutclk : STD_LOGIC;
  signal \^userclk2_out\ : STD_LOGIC;
  signal \^userclk_out\ : STD_LOGIC;
begin
  gt0_pll0lock_out <= \^gt0_pll0lock_out\;
  gt0_pll0outclk_out <= \^gt0_pll0outclk_out\;
  gt0_pll0outrefclk_out <= \^gt0_pll0outrefclk_out\;
  gt0_pll0refclklost_out <= \^gt0_pll0refclklost_out\;
  gt0_pll1outclk_out <= \^gt0_pll1outclk_out\;
  gt0_pll1outrefclk_out <= \^gt0_pll1outrefclk_out\;
  gtrefclk_bufg_out <= \^gtrefclk_bufg_out\;
  gtrefclk_out <= \^gtrefclk_out\;
  mmcm_locked_out <= \^mmcm_locked_out\;
  pma_reset_out <= \^pma_reset_out\;
  rxuserclk2_out <= \^rxuserclk2_out\;
  rxuserclk_out <= \^rxuserclk2_out\;
  status_vector(15 downto 12) <= \^status_vector\(15 downto 12);
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9 downto 8) <= \^status_vector\(9 downto 8);
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
  userclk2_out <= \^userclk2_out\;
  userclk_out <= \^userclk_out\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
core_clocking_i: entity work.gig_ethernet_pcs_pma_0_clocking
     port map (
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => \^gtrefclk_out\,
      gtrefclk_p => gtrefclk_p,
      mmcm_locked => \^mmcm_locked_out\,
      mmcm_reset => mmcm_reset,
      rxoutclk => rxoutclk,
      rxuserclk2_out => \^rxuserclk2_out\,
      txoutclk => txoutclk,
      userclk => \^userclk_out\,
      userclk2 => \^userclk2_out\
    );
core_gt_common_i: entity work.gig_ethernet_pcs_pma_0_gt_common
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0lock_out => \^gt0_pll0lock_out\,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll0refclklost_out => \^gt0_pll0refclklost_out\,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg
    );
core_gt_common_reset_i: entity work.gig_ethernet_pcs_pma_0_common_reset
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0reset_out => gt0_pll0reset_out,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_0_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_0_block
     port map (
      CLK => \^gtrefclk_bufg_out\,
      an_adv_config_vector(6) => an_adv_config_vector(15),
      an_adv_config_vector(5 downto 3) => an_adv_config_vector(13 downto 11),
      an_adv_config_vector(2 downto 1) => an_adv_config_vector(8 downto 7),
      an_adv_config_vector(0) => an_adv_config_vector(5),
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      data_in => \^mmcm_locked_out\,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_out => \^gt0_pll0lock_out\,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll0refclklost_out => \^gt0_pll0refclklost_out\,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gtpe2_i => \^userclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \^pma_reset_out\,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      signal_detect => signal_detect,
      status_vector(12 downto 9) => \^status_vector\(15 downto 12),
      status_vector(8 downto 7) => \^status_vector\(9 downto 8),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk2 => \^userclk2_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0 is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll0lock_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_0 : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0 : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of gig_ethernet_pcs_pma_0 : entity is "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1";
end gig_ethernet_pcs_pma_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 7 );
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  status_vector(15 downto 12) <= \^status_vector\(15 downto 12);
  status_vector(11) <= \<const1>\;
  status_vector(10) <= \<const0>\;
  status_vector(9 downto 8) <= \^status_vector\(9 downto 8);
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.gig_ethernet_pcs_pma_0_support
     port map (
      an_adv_config_vector(15) => an_adv_config_vector(15),
      an_adv_config_vector(14) => '0',
      an_adv_config_vector(13 downto 11) => an_adv_config_vector(13 downto 11),
      an_adv_config_vector(10 downto 9) => B"00",
      an_adv_config_vector(8 downto 7) => an_adv_config_vector(8 downto 7),
      an_adv_config_vector(6) => '0',
      an_adv_config_vector(5) => an_adv_config_vector(5),
      an_adv_config_vector(4 downto 0) => B"00000",
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtrefclk_bufg_out => gtrefclk_bufg_out,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => gtrefclk_out,
      gtrefclk_p => gtrefclk_p,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      pma_reset_out => pma_reset_out,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      signal_detect => signal_detect,
      status_vector(15 downto 12) => \^status_vector\(15 downto 12),
      status_vector(11 downto 10) => NLW_U0_status_vector_UNCONNECTED(11 downto 10),
      status_vector(9 downto 8) => \^status_vector\(9 downto 8),
      status_vector(7) => NLW_U0_status_vector_UNCONNECTED(7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txp => txp,
      userclk2_out => userclk2_out,
      userclk_out => userclk_out
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
