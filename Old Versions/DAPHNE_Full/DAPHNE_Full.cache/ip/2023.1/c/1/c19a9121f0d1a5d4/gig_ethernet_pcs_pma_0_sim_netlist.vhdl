-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 23 14:33:50 2023
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
