-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 23 13:21:28 2023
-- Host        : danielA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset is
  port (
    PLL0RESET : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0reset_out : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9 is
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 227824)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
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
sync_RXRESETDONE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14
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
sync_mmcm_lock_reclocked: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_pll0lock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16
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
sync_run_phase_alignment_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_rx_fsm_reset_done_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      data_sync_reg6_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
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
sync_PLL0LOCK: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7
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
sync_TXRESETDONE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
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
sync_gtrxreset_in: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      CLK => CLK,
      SR(0) => SR(0),
      reset_out => gtrxreset_in_sync
    );
sync_rst_sync: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      CLK => CLK,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69520)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
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
gtrxreset_seq_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init is
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
gt0_rxresetfsm_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
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
gt0_txresetfsm_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
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
gtwizard_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver is
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
gtwizard_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD
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
reclock_encommaalign: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk2 => userclk2
    );
reclock_rxreset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer
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
sync_block_data_valid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block is
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
gig_ethernet_pcs_pma_0_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_12
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
sync_block_rx_reset_done: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_in => transceiver_inst_n_13,
      data_out => rx_reset_done_i,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_in => transceiver_inst_n_12,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support is
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
  attribute EXAMPLE_SIMULATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support is
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
core_clocking_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking
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
core_gt_common_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common
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
core_gt_common_reset_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0reset_out => gt0_pll0reset_out,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support
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
