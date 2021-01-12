
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of sqi is

  component BUFFD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL015BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL02BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD1P5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL3BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD2BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD12BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D5BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component EDFCNQD1BWP7T
    port(CDN, CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component DFNCND1BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component AO31D1BWP7T
    port(A1, A2, A3, B : in std_logic; Z : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CN, CP, D : in std_logic; Q : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  signal FE_PHN53_reset, FE_PHN52_count_out_3, FE_PHN51_u2_n_50, FE_PHN50_u2_n_31, FE_PHN49_count_out_3 : std_logic;
  signal FE_PHN48_u2_n_50, FE_PHN47_u2_n_31, FE_PHN46_u2_n_72, FE_PHN45_n_10, FE_PHN44_n_3 : std_logic;
  signal FE_PHN43_n_8, FE_PHN42_u2_n_72, FE_PHN41_u2_state_0, FE_PHN40_data_read_in_4, FE_PHN39_data_read_in_2 : std_logic;
  signal FE_PHN38_u2_n_129, FE_PHN37_data_read_in_0, FE_PHN36_data_read_in_6, FE_PHN35_data_read_in_7, FE_PHN34_data_read_in_3 : std_logic;
  signal FE_PHN33_data_read_in_5, FE_PHN32_data_read_in_1, FE_PHN31_u2_state_1, FE_PHN30_u2_state_1, FE_PHN29_u2_n_31 : std_logic;
  signal FE_PHN28_u2_state_2, FE_PHN27_u2_state_1, FE_PHN26_u2_n_31, FE_PHN25_u2_n_72, FE_PHN24_count_out_3 : std_logic;
  signal FE_PHN23_u2_state_1, FE_PHN22_u2_n_31, FE_PHN21_u2_n_72, FE_PHN20_u2_state_2, FE_PHN19_u2_state_1 : std_logic;
  signal FE_PHN18_u2_n_31, FE_PHN17_count_out_3, FE_PHN16_u2_n_72, FE_PHN15_u2_n_72, FE_PHN14_u2_n_72 : std_logic;
  signal FE_PHN13_u2_n_72, FE_PHN12_u2_n_72, FE_PHN11_u2_n_72, FE_PHN10_u2_n_72, FE_PHN9_u2_n_72 : std_logic;
  signal FE_OFN8_new_data, FE_OFN7_data_out_2, FE_OFN6_data_out_1, FE_OFN5_data_out_6, FE_OFN4_data_out_5 : std_logic;
  signal FE_OFN3_data_out_0, FE_OFN2_data_out_3, FE_OFN1_data_out_7, FE_OFN0_data_out_4, CTS_16 : std_logic;
  signal CTS_15, CTS_14, CTS_2 : std_logic;
  signal data_read_in : std_logic_vector(7 downto 0);
  signal data_wire : std_logic_vector(7 downto 0);
  signal count_out : std_logic_vector(3 downto 0);
  signal u2_state : std_logic_vector(2 downto 0);
  signal count_en, load_reg, n_0, n_1, n_2 : std_logic;
  signal n_3, n_4, n_5, n_6, n_7 : std_logic;
  signal n_8, n_9, n_10, shift_clk, shift_reg : std_logic;
  signal u0_n_0, u0_n_1, u0_n_2, u0_n_3, u0_n_4 : std_logic;
  signal u0_n_5, u0_n_6, u0_n_7, u0_n_8, u2_RW_LATCH : std_logic;
  signal u2_SHIFT_nLOAD, u2_SINGLE_LATCH, u2_n_0, u2_n_1, u2_n_2 : std_logic;
  signal u2_n_3, u2_n_4, u2_n_5, u2_n_6, u2_n_7 : std_logic;
  signal u2_n_9, u2_n_10, u2_n_11, u2_n_12, u2_n_13 : std_logic;
  signal u2_n_14, u2_n_15, u2_n_16, u2_n_17, u2_n_18 : std_logic;
  signal u2_n_19, u2_n_20, u2_n_21, u2_n_22, u2_n_31 : std_logic;
  signal u2_n_32, u2_n_33, u2_n_35, u2_n_37, u2_n_38 : std_logic;
  signal u2_n_39, u2_n_40, u2_n_41, u2_n_42, u2_n_43 : std_logic;
  signal u2_n_44, u2_n_45, u2_n_46, u2_n_47, u2_n_48 : std_logic;
  signal u2_n_49, u2_n_50, u2_n_51, u2_n_52, u2_n_53 : std_logic;
  signal u2_n_54, u2_n_55, u2_n_56, u2_n_57, u2_n_58 : std_logic;
  signal u2_n_59, u2_n_60, u2_n_61, u2_n_62, u2_n_63 : std_logic;
  signal u2_n_64, u2_n_65, u2_n_69, u2_n_72, u2_n_73 : std_logic;
  signal u2_n_74, u2_n_75, u2_n_126, u2_n_129, u2_n_136 : std_logic;
  signal u2_n_140, u2_n_590_BAR, u2_n_1272_BAR : std_logic;

begin

  FE_PHC53_reset : BUFFD1BWP7T port map(I => reset, Z => FE_PHN53_reset);
  FE_PHC52_count_out_3 : DEL015BWP7T port map(I => FE_PHN52_count_out_3, Z => FE_PHN24_count_out_3);
  FE_PHC51_u2_n_50 : DEL01BWP7T port map(I => FE_PHN48_u2_n_50, Z => FE_PHN51_u2_n_50);
  FE_PHC50_u2_n_31 : CKBD0BWP7T port map(I => FE_PHN47_u2_n_31, Z => FE_PHN50_u2_n_31);
  FE_PHC49_count_out_3 : CKBD0BWP7T port map(I => FE_PHN24_count_out_3, Z => FE_PHN49_count_out_3);
  FE_PHC48_u2_n_50 : CKBD0BWP7T port map(I => u2_n_50, Z => FE_PHN48_u2_n_50);
  FE_PHC47_u2_n_31 : CKBD0BWP7T port map(I => FE_PHN18_u2_n_31, Z => FE_PHN47_u2_n_31);
  FE_PHC46_u2_n_72 : CKBD0BWP7T port map(I => u2_n_72, Z => FE_PHN46_u2_n_72);
  FE_PHC45_n_10 : DEL01BWP7T port map(I => n_10, Z => FE_PHN45_n_10);
  FE_PHC44_n_3 : CKBD0BWP7T port map(I => n_3, Z => FE_PHN44_n_3);
  FE_PHC43_n_8 : CKBD0BWP7T port map(I => n_8, Z => FE_PHN43_n_8);
  FE_PHC42_u2_n_72 : CKBD0BWP7T port map(I => FE_PHN46_u2_n_72, Z => FE_PHN42_u2_n_72);
  FE_PHC41_u2_state_0 : DEL01BWP7T port map(I => u2_state(0), Z => FE_PHN41_u2_state_0);
  FE_PHC40_data_read_in_4 : CKBD0BWP7T port map(I => FE_PHN40_data_read_in_4, Z => data_read_in(4));
  FE_PHC39_data_read_in_2 : CKBD0BWP7T port map(I => FE_PHN39_data_read_in_2, Z => data_read_in(2));
  FE_PHC38_u2_n_129 : DEL01BWP7T port map(I => u2_n_129, Z => FE_PHN38_u2_n_129);
  FE_PHC37_data_read_in_0 : DEL02BWP7T port map(I => data_read_in(0), Z => FE_PHN37_data_read_in_0);
  FE_PHC36_data_read_in_6 : DEL02BWP7T port map(I => FE_PHN36_data_read_in_6, Z => data_read_in(6));
  FE_PHC35_data_read_in_7 : DEL02BWP7T port map(I => FE_PHN35_data_read_in_7, Z => data_read_in(7));
  FE_PHC34_data_read_in_3 : DEL02BWP7T port map(I => FE_PHN34_data_read_in_3, Z => data_read_in(3));
  FE_PHC33_data_read_in_5 : DEL02BWP7T port map(I => data_read_in(5), Z => FE_PHN33_data_read_in_5);
  FE_PHC32_data_read_in_1 : DEL02BWP7T port map(I => data_read_in(1), Z => FE_PHN32_data_read_in_1);
  FE_PHC31_u2_state_1 : BUFFD1P5BWP7T port map(I => FE_PHN19_u2_state_1, Z => FE_PHN31_u2_state_1);
  FE_PHC30_u2_state_1 : CKBD0BWP7T port map(I => FE_PHN31_u2_state_1, Z => FE_PHN30_u2_state_1);
  FE_PHC29_u2_n_31 : CKBD0BWP7T port map(I => FE_PHN50_u2_n_31, Z => FE_PHN29_u2_n_31);
  FE_PHC28_u2_state_2 : BUFFD1BWP7T port map(I => FE_PHN20_u2_state_2, Z => FE_PHN28_u2_state_2);
  FE_PHC27_u2_state_1 : CKBD0BWP7T port map(I => FE_PHN30_u2_state_1, Z => FE_PHN27_u2_state_1);
  FE_PHC26_u2_n_31 : CKBD0BWP7T port map(I => FE_PHN29_u2_n_31, Z => FE_PHN26_u2_n_31);
  FE_PHC25_u2_n_72 : CKBD0BWP7T port map(I => FE_PHN21_u2_n_72, Z => FE_PHN25_u2_n_72);
  FE_PHC24_count_out_3 : CKBD0BWP7T port map(I => FE_PHN17_count_out_3, Z => FE_PHN52_count_out_3);
  FE_PHC23_u2_state_1 : CKBD0BWP7T port map(I => FE_PHN27_u2_state_1, Z => FE_PHN23_u2_state_1);
  FE_PHC22_u2_n_31 : CKBD0BWP7T port map(I => FE_PHN26_u2_n_31, Z => FE_PHN22_u2_n_31);
  FE_PHC21_u2_n_72 : CKBD0BWP7T port map(I => FE_PHN16_u2_n_72, Z => FE_PHN21_u2_n_72);
  FE_PHC20_u2_state_2 : DEL0BWP7T port map(I => u2_state(2), Z => FE_PHN20_u2_state_2);
  FE_PHC19_u2_state_1 : DEL0BWP7T port map(I => u2_state(1), Z => FE_PHN19_u2_state_1);
  FE_PHC18_u2_n_31 : DEL0BWP7T port map(I => u2_n_31, Z => FE_PHN18_u2_n_31);
  FE_PHC17_count_out_3 : DEL1BWP7T port map(I => count_out(3), Z => FE_PHN17_count_out_3);
  FE_PHC16_u2_n_72 : DEL0BWP7T port map(I => FE_PHN15_u2_n_72, Z => FE_PHN16_u2_n_72);
  FE_PHC15_u2_n_72 : DEL3BWP7T port map(I => FE_PHN12_u2_n_72, Z => FE_PHN15_u2_n_72);
  FE_PHC14_u2_n_72 : DEL4BWP7T port map(I => FE_PHN11_u2_n_72, Z => FE_PHN14_u2_n_72);
  FE_PHC13_u2_n_72 : DEL4BWP7T port map(I => FE_PHN10_u2_n_72, Z => FE_PHN13_u2_n_72);
  FE_PHC12_u2_n_72 : DEL4BWP7T port map(I => FE_PHN13_u2_n_72, Z => FE_PHN12_u2_n_72);
  FE_PHC11_u2_n_72 : DEL4BWP7T port map(I => FE_PHN25_u2_n_72, Z => FE_PHN11_u2_n_72);
  FE_PHC10_u2_n_72 : DEL4BWP7T port map(I => FE_PHN9_u2_n_72, Z => FE_PHN10_u2_n_72);
  FE_PHC9_u2_n_72 : DEL4BWP7T port map(I => FE_PHN42_u2_n_72, Z => FE_PHN9_u2_n_72);
  FE_OFC8_new_data : BUFFD5BWP7T port map(I => FE_OFN8_new_data, Z => new_data);
  FE_OFC7_data_out_2 : BUFFD5BWP7T port map(I => FE_OFN7_data_out_2, Z => data_out(2));
  FE_OFC6_data_out_1 : BUFFD5BWP7T port map(I => FE_OFN6_data_out_1, Z => data_out(1));
  FE_OFC5_data_out_6 : BUFFD5BWP7T port map(I => FE_OFN5_data_out_6, Z => data_out(6));
  FE_OFC4_data_out_5 : BUFFD5BWP7T port map(I => FE_OFN4_data_out_5, Z => data_out(5));
  FE_OFC3_data_out_0 : BUFFD5BWP7T port map(I => FE_OFN3_data_out_0, Z => data_out(0));
  FE_OFC2_data_out_3 : BUFFD5BWP7T port map(I => FE_OFN2_data_out_3, Z => data_out(3));
  FE_OFC1_data_out_7 : BUFFD5BWP7T port map(I => FE_OFN1_data_out_7, Z => data_out(7));
  FE_OFC0_data_out_4 : BUFFD5BWP7T port map(I => FE_OFN0_data_out_4, Z => data_out(4));
  CTS_ccl_a_BUF_clk_G0_L2_1 : CKBD2BWP7T port map(I => CTS_16, Z => CTS_15);
  CTS_ccl_a_BUF_clk_G0_L1_2 : CKBD1BWP7T port map(I => clk, Z => CTS_16);
  CTS_ccl_a_BUF_clk_G0_L3_1 : CKBD12BWP7T port map(I => CTS_2, Z => sck);
  CTS_cex_INV_clk_G0_L1_1 : CKND1BWP7T port map(I => clk, ZN => CTS_14);
  u1_reg_reg_0 : DFQD1BWP7T port map(CP => shift_clk, D => n_7, Q => data_read_in(0));
  u1_reg_reg_6 : DFQD1BWP7T port map(CP => shift_clk, D => n_9, Q => FE_PHN36_data_read_in_6);
  u1_reg_reg_5 : DFQD1BWP7T port map(CP => shift_clk, D => FE_PHN44_n_3, Q => data_read_in(5));
  u1_reg_reg_1 : DFQD1BWP7T port map(CP => shift_clk, D => FE_PHN43_n_8, Q => data_read_in(1));
  u1_reg_reg_2 : DFQD1BWP7T port map(CP => shift_clk, D => n_4, Q => FE_PHN39_data_read_in_2);
  u1_reg_reg_4 : DFQD1BWP7T port map(CP => shift_clk, D => n_6, Q => FE_PHN40_data_read_in_4);
  u1_reg_reg_7 : DFQD1BWP7T port map(CP => shift_clk, D => FE_PHN45_n_10, Q => FE_PHN35_data_read_in_7);
  u1_reg_reg_3 : DFQD1BWP7T port map(CP => shift_clk, D => n_5, Q => FE_PHN34_data_read_in_3);
  g497 : AO222D0BWP7T port map(A1 => n_2, A2 => miso(3), B1 => n_1, B2 => data_read_in(7), C1 => data_wire(7), C2 => n_0, Z => n_10);
  g498 : AO222D0BWP7T port map(A1 => n_1, A2 => data_read_in(6), B1 => n_2, B2 => data_read_in(7), C1 => n_0, C2 => data_wire(3), Z => n_9);
  g499 : AO222D0BWP7T port map(A1 => n_2, A2 => miso(0), B1 => n_1, B2 => FE_PHN32_data_read_in_1, C1 => data_wire(4), C2 => n_0, Z => n_8);
  g500 : AO222D0BWP7T port map(A1 => n_2, A2 => FE_PHN32_data_read_in_1, B1 => n_1, B2 => FE_PHN37_data_read_in_0, C1 => data_wire(0), C2 => n_0, Z => n_7);
  g501 : AO222D0BWP7T port map(A1 => n_2, A2 => FE_PHN33_data_read_in_5, B1 => n_1, B2 => data_read_in(4), C1 => data_wire(2), C2 => n_0, Z => n_6);
  g502 : AO222D0BWP7T port map(A1 => n_1, A2 => data_read_in(3), B1 => n_2, B2 => miso(1), C1 => n_0, C2 => data_wire(5), Z => n_5);
  g503 : AO222D0BWP7T port map(A1 => n_2, A2 => data_read_in(3), B1 => n_1, B2 => data_read_in(2), C1 => data_wire(1), C2 => n_0, Z => n_4);
  g504 : AO222D0BWP7T port map(A1 => n_2, A2 => miso(2), B1 => n_1, B2 => FE_PHN33_data_read_in_5, C1 => data_wire(6), C2 => n_0, Z => n_3);
  g505 : INR3D0BWP7T port map(A1 => shift_reg, B1 => FE_PHN53_reset, B2 => load_reg, ZN => n_2);
  g506 : NR3D0BWP7T port map(A1 => shift_reg, A2 => load_reg, A3 => FE_PHN53_reset, ZN => n_1);
  g507 : INR2D1BWP7T port map(A1 => load_reg, B1 => FE_PHN53_reset, ZN => n_0);
  u2_g1193 : CKAN2D0BWP7T port map(A1 => CTS_14, A2 => u2_n_65, Z => CTS_2);
  u2_g1194 : IOA21D1BWP7T port map(A1 => CTS_16, A2 => FE_PHN14_u2_n_72, B => u2_n_64, ZN => shift_clk);
  u2_g1195 : INR2D0BWP7T port map(A1 => u2_n_69, B1 => FE_PHN53_reset, ZN => u2_n_65);
  u2_g1196 : IND2D0BWP7T port map(A1 => FE_PHN42_u2_n_72, B1 => CTS_14, ZN => u2_n_64);
  u2_g1955 : ND2D1BWP7T port map(A1 => u2_n_62, A2 => u2_n_59, ZN => data_wire(4));
  u2_g1956 : ND2D5BWP7T port map(A1 => u2_n_63, A2 => u2_n_61, ZN => mosi(0));
  u2_g1957 : AO222D0BWP7T port map(A1 => u2_n_60, A2 => address(6), B1 => u2_n_58, B2 => data_in(6), C1 => u2_n_52, C2 => address(14), Z => data_wire(2));
  u2_g1958 : AO222D0BWP7T port map(A1 => u2_n_60, A2 => address(5), B1 => u2_n_58, B2 => data_in(5), C1 => u2_n_52, C2 => address(13), Z => data_wire(1));
  u2_g1959 : AO222D0BWP7T port map(A1 => u2_n_60, A2 => address(3), B1 => u2_n_58, B2 => data_in(3), C1 => u2_n_52, C2 => address(11), Z => data_wire(7));
  u2_g1960 : IND4D0BWP7T port map(A1 => FE_PHN53_reset, B1 => count_out(0), B2 => u2_n_40, B3 => u2_n_57, ZN => u2_n_63);
  u2_g1961 : OAI31D0BWP7T port map(A1 => count_out(3), A2 => u2_n_47, A3 => u2_n_55, B => u2_n_54, ZN => data_wire(5));
  u2_g1962 : AO222D0BWP7T port map(A1 => u2_n_52, A2 => address(10), B1 => u2_n_60, B2 => address(2), C1 => u2_n_58, C2 => data_in(2), Z => data_wire(6));
  u2_g1963 : AO222D0BWP7T port map(A1 => u2_n_52, A2 => address(12), B1 => u2_n_60, B2 => address(4), C1 => u2_n_58, C2 => data_in(4), Z => data_wire(0));
  u2_g1964 : AO22D0BWP7T port map(A1 => u2_n_60, A2 => address(7), B1 => data_in(7), B2 => u2_n_58, Z => data_wire(3));
  u2_g1965 : AOI22D0BWP7T port map(A1 => u2_n_60, A2 => address(0), B1 => u2_n_58, B2 => data_in(0), ZN => u2_n_62);
  u2_g1966 : AOI32D1BWP7T port map(A1 => u2_n_51, A2 => u2_n_48, A3 => u2_n_39, B1 => u2_n_38, B2 => FE_PHN37_data_read_in_0, ZN => u2_n_61);
  u2_g1967 : OR2D1BWP7T port map(A1 => done, A2 => u2_n_56, Z => FE_OFN8_new_data);
  u2_g1968 : AN4D1BWP7T port map(A1 => u2_n_46, A2 => u2_n_39, A3 => u2_n_33, A4 => count_out(2), Z => u2_n_60);
  u2_g1969 : OAI32D1BWP7T port map(A1 => u2_n_31, A2 => u2_n_129, A3 => u2_n_47, B1 => u2_state(0), B2 => u2_n_50, ZN => shift_reg);
  u2_g1970 : AOI22D0BWP7T port map(A1 => u2_n_52, A2 => address(8), B1 => done, B2 => rw, ZN => u2_n_59);
  u2_RW_LATCH_reg : LNQD1BWP7T port map(D => rw, EN => count_en, Q => u2_RW_LATCH);
  u2_SINGLE_LATCH_reg : LNQD1BWP7T port map(D => single, EN => count_en, Q => u2_SINGLE_LATCH);
  u2_g1973 : OAI31D0BWP7T port map(A1 => count_out(2), A2 => u2_n_31, A3 => u2_n_42, B => u2_n_53, ZN => u2_n_57);
  u2_g1974 : NR2D1BWP7T port map(A1 => u2_n_53, A2 => u2_n_47, ZN => u2_n_58);
  u2_g1975 : AN4D1BWP7T port map(A1 => u2_n_136, A2 => u2_n_74, A3 => u2_n_31, A4 => count_out(2), Z => u2_n_56);
  u2_g1976 : IND3D1BWP7T port map(A1 => FE_PHN51_u2_n_50, B1 => FE_PHN49_count_out_3, B2 => FE_PHN22_u2_n_31, ZN => u2_n_72);
  u2_g1977 : OAI21D0BWP7T port map(A1 => u2_n_47, A2 => u2_SHIFT_nLOAD, B => u2_n_54, ZN => load_reg);
  u2_g1978 : AOI22D0BWP7T port map(A1 => u2_n_45, A2 => count_out(2), B1 => u2_n_44, B2 => address(9), ZN => u2_n_55);
  u2_g1979 : INVD1BWP7T port map(I => done, ZN => u2_n_54);
  u2_g1980 : ND2D5BWP7T port map(A1 => u2_n_69, A2 => u2_n_1, ZN => cs);
  u2_g1982 : NR2XD0BWP7T port map(A1 => u2_n_126, A2 => FE_PHN53_reset, ZN => count_en);
  u2_g1983 : CKAN2D8BWP7T port map(A1 => u2_n_46, A2 => u2_n_31, Z => done);
  u2_g1984 : CKAN2D8BWP7T port map(A1 => u2_n_41, A2 => u2_n_49, Z => high_z);
  u2_g1985 : AN4D1BWP7T port map(A1 => u2_n_35, A2 => count_out(1), A3 => count_out(2), A4 => count_out(0), Z => u2_n_75);
  u2_g1986 : OAI31D0BWP7T port map(A1 => count_out(0), A2 => count_out(1), A3 => u2_n_32, B => u2_n_43, ZN => u2_n_51);
  u2_g1987 : ND3D0BWP7T port map(A1 => u2_n_39, A2 => count_out(1), A3 => count_out(2), ZN => u2_n_53);
  u2_g1988 : AN3D1BWP7T port map(A1 => u2_n_46, A2 => u2_n_44, A3 => u2_n_39, Z => u2_n_52);
  u2_g1989 : INVD0BWP7T port map(I => u2_n_50, ZN => u2_n_49);
  u2_g1992 : ND2D1BWP7T port map(A1 => u2_n_136, A2 => u2_n_32, ZN => u2_n_590_BAR);
  u2_g1993 : CKAN2D8BWP7T port map(A1 => u2_n_38, A2 => data_read_in(2), Z => mosi(1));
  u2_g1994 : CKAN2D8BWP7T port map(A1 => u2_n_38, A2 => data_read_in(4), Z => mosi(2));
  u2_g1995 : ND2D1BWP7T port map(A1 => u2_n_74, A2 => FE_PHN23_u2_state_1, ZN => u2_n_50);
  u2_g1996 : INVD1BWP7T port map(I => u2_n_47, ZN => u2_n_46);
  u2_g1997 : ND2D5BWP7T port map(A1 => u2_n_37, A2 => u2_state(2), ZN => mosi(3));
  u2_g1998 : AO22D0BWP7T port map(A1 => u2_n_33, A2 => address(1), B1 => data_in(1), B2 => count_out(1), Z => u2_n_45);
  u2_g1999 : IOA21D1BWP7T port map(A1 => u2_state(2), A2 => u2_state(1), B => u2_n_31, ZN => u2_n_69);
  u2_g2000 : AN2D0BWP7T port map(A1 => u2_n_38, A2 => u2_n_31, Z => u2_n_126);
  u2_g2001 : NR3D0BWP7T port map(A1 => u2_n_0, A2 => u2_state(2), A3 => FE_PHN53_reset, ZN => u2_n_48);
  u2_g2002 : ND2D1BWP7T port map(A1 => u2_n_38, A2 => u2_n_1, ZN => u2_n_47);
  u2_g2003 : INVD0BWP7T port map(I => u2_n_44, ZN => u2_n_43);
  u2_g2004 : ND2D0BWP7T port map(A1 => u2_n_33, A2 => count_out(3), ZN => u2_n_42);
  u2_g2005 : ND2D1BWP7T port map(A1 => u2_n_31, A2 => u2_n_35, ZN => u2_n_41);
  u2_g2006 : NR2D1BWP7T port map(A1 => u2_state(0), A2 => u2_n_0, ZN => u2_n_73);
  u2_g2007 : CKAN2D1BWP7T port map(A1 => count_out(0), A2 => count_out(3), Z => u2_n_136);
  u2_g2008 : NR2D1BWP7T port map(A1 => u2_n_33, A2 => count_out(2), ZN => u2_n_44);
  u2_g2009 : ND2D1BWP7T port map(A1 => u2_n_0, A2 => data_read_in(6), ZN => u2_n_37);
  u2_g2010 : ND2D0BWP7T port map(A1 => u2_state(0), A2 => u2_state(1), ZN => u2_n_1272_BAR);
  u2_g2011 : NR2XD0BWP7T port map(A1 => u2_state(2), A2 => u2_state(1), ZN => u2_n_40);
  u2_g2012 : CKAN2D1BWP7T port map(A1 => FE_PHN28_u2_state_2, A2 => u2_n_1, Z => u2_n_74);
  u2_g2013 : NR2D1BWP7T port map(A1 => u2_n_31, A2 => count_out(3), ZN => u2_n_39);
  u2_g2014 : CKAN2D1BWP7T port map(A1 => u2_n_0, A2 => u2_state(2), Z => u2_n_38);
  u2_g2015 : INVD1BWP7T port map(I => FE_PHN53_reset, ZN => u2_n_1);
  u2_g2016 : INVD0BWP7T port map(I => count_out(3), ZN => u2_n_35);
  u2_g2020 : INVD1BWP7T port map(I => count_out(1), ZN => u2_n_33);
  u2_g2021 : INVD0BWP7T port map(I => count_out(2), ZN => u2_n_32);
  u2_g1636 : AO21D0BWP7T port map(A1 => u2_state(0), A2 => u2_n_21, B => u2_n_20, Z => u2_n_22);
  u2_data_read_reg_6 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => data_read_in(4), E => u2_n_18, Q => FE_OFN5_data_out_6);
  u2_data_read_reg_5 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => data_read_in(2), E => u2_n_18, Q => FE_OFN4_data_out_5);
  u2_data_read_reg_4 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => FE_PHN37_data_read_in_0, E => u2_n_18, Q => FE_OFN0_data_out_4);
  u2_data_read_reg_0 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => FE_PHN32_data_read_in_1, E => u2_n_18, Q => FE_OFN3_data_out_0);
  u2_data_read_reg_1 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => data_read_in(3), E => u2_n_18, Q => FE_OFN6_data_out_1);
  u2_data_read_reg_7 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => data_read_in(6), E => u2_n_18, Q => FE_OFN1_data_out_7);
  u2_data_read_reg_3 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => data_read_in(7), E => u2_n_18, Q => FE_OFN2_data_out_3);
  u2_data_read_reg_2 : EDFCNQD1BWP7T port map(CDN => u2_n_1, CP => CTS_15, D => FE_PHN33_data_read_in_5, E => u2_n_18, Q => FE_OFN7_data_out_2);
  u2_g1646 : AOI221D0BWP7T port map(A1 => u2_state(2), A2 => u2_n_16, B1 => u2_n_4, B2 => u2_state(1), C => u2_n_13, ZN => u2_n_21);
  u2_g1647 : AOI21D0BWP7T port map(A1 => u2_state(2), A2 => u2_n_15, B => u2_state(0), ZN => u2_n_20);
  u2_g1648 : OAI211D1BWP7T port map(A1 => u2_n_12, A2 => u2_n_9, B => u2_n_17, C => u2_n_10, ZN => u2_n_19);
  u2_g1649 : AOI21D1BWP7T port map(A1 => u2_n_14, A2 => u2_n_1272_BAR, B => u2_n_2, ZN => u2_n_18);
  u2_g1650 : ND2D1BWP7T port map(A1 => u2_n_13, A2 => u2_state(0), ZN => u2_n_17);
  u2_g1651 : OAI31D0BWP7T port map(A1 => u2_RW_LATCH, A2 => count_out(1), A3 => u2_n_590_BAR, B => u2_n_12, ZN => u2_n_16);
  u2_g1652 : AOI32D1BWP7T port map(A1 => u2_n_5, A2 => u2_state(1), A3 => u2_n_6, B1 => u2_n_0, B2 => en, ZN => u2_n_15);
  u2_SHIFT_nLOAD_reg : DFNCND1BWP7T port map(CDN => u2_n_1, CPN => CTS_15, D => u2_n_11, Q => u2_SHIFT_nLOAD, QN => u2_n_129);
  u2_g1654 : OAI21D0BWP7T port map(A1 => u2_n_5, A2 => u2_n_7, B => u2_n_73, ZN => u2_n_14);
  u2_g1655 : AN4D1BWP7T port map(A1 => u2_n_5, A2 => u2_n_0, A3 => u2_n_2, A4 => count_out(2), Z => u2_n_13);
  u2_g1656 : ND4D0BWP7T port map(A1 => u2_n_3, A2 => count_out(2), A3 => count_out(1), A4 => u2_RW_LATCH, ZN => u2_n_12);
  u2_g1658 : INR2D1BWP7T port map(A1 => FE_PHN38_u2_n_129, B1 => u2_n_9, ZN => u2_n_11);
  u2_g1659 : AO21D0BWP7T port map(A1 => u2_n_4, A2 => u2_state(0), B => u2_n_0, Z => u2_n_10);
  u2_g1661 : ND3D0BWP7T port map(A1 => u2_n_0, A2 => u2_state(0), A3 => u2_state(2), ZN => u2_n_9);
  u2_g1662 : AN3D0BWP7T port map(A1 => count_out(2), A2 => count_out(3), A3 => count_out(0), Z => u2_n_7);
  u2_g1663 : CKXOR2D1BWP7T port map(A1 => count_out(2), A2 => u2_SINGLE_LATCH, Z => u2_n_6);
  u2_g1664 : CKAN2D1BWP7T port map(A1 => u2_n_136, A2 => count_out(1), Z => u2_n_5);
  u2_g1665 : NR2XD0BWP7T port map(A1 => count_out(0), A2 => count_out(3), ZN => u2_n_3);
  u2_g1666 : OR2D1BWP7T port map(A1 => u2_n_75, A2 => u2_state(2), Z => u2_n_4);
  u2_state_reg_1 : DFKCND1BWP7T port map(CN => u2_n_1, CP => CTS_15, D => u2_n_19, Q => u2_state(1), QN => u2_n_0);
  u2_state_reg_0 : DFKCND1BWP7T port map(CN => u2_n_1, CP => CTS_15, D => u2_n_22, Q => u2_state(0), QN => u2_n_31);
  u2_state_reg_2 : DFD1BWP7T port map(CP => CTS_15, D => u2_n_140, Q => u2_state(2), QN => u2_n_2);
  u2_g2 : AO31D1BWP7T port map(A1 => u2_n_75, A2 => u2_n_48, A3 => FE_PHN41_u2_state_0, B => u2_n_74, Z => u2_n_140);
  u0_count_reg_3 : DFQD1BWP7T port map(CP => CTS_15, D => u0_n_8, Q => count_out(3));
  u0_g225 : NR2XD0BWP7T port map(A1 => u0_n_7, A2 => cs, ZN => u0_n_8);
  u0_count_reg_2 : DFKCNQD1BWP7T port map(CN => u0_n_0, CP => CTS_15, D => u0_n_6, Q => count_out(2));
  u0_g227 : MAOI22D0BWP7T port map(A1 => u0_n_5, A2 => count_out(3), B1 => u0_n_5, B2 => count_out(3), ZN => u0_n_7);
  u0_count_reg_1 : DFKCNQD1BWP7T port map(CN => u0_n_0, CP => CTS_15, D => u0_n_4, Q => count_out(1));
  u0_g229 : MOAI22D0BWP7T port map(A1 => u0_n_3, A2 => count_out(2), B1 => u0_n_3, B2 => count_out(2), ZN => u0_n_6);
  u0_g230 : IND2D1BWP7T port map(A1 => u0_n_3, B1 => count_out(2), ZN => u0_n_5);
  u0_count_reg_0 : DFKCNQD1BWP7T port map(CN => u0_n_0, CP => CTS_15, D => u0_n_2, Q => count_out(0));
  u0_g232 : MOAI22D0BWP7T port map(A1 => u0_n_1, A2 => count_out(1), B1 => u0_n_1, B2 => count_out(1), ZN => u0_n_4);
  u0_g233 : IND2D1BWP7T port map(A1 => u0_n_1, B1 => count_out(1), ZN => u0_n_3);
  u0_g234 : CKXOR2D1BWP7T port map(A1 => count_en, A2 => count_out(0), Z => u0_n_2);
  u0_g235 : ND2D1BWP7T port map(A1 => count_en, A2 => count_out(0), ZN => u0_n_1);
  u0_g236 : INVD1BWP7T port map(I => cs, ZN => u0_n_0);

end routed;
