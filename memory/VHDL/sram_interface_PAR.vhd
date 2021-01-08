
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of sram_interface is

  component BUFFD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL02BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
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

  component CKBD12BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKND0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component DFQD0BWP7T
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

  component LHQD1BWP7T
    port(D, E : in std_logic; Q : out std_logic);
  end component;

  component OAI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D5BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component EDFCNQD1BWP7T
    port(CDN, CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component OAI21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component DFNCND1BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CN, CP, D : in std_logic; Q : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component BUFTD4BWP7T
    port(I, OE : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal FE_PHN41_RESET, FE_PHN40_u0_u2_state_1, FE_PHN39_u0_u2_state_0, FE_PHN38_u0_u2_n_90, FE_PHN37_u0_u2_n_90 : std_logic;
  signal FE_PHN36_u0_u2_n_90, FE_PHN35_u0_u2_n_90, FE_PHN34_u0_data_read_in_7, FE_PHN33_u0_data_read_in_3, FE_PHN32_u0_data_read_in_1 : std_logic;
  signal FE_PHN31_u0_data_read_in_6, FE_PHN30_u0_data_read_in_2, FE_PHN29_u0_data_read_in_4, FE_PHN28_u0_data_read_in_5, FE_PHN27_u0_data_read_in_0 : std_logic;
  signal FE_PHN26_u0_u2_SHIFT_nLOAD, FE_PHN25_u0_u2_n_30, FE_PHN24_u0_count_out_3, FE_PHN23_u0_u2_n_30, FE_PHN22_u0_u2_n_90 : std_logic;
  signal FE_PHN21_u0_u2_n_90, FE_PHN20_u0_u2_n_90, FE_PHN19_u0_u2_n_36, FE_PHN18_u0_u2_n_90, FE_PHN17_u0_u2_n_90 : std_logic;
  signal FE_PHN16_u0_u2_n_90, FE_PHN15_u0_u2_n_90, FE_PHN14_u0_u2_n_90, FE_PHN13_u0_u2_n_90, FE_PHN12_u0_u2_n_90 : std_logic;
  signal FE_PHN11_u0_u2_n_90, FE_PHN10_u0_u2_n_90, FE_OFN9_new_data, FE_OFN8_n_54, FE_OFN7_DATA_OUT_2 : std_logic;
  signal FE_OFN6_DATA_OUT_7, FE_OFN5_DATA_OUT_6, FE_OFN4_DATA_OUT_5, FE_OFN3_DATA_OUT_3, FE_OFN2_DATA_OUT_1 : std_logic;
  signal FE_OFN1_DATA_OUT_0, FE_OFN0_DATA_OUT_4, CTS_18, CTS_17, CTS_16 : std_logic;
  signal CTS_2 : std_logic;
  signal u0_data_read_in : std_logic_vector(7 downto 0);
  signal u0_data_wire : std_logic_vector(7 downto 0);
  signal u0_u2_new_state : std_logic_vector(3 downto 0);
  signal u0_u2_state : std_logic_vector(3 downto 0);
  signal u0_count_out : std_logic_vector(3 downto 0);
  signal MOSI : std_logic_vector(3 downto 0);
  signal UNCONNECTED, high_z, n_0, n_48, n_49 : std_logic;
  signal n_53, n_54, n_58, n_59, n_63 : std_logic;
  signal n_64, u0_count_en, u0_load_reg, u0_n_4, u0_n_5 : std_logic;
  signal u0_n_6, u0_n_7, u0_n_8, u0_n_9, u0_n_10 : std_logic;
  signal u0_n_11, u0_n_12, u0_n_13, u0_n_14, u0_shift_clk : std_logic;
  signal u0_shift_reg, u0_u0_n_0, u0_u0_n_1, u0_u0_n_2, u0_u0_n_3 : std_logic;
  signal u0_u0_n_4, u0_u0_n_5, u0_u0_n_6, u0_u0_n_7, u0_u0_n_8 : std_logic;
  signal u0_u0_n_9, u0_u2_RW_LATCH, u0_u2_SHIFT_nLOAD, u0_u2_SINGLE_LATCH, u0_u2_n_0 : std_logic;
  signal u0_u2_n_1, u0_u2_n_3, u0_u2_n_12, u0_u2_n_13, u0_u2_n_14 : std_logic;
  signal u0_u2_n_15, u0_u2_n_16, u0_u2_n_18, u0_u2_n_19, u0_u2_n_20 : std_logic;
  signal u0_u2_n_21, u0_u2_n_22, u0_u2_n_23, u0_u2_n_24, u0_u2_n_25 : std_logic;
  signal u0_u2_n_26, u0_u2_n_27, u0_u2_n_28, u0_u2_n_29, u0_u2_n_30 : std_logic;
  signal u0_u2_n_31, u0_u2_n_32, u0_u2_n_33, u0_u2_n_34, u0_u2_n_35 : std_logic;
  signal u0_u2_n_36, u0_u2_n_37, u0_u2_n_38, u0_u2_n_39, u0_u2_n_40 : std_logic;
  signal u0_u2_n_41, u0_u2_n_42, u0_u2_n_43, u0_u2_n_44, u0_u2_n_45 : std_logic;
  signal u0_u2_n_46, u0_u2_n_47, u0_u2_n_48, u0_u2_n_49, u0_u2_n_50 : std_logic;
  signal u0_u2_n_51, u0_u2_n_52, u0_u2_n_53, u0_u2_n_54, u0_u2_n_55 : std_logic;
  signal u0_u2_n_56, u0_u2_n_57, u0_u2_n_58, u0_u2_n_59, u0_u2_n_60 : std_logic;
  signal u0_u2_n_61, u0_u2_n_62, u0_u2_n_63, u0_u2_n_64, u0_u2_n_65 : std_logic;
  signal u0_u2_n_66, u0_u2_n_67, u0_u2_n_68, u0_u2_n_69, u0_u2_n_70 : std_logic;
  signal u0_u2_n_71, u0_u2_n_72, u0_u2_n_73, u0_u2_n_74, u0_u2_n_75 : std_logic;
  signal u0_u2_n_76, u0_u2_n_77, u0_u2_n_78, u0_u2_n_79, u0_u2_n_80 : std_logic;
  signal u0_u2_n_81, u0_u2_n_82, u0_u2_n_84, u0_u2_n_89, u0_u2_n_90 : std_logic;
  signal u0_u2_n_91, u0_u2_n_92, u0_u2_n_143, u0_u2_n_153, u0_u2_n_157 : std_logic;
  signal u0_u2_n_158, u0_u2_n_1373_BAR : std_logic;

begin

  FE_PHC41_RESET : BUFFD1BWP7T port map(I => RESET, Z => FE_PHN41_RESET);
  FE_PHC40_u0_u2_state_1 : BUFFD4BWP7T port map(I => u0_u2_state(1), Z => FE_PHN40_u0_u2_state_1);
  FE_PHC39_u0_u2_state_0 : BUFFD4BWP7T port map(I => u0_u2_state(0), Z => FE_PHN39_u0_u2_state_0);
  FE_PHC38_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN37_u0_u2_n_90, Z => FE_PHN38_u0_u2_n_90);
  FE_PHC37_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN36_u0_u2_n_90, Z => FE_PHN37_u0_u2_n_90);
  FE_PHC36_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN35_u0_u2_n_90, Z => FE_PHN36_u0_u2_n_90);
  FE_PHC35_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN22_u0_u2_n_90, Z => FE_PHN35_u0_u2_n_90);
  FE_PHC34_u0_data_read_in_7 : DEL02BWP7T port map(I => u0_data_read_in(7), Z => FE_PHN34_u0_data_read_in_7);
  FE_PHC33_u0_data_read_in_3 : DEL0BWP7T port map(I => FE_PHN33_u0_data_read_in_3, Z => u0_data_read_in(3));
  FE_PHC32_u0_data_read_in_1 : DEL02BWP7T port map(I => u0_data_read_in(1), Z => FE_PHN32_u0_data_read_in_1);
  FE_PHC31_u0_data_read_in_6 : DEL02BWP7T port map(I => u0_data_read_in(6), Z => FE_PHN31_u0_data_read_in_6);
  FE_PHC30_u0_data_read_in_2 : DEL02BWP7T port map(I => FE_PHN30_u0_data_read_in_2, Z => u0_data_read_in(2));
  FE_PHC29_u0_data_read_in_4 : DEL02BWP7T port map(I => FE_PHN29_u0_data_read_in_4, Z => u0_data_read_in(4));
  FE_PHC28_u0_data_read_in_5 : DEL02BWP7T port map(I => FE_PHN28_u0_data_read_in_5, Z => u0_data_read_in(5));
  FE_PHC27_u0_data_read_in_0 : DEL02BWP7T port map(I => u0_data_read_in(0), Z => FE_PHN27_u0_data_read_in_0);
  FE_PHC26_u0_u2_SHIFT_nLOAD : DEL0BWP7T port map(I => u0_u2_SHIFT_nLOAD, Z => FE_PHN26_u0_u2_SHIFT_nLOAD);
  FE_PHC25_u0_u2_n_30 : CKBD1BWP7T port map(I => FE_PHN23_u0_u2_n_30, Z => FE_PHN25_u0_u2_n_30);
  FE_PHC24_u0_count_out_3 : DEL01BWP7T port map(I => u0_count_out(3), Z => FE_PHN24_u0_count_out_3);
  FE_PHC23_u0_u2_n_30 : CKBD0BWP7T port map(I => u0_u2_n_30, Z => FE_PHN23_u0_u2_n_30);
  FE_PHC22_u0_u2_n_90 : CKBD1BWP7T port map(I => FE_PHN17_u0_u2_n_90, Z => FE_PHN22_u0_u2_n_90);
  FE_PHC21_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN38_u0_u2_n_90, Z => FE_PHN21_u0_u2_n_90);
  FE_PHC20_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN21_u0_u2_n_90, Z => FE_PHN20_u0_u2_n_90);
  FE_PHC19_u0_u2_n_36 : DEL0BWP7T port map(I => u0_u2_n_36, Z => FE_PHN19_u0_u2_n_36);
  FE_PHC18_u0_u2_n_90 : CKBD0BWP7T port map(I => FE_PHN20_u0_u2_n_90, Z => FE_PHN18_u0_u2_n_90);
  FE_PHC17_u0_u2_n_90 : DEL0BWP7T port map(I => FE_PHN16_u0_u2_n_90, Z => FE_PHN17_u0_u2_n_90);
  FE_PHC16_u0_u2_n_90 : DEL3BWP7T port map(I => FE_PHN14_u0_u2_n_90, Z => FE_PHN16_u0_u2_n_90);
  FE_PHC15_u0_u2_n_90 : DEL4BWP7T port map(I => FE_PHN18_u0_u2_n_90, Z => FE_PHN15_u0_u2_n_90);
  FE_PHC14_u0_u2_n_90 : DEL4BWP7T port map(I => FE_PHN10_u0_u2_n_90, Z => FE_PHN14_u0_u2_n_90);
  FE_PHC13_u0_u2_n_90 : DEL4BWP7T port map(I => FE_PHN15_u0_u2_n_90, Z => FE_PHN13_u0_u2_n_90);
  FE_PHC12_u0_u2_n_90 : DEL4BWP7T port map(I => FE_PHN13_u0_u2_n_90, Z => FE_PHN12_u0_u2_n_90);
  FE_PHC11_u0_u2_n_90 : DEL4BWP7T port map(I => FE_PHN12_u0_u2_n_90, Z => FE_PHN11_u0_u2_n_90);
  FE_PHC10_u0_u2_n_90 : DEL4BWP7T port map(I => u0_u2_n_90, Z => FE_PHN10_u0_u2_n_90);
  FE_OFC9_new_data : BUFFD5BWP7T port map(I => FE_OFN9_new_data, Z => new_data);
  FE_OFC8_n_54 : DEL01BWP7T port map(I => n_54, Z => FE_OFN8_n_54);
  FE_OFC7_DATA_OUT_2 : BUFFD5BWP7T port map(I => FE_OFN7_DATA_OUT_2, Z => DATA_OUT(2));
  FE_OFC6_DATA_OUT_7 : BUFFD5BWP7T port map(I => FE_OFN6_DATA_OUT_7, Z => DATA_OUT(7));
  FE_OFC5_DATA_OUT_6 : BUFFD5BWP7T port map(I => FE_OFN5_DATA_OUT_6, Z => DATA_OUT(6));
  FE_OFC4_DATA_OUT_5 : BUFFD5BWP7T port map(I => FE_OFN4_DATA_OUT_5, Z => DATA_OUT(5));
  FE_OFC3_DATA_OUT_3 : BUFFD5BWP7T port map(I => FE_OFN3_DATA_OUT_3, Z => DATA_OUT(3));
  FE_OFC2_DATA_OUT_1 : BUFFD5BWP7T port map(I => FE_OFN2_DATA_OUT_1, Z => DATA_OUT(1));
  FE_OFC1_DATA_OUT_0 : BUFFD5BWP7T port map(I => FE_OFN1_DATA_OUT_0, Z => DATA_OUT(0));
  FE_OFC0_DATA_OUT_4 : BUFFD5BWP7T port map(I => FE_OFN0_DATA_OUT_4, Z => DATA_OUT(4));
  CTS_ccl_a_BUF_clk_G0_L2_1 : CKBD2BWP7T port map(I => CTS_18, Z => CTS_17);
  CTS_ccl_a_BUF_clk_G0_L1_2 : CKBD2BWP7T port map(I => CLK, Z => CTS_18);
  CTS_ccl_a_BUF_clk_G0_L3_1 : CKBD12BWP7T port map(I => CTS_2, Z => SCK);
  CTS_cex_INV_clk_G0_L1_1 : CKND0BWP7T port map(I => CLK, ZN => CTS_16);
  g2 : CKND1BWP7T port map(I => high_z, ZN => n_0);
  drc_bufs3 : INVD0BWP7T port map(I => n_49, ZN => n_48);
  drc_bufs4 : INVD0BWP7T port map(I => SO(0), ZN => n_49);
  drc_bufs5 : INVD0BWP7T port map(I => FE_OFN8_n_54, ZN => n_53);
  drc_bufs6 : INVD0BWP7T port map(I => SO(1), ZN => n_54);
  drc_bufs7 : INVD0BWP7T port map(I => n_59, ZN => n_58);
  drc_bufs8 : INVD0BWP7T port map(I => SO(2), ZN => n_59);
  drc_bufs9 : INVD0BWP7T port map(I => n_64, ZN => n_63);
  drc_bufs10 : INVD0BWP7T port map(I => SO(3), ZN => n_64);
  u0_u1_reg_reg_0 : DFQD1BWP7T port map(CP => u0_shift_clk, D => u0_n_11, Q => u0_data_read_in(0));
  u0_u1_reg_reg_6 : DFQD1BWP7T port map(CP => u0_shift_clk, D => u0_n_13, Q => u0_data_read_in(6));
  u0_u1_reg_reg_5 : DFQD0BWP7T port map(CP => u0_shift_clk, D => u0_n_7, Q => FE_PHN28_u0_data_read_in_5);
  u0_u1_reg_reg_1 : DFQD0BWP7T port map(CP => u0_shift_clk, D => u0_n_12, Q => u0_data_read_in(1));
  u0_u1_reg_reg_2 : DFQD1BWP7T port map(CP => u0_shift_clk, D => u0_n_8, Q => FE_PHN30_u0_data_read_in_2);
  u0_u1_reg_reg_4 : DFQD1BWP7T port map(CP => u0_shift_clk, D => u0_n_10, Q => FE_PHN29_u0_data_read_in_4);
  u0_u1_reg_reg_7 : DFQD0BWP7T port map(CP => u0_shift_clk, D => u0_n_14, Q => u0_data_read_in(7));
  u0_u1_reg_reg_3 : DFQD0BWP7T port map(CP => u0_shift_clk, D => u0_n_9, Q => FE_PHN33_u0_data_read_in_3);
  u0_g515 : AO222D0BWP7T port map(A1 => n_63, A2 => u0_n_6, B1 => u0_n_5, B2 => FE_PHN34_u0_data_read_in_7, C1 => u0_data_wire(7), C2 => u0_n_4, Z => u0_n_14);
  u0_g516 : AO222D0BWP7T port map(A1 => u0_n_6, A2 => FE_PHN34_u0_data_read_in_7, B1 => u0_n_5, B2 => FE_PHN31_u0_data_read_in_6, C1 => u0_data_wire(3), C2 => u0_n_4, Z => u0_n_13);
  u0_g517 : AO222D0BWP7T port map(A1 => n_48, A2 => u0_n_6, B1 => u0_n_5, B2 => FE_PHN32_u0_data_read_in_1, C1 => u0_data_wire(4), C2 => u0_n_4, Z => u0_n_12);
  u0_g518 : AO222D0BWP7T port map(A1 => u0_n_6, A2 => FE_PHN32_u0_data_read_in_1, B1 => u0_n_5, B2 => FE_PHN27_u0_data_read_in_0, C1 => u0_data_wire(0), C2 => u0_n_4, Z => u0_n_11);
  u0_g519 : AO222D0BWP7T port map(A1 => u0_n_6, A2 => u0_data_read_in(5), B1 => u0_n_5, B2 => u0_data_read_in(4), C1 => u0_data_wire(2), C2 => u0_n_4, Z => u0_n_10);
  u0_g520 : AO222D0BWP7T port map(A1 => n_53, A2 => u0_n_6, B1 => u0_n_5, B2 => u0_data_read_in(3), C1 => u0_n_4, C2 => u0_data_wire(5), Z => u0_n_9);
  u0_g521 : AO222D0BWP7T port map(A1 => u0_n_6, A2 => u0_data_read_in(3), B1 => u0_n_5, B2 => u0_data_read_in(2), C1 => u0_data_wire(1), C2 => u0_n_4, Z => u0_n_8);
  u0_g522 : AO222D0BWP7T port map(A1 => n_58, A2 => u0_n_6, B1 => u0_n_5, B2 => u0_data_read_in(5), C1 => u0_data_wire(6), C2 => u0_n_4, Z => u0_n_7);
  u0_g523 : INR3D0BWP7T port map(A1 => u0_shift_reg, B1 => FE_PHN41_RESET, B2 => u0_load_reg, ZN => u0_n_6);
  u0_g524 : NR3D0BWP7T port map(A1 => u0_load_reg, A2 => u0_shift_reg, A3 => FE_PHN41_RESET, ZN => u0_n_5);
  u0_g525 : INR2D1BWP7T port map(A1 => u0_load_reg, B1 => FE_PHN41_RESET, ZN => u0_n_4);
  u0_u2_g1358 : CKAN2D0BWP7T port map(A1 => CTS_16, A2 => u0_u2_n_82, Z => CTS_2);
  u0_u2_g1359 : IOA21D1BWP7T port map(A1 => CTS_18, A2 => FE_PHN11_u0_u2_n_90, B => u0_u2_n_81, ZN => u0_shift_clk);
  u0_u2_g1360 : INR2D0BWP7T port map(A1 => u0_u2_n_89, B1 => FE_PHN41_RESET, ZN => u0_u2_n_82);
  u0_u2_g1361 : IND2D0BWP7T port map(A1 => u0_u2_n_90, B1 => CTS_16, ZN => u0_u2_n_81);
  u0_u2_new_state_reg_1 : LHQD1BWP7T port map(D => u0_u2_n_79, E => u0_u2_n_80, Q => u0_u2_new_state(1));
  u0_u2_new_state_reg_0 : LHQD1BWP7T port map(D => u0_u2_n_78, E => u0_u2_n_80, Q => u0_u2_new_state(0));
  u0_u2_g2696 : OAI211D0BWP7T port map(A1 => u0_u2_n_14, A2 => u0_u2_n_25, B => u0_u2_n_41, C => u0_u2_n_77, ZN => u0_u2_n_79);
  u0_u2_g2697 : OAI211D0BWP7T port map(A1 => u0_u2_state(0), A2 => u0_u2_n_29, B => u0_u2_n_41, C => u0_u2_n_76, ZN => u0_u2_n_78);
  u0_u2_g2698 : AOI222D0BWP7T port map(A1 => u0_u2_state(1), A2 => u0_u2_n_71, B1 => u0_count_out(1), B2 => u0_u2_n_75, C1 => u0_u2_n_44, C2 => u0_u2_state(1), ZN => u0_u2_n_77);
  u0_u2_g2699 : AOI221D0BWP7T port map(A1 => u0_u2_state(0), A2 => u0_u2_n_73, B1 => u0_u2_n_36, B2 => u0_u2_n_66, C => u0_u2_n_57, ZN => u0_u2_n_76);
  u0_u2_new_state_reg_2 : LHQD1BWP7T port map(D => u0_u2_n_74, E => u0_u2_n_80, Q => u0_u2_new_state(2));
  u0_u2_g2701 : OAI31D0BWP7T port map(A1 => FE_PHN41_RESET, A2 => u0_u2_n_29, A3 => u0_u2_n_68, B => u0_u2_n_34, ZN => MOSI(0));
  u0_u2_new_state_reg_3 : LHQD1BWP7T port map(D => u0_u2_n_72, E => u0_u2_n_80, Q => u0_u2_new_state(3));
  u0_u2_g2703 : OAI21D0BWP7T port map(A1 => u0_count_out(0), A2 => u0_u2_n_69, B => u0_u2_n_51, ZN => u0_u2_n_75);
  u0_u2_g2704 : IOA21D0BWP7T port map(A1 => u0_u2_state(2), A2 => u0_u2_n_70, B => u0_u2_n_59, ZN => u0_u2_n_74);
  u0_u2_g2705 : OAI211D0BWP7T port map(A1 => u0_u2_n_60, A2 => u0_count_out(1), B => u0_count_out(0), C => u0_u2_n_65, ZN => u0_u2_n_73);
  u0_u2_g2706 : ND2D1BWP7T port map(A1 => u0_u2_n_67, A2 => u0_u2_n_63, ZN => u0_data_wire(4));
  u0_u2_g2707 : NR2D0BWP7T port map(A1 => u0_u2_n_15, A2 => u0_u2_n_70, ZN => u0_u2_n_72);
  u0_u2_g2708 : AO21D0BWP7T port map(A1 => u0_count_out(3), A2 => u0_u2_n_66, B => u0_u2_n_64, Z => u0_u2_n_71);
  u0_u2_g2709 : AO222D0BWP7T port map(A1 => u0_u2_n_52, A2 => ADDRESS(13), B1 => u0_u2_n_61, B2 => ADDRESS(5), C1 => u0_u2_n_62, C2 => DATA_IN(5), Z => u0_data_wire(1));
  u0_u2_g2710 : AO222D0BWP7T port map(A1 => u0_u2_n_52, A2 => ADDRESS(10), B1 => u0_u2_n_61, B2 => ADDRESS(2), C1 => u0_u2_n_62, C2 => DATA_IN(2), Z => u0_data_wire(6));
  u0_u2_g2711 : AO222D0BWP7T port map(A1 => u0_u2_n_61, A2 => ADDRESS(6), B1 => u0_u2_n_52, B2 => ADDRESS(14), C1 => u0_u2_n_62, C2 => DATA_IN(6), Z => u0_data_wire(2));
  u0_u2_g2712 : AO222D0BWP7T port map(A1 => u0_u2_n_61, A2 => ADDRESS(4), B1 => u0_u2_n_52, B2 => ADDRESS(12), C1 => u0_u2_n_62, C2 => DATA_IN(4), Z => u0_data_wire(0));
  u0_u2_g2713 : AO222D0BWP7T port map(A1 => u0_u2_n_61, A2 => ADDRESS(3), B1 => u0_u2_n_52, B2 => ADDRESS(11), C1 => u0_u2_n_62, C2 => DATA_IN(3), Z => u0_data_wire(7));
  u0_u2_g2714 : OAI31D0BWP7T port map(A1 => u0_count_out(3), A2 => u0_u2_n_50, A3 => u0_u2_n_48, B => u0_u2_n_53, ZN => u0_data_wire(5));
  u0_u2_g2715 : AOI31D0BWP7T port map(A1 => u0_u2_n_40, A2 => u0_u2_state(2), A3 => u0_u2_RW_LATCH, B => u0_u2_state(1), ZN => u0_u2_n_69);
  u0_u2_g2716 : OAI211D0BWP7T port map(A1 => u0_u2_SINGLE_LATCH, A2 => u0_u2_n_39, B => u0_u2_n_36, C => u0_u2_n_58, ZN => u0_u2_n_70);
  u0_u2_g2717 : AOI21D0BWP7T port map(A1 => u0_u2_n_56, A2 => u0_u2_n_22, B => u0_u2_n_49, ZN => u0_u2_n_68);
  u0_u2_g2718 : AOI22D0BWP7T port map(A1 => u0_u2_n_61, A2 => ADDRESS(0), B1 => u0_u2_n_62, B2 => DATA_IN(0), ZN => u0_u2_n_67);
  u0_u2_g2719 : AO22D0BWP7T port map(A1 => u0_u2_n_61, A2 => ADDRESS(7), B1 => DATA_IN(7), B2 => u0_u2_n_62, Z => u0_data_wire(3));
  u0_u2_g2720 : IOA21D0BWP7T port map(A1 => u0_count_out(2), A2 => u0_u2_SINGLE_LATCH, B => u0_u2_state(2), ZN => u0_u2_n_66);
  u0_u2_g2721 : CKND1BWP7T port map(I => u0_u2_n_64, ZN => u0_u2_n_65);
  u0_u2_g2722 : AOI22D0BWP7T port map(A1 => u0_u2_n_52, A2 => ADDRESS(8), B1 => done, B2 => RW, ZN => u0_u2_n_63);
  u0_u2_g2723 : OAI21D0BWP7T port map(A1 => u0_u2_n_19, A2 => u0_u2_SINGLE_LATCH, B => u0_u2_n_23, ZN => u0_u2_n_64);
  u0_u2_g2724 : NR2D0BWP7T port map(A1 => u0_u2_n_15, A2 => u0_u2_RW_LATCH, ZN => u0_u2_n_60);
  u0_u2_g2725 : AOI31D0BWP7T port map(A1 => u0_u2_n_39, A2 => u0_u2_n_22, A3 => FE_PHN40_u0_u2_state_1, B => u0_u2_n_27, ZN => u0_u2_n_59);
  u0_u2_g2726 : AN2D1BWP7T port map(A1 => u0_u2_n_55, A2 => u0_count_out(1), Z => u0_u2_n_62);
  u0_u2_g2727 : AN2D1BWP7T port map(A1 => u0_u2_n_55, A2 => u0_u2_n_14, Z => u0_u2_n_61);
  u0_u2_g2728 : OAI21D0BWP7T port map(A1 => u0_u2_n_48, A2 => u0_u2_SHIFT_nLOAD, B => u0_u2_n_53, ZN => u0_load_reg);
  u0_u2_g2729 : OR2D1BWP7T port map(A1 => done, A2 => u0_u2_n_54, Z => FE_OFN9_new_data);
  u0_u2_g2730 : OAI21D0BWP7T port map(A1 => u0_u2_n_19, A2 => u0_u2_n_16, B => u0_u2_SINGLE_LATCH, ZN => u0_u2_n_58);
  u0_u2_g2731 : OAI211D0BWP7T port map(A1 => u0_u2_n_26, A2 => u0_u2_n_35, B => u0_u2_n_45, C => u0_u2_n_43, ZN => u0_u2_n_57);
  u0_u2_g2732 : AO22D0BWP7T port map(A1 => u0_u2_n_46, A2 => FE_PHN40_u0_u2_state_1, B1 => u0_u2_n_12, B2 => u0_u2_n_39, Z => u0_u2_n_56);
  u0_u2_g2733 : NR2XD0BWP7T port map(A1 => u0_u2_n_90, A2 => u0_u2_n_84, ZN => u0_u2_n_54);
  u0_u2_g2734 : ND2D5BWP7T port map(A1 => u0_u2_n_89, A2 => u0_u2_n_0, ZN => CS);
  u0_u2_RW_LATCH_reg : LNQD1BWP7T port map(D => RW, EN => u0_count_en, Q => u0_u2_RW_LATCH);
  u0_u2_g2736 : INR2D0BWP7T port map(A1 => u0_u2_n_40, B1 => u0_u2_n_48, ZN => u0_u2_n_55);
  u0_u2_SINGLE_LATCH_reg : LNQD1BWP7T port map(D => SINGLE, EN => u0_count_en, Q => u0_u2_SINGLE_LATCH);
  u0_u2_g2738 : INVD1BWP7T port map(I => done, ZN => u0_u2_n_53);
  u0_u2_g2739 : ND4D0BWP7T port map(A1 => u0_u2_n_24, A2 => u0_u2_state(0), A3 => u0_count_out(0), A4 => u0_count_out(3), ZN => u0_u2_n_51);
  u0_u2_g2740 : OAI21D0BWP7T port map(A1 => u0_u2_n_92, A2 => FE_PHN41_RESET, B => u0_u2_n_90, ZN => high_z);
  u0_u2_g2741 : AOI31D0BWP7T port map(A1 => u0_count_out(1), A2 => u0_count_out(2), A3 => DATA_IN(1), B => u0_u2_n_42, ZN => u0_u2_n_50);
  u0_u2_g2742 : NR4D0BWP7T port map(A1 => u0_u2_n_91, A2 => u0_u2_n_26, A3 => u0_u2_n_16, A4 => u0_count_out(2), ZN => u0_u2_n_49);
  u0_u2_g2743 : CKAN2D8BWP7T port map(A1 => u0_u2_n_47, A2 => u0_u2_n_13, Z => done);
  u0_u2_g2744 : NR3D0BWP7T port map(A1 => u0_u2_n_48, A2 => u0_u2_n_19, A3 => u0_u2_n_21, ZN => u0_u2_n_52);
  u0_u2_g2745 : INVD0BWP7T port map(I => u0_u2_n_48, ZN => u0_u2_n_47);
  u0_u2_g2746 : OAI21D0BWP7T port map(A1 => u0_u2_n_23, A2 => u0_count_out(0), B => u0_u2_n_19, ZN => u0_u2_n_46);
  u0_u2_g2747 : AOI21D0BWP7T port map(A1 => u0_u2_n_33, A2 => u0_u2_n_28, B => u0_u2_n_37, ZN => u0_shift_reg);
  u0_u2_g2748 : NR2XD0BWP7T port map(A1 => u0_u2_n_143, A2 => FE_PHN41_RESET, ZN => u0_count_en);
  u0_u2_g2749 : ND2D1BWP7T port map(A1 => FE_PHN19_u0_u2_n_36, A2 => u0_u2_n_38, ZN => u0_u2_n_90);
  u0_u2_g2750 : ND2D1BWP7T port map(A1 => u0_u2_n_38, A2 => u0_u2_n_12, ZN => u0_u2_n_48);
  u0_u2_g2751 : IOA21D0BWP7T port map(A1 => u0_u2_n_24, A2 => u0_u2_state(1), B => u0_u2_n_22, ZN => u0_u2_n_45);
  u0_u2_g2752 : OAI22D0BWP7T port map(A1 => u0_u2_n_24, A2 => u0_count_out(3), B1 => u0_u2_n_16, B2 => u0_count_out(1), ZN => u0_u2_n_44);
  u0_u2_g2753 : ND3D0BWP7T port map(A1 => u0_u2_n_32, A2 => u0_u2_state(2), A3 => EN, ZN => u0_u2_n_43);
  u0_u2_g2754 : MOAI22D0BWP7T port map(A1 => u0_u2_n_23, A2 => u0_u2_n_18, B1 => u0_u2_n_20, B2 => ADDRESS(9), ZN => u0_u2_n_42);
  u0_u2_g2755 : AO211D0BWP7T port map(A1 => u0_u2_state(1), A2 => u0_u2_state(2), B => u0_u2_state(0), C => u0_u2_state(3), Z => u0_u2_n_89);
  u0_u2_g2756 : OAI21D0BWP7T port map(A1 => u0_u2_n_31, A2 => u0_u2_state(2), B => u0_u2_state(3), ZN => u0_u2_n_80);
  u0_u2_g2757 : INVD0BWP7T port map(I => u0_u2_n_37, ZN => u0_u2_n_38);
  u0_u2_g2758 : IND2D1BWP7T port map(A1 => u0_u2_n_33, B1 => u0_u2_n_30, ZN => u0_u2_n_153);
  u0_u2_g2759 : CKAN2D1BWP7T port map(A1 => u0_u2_n_29, A2 => u0_data_read_in(2), Z => MOSI(1));
  u0_u2_g2760 : CKAN2D1BWP7T port map(A1 => u0_u2_n_29, A2 => u0_data_read_in(4), Z => MOSI(2));
  u0_u2_g2761 : IND2D1BWP7T port map(A1 => FE_PHN31_u0_data_read_in_6, B1 => u0_u2_n_29, ZN => MOSI(3));
  u0_u2_g2762 : IND2D0BWP7T port map(A1 => u0_u2_n_33, B1 => u0_u2_n_14, ZN => u0_u2_n_41);
  u0_u2_g2763 : INR2D1BWP7T port map(A1 => u0_count_out(2), B1 => u0_u2_n_21, ZN => u0_u2_n_40);
  u0_u2_g2764 : NR2XD0BWP7T port map(A1 => u0_u2_n_84, A2 => u0_u2_n_14, ZN => u0_u2_n_39);
  u0_u2_g2765 : ND2D1BWP7T port map(A1 => FE_PHN25_u0_u2_n_30, A2 => u0_u2_n_0, ZN => u0_u2_n_37);
  u0_u2_g2766 : AOI21D0BWP7T port map(A1 => u0_count_out(1), A2 => u0_u2_state(2), B => u0_u2_n_20, ZN => u0_u2_n_35);
  u0_u2_g2767 : ND2D0BWP7T port map(A1 => u0_u2_n_29, A2 => FE_PHN27_u0_data_read_in_0, ZN => u0_u2_n_34);
  u0_u2_g2772 : CKND2D1BWP7T port map(A1 => u0_u2_n_32, A2 => u0_u2_n_27, ZN => u0_u2_n_92);
  u0_u2_g2773 : AN2D0BWP7T port map(A1 => u0_u2_n_32, A2 => u0_u2_n_30, Z => u0_u2_n_143);
  u0_u2_g2774 : INR2D1BWP7T port map(A1 => FE_PHN24_u0_count_out_3, B1 => u0_u2_n_33, ZN => u0_u2_n_36);
  u0_u2_g2775 : INVD0BWP7T port map(I => u0_u2_n_32, ZN => u0_u2_n_31);
  u0_u2_g2776 : ND2D0BWP7T port map(A1 => u0_u2_SHIFT_nLOAD, A2 => u0_u2_state(0), ZN => u0_u2_n_28);
  u0_u2_g2777 : INR2XD0BWP7T port map(A1 => u0_count_out(3), B1 => u0_u2_n_14, ZN => u0_u2_n_1373_BAR);
  u0_u2_g2778 : ND2D1BWP7T port map(A1 => u0_u2_n_14, A2 => u0_count_out(3), ZN => u0_u2_n_91);
  u0_u2_g2779 : ND2D1BWP7T port map(A1 => FE_PHN40_u0_u2_state_1, A2 => FE_PHN39_u0_u2_state_0, ZN => u0_u2_n_33);
  u0_u2_g2780 : NR2D1BWP7T port map(A1 => u0_u2_state(1), A2 => u0_u2_state(0), ZN => u0_u2_n_32);
  u0_u2_g2781 : NR2XD0BWP7T port map(A1 => u0_u2_n_15, A2 => u0_u2_state(3), ZN => u0_u2_n_30);
  u0_u2_g2782 : OR2D1BWP7T port map(A1 => u0_u2_state(2), A2 => u0_u2_state(3), Z => u0_u2_n_29);
  u0_u2_g2783 : INVD0BWP7T port map(I => u0_u2_n_22, ZN => u0_u2_n_21);
  u0_u2_g2784 : INVD1BWP7T port map(I => u0_u2_n_20, ZN => u0_u2_n_19);
  u0_u2_g2785 : INR2D1BWP7T port map(A1 => u0_u2_state(3), B1 => u0_u2_state(2), ZN => u0_u2_n_27);
  u0_u2_g2786 : ND2D1BWP7T port map(A1 => u0_count_out(0), A2 => u0_count_out(2), ZN => u0_u2_n_84);
  u0_u2_g2787 : ND2D1BWP7T port map(A1 => u0_u2_n_12, A2 => FE_PHN39_u0_u2_state_0, ZN => u0_u2_n_26);
  u0_u2_g2788 : CKND2D1BWP7T port map(A1 => u0_u2_n_13, A2 => FE_PHN40_u0_u2_state_1, ZN => u0_u2_n_25);
  u0_u2_g2789 : INR2D0BWP7T port map(A1 => u0_count_out(2), B1 => u0_u2_state(2), ZN => u0_u2_n_24);
  u0_u2_g2790 : ND2D1BWP7T port map(A1 => u0_u2_n_14, A2 => u0_count_out(2), ZN => u0_u2_n_23);
  u0_u2_g2791 : NR2XD0BWP7T port map(A1 => u0_u2_n_13, A2 => u0_count_out(3), ZN => u0_u2_n_22);
  u0_u2_g2792 : NR2XD0BWP7T port map(A1 => u0_u2_n_14, A2 => u0_count_out(2), ZN => u0_u2_n_20);
  u0_u2_g2793 : CKND1BWP7T port map(I => ADDRESS(1), ZN => u0_u2_n_18);
  u0_u2_g2794 : INVD1BWP7T port map(I => FE_PHN41_RESET, ZN => u0_u2_n_0);
  u0_u2_g2795 : INVD0BWP7T port map(I => u0_count_out(0), ZN => u0_u2_n_16);
  u0_u2_g2797 : INVD1BWP7T port map(I => u0_count_out(1), ZN => u0_u2_n_14);
  u0_u2_data_read_reg_5 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => u0_data_read_in(2), E => u0_u2_n_3, Q => FE_OFN4_DATA_OUT_5);
  u0_u2_data_read_reg_4 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => FE_PHN27_u0_data_read_in_0, E => u0_u2_n_3, Q => FE_OFN0_DATA_OUT_4);
  u0_u2_data_read_reg_0 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => FE_PHN32_u0_data_read_in_1, E => u0_u2_n_3, Q => FE_OFN1_DATA_OUT_0);
  u0_u2_data_read_reg_6 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => u0_data_read_in(4), E => u0_u2_n_3, Q => FE_OFN5_DATA_OUT_6);
  u0_u2_data_read_reg_2 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => u0_data_read_in(5), E => u0_u2_n_3, Q => FE_OFN7_DATA_OUT_2);
  u0_u2_data_read_reg_1 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => u0_data_read_in(3), E => u0_u2_n_3, Q => FE_OFN2_DATA_OUT_1);
  u0_u2_data_read_reg_7 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => FE_PHN31_u0_data_read_in_6, E => u0_u2_n_3, Q => FE_OFN6_DATA_OUT_7);
  u0_u2_data_read_reg_3 : EDFCNQD1BWP7T port map(CDN => u0_u2_n_0, CP => CTS_17, D => FE_PHN34_u0_data_read_in_7, E => u0_u2_n_3, Q => FE_OFN3_DATA_OUT_3);
  u0_u2_g1376 : OAI21D1BWP7T port map(A1 => u0_u2_n_1, A2 => u0_u2_n_153, B => u0_u2_n_92, ZN => u0_u2_n_3);
  u0_u2_SHIFT_nLOAD_reg : DFNCND1BWP7T port map(CDN => u0_u2_n_0, CPN => CTS_17, D => u0_u2_n_158, Q => u0_u2_SHIFT_nLOAD, QN => UNCONNECTED);
  u0_u2_state_reg_3 : DFKCNQD1BWP7T port map(CN => u0_u2_new_state(3), CP => CTS_17, D => u0_u2_n_0, Q => u0_u2_state(3));
  u0_u2_g1383 : MAOI22D0BWP7T port map(A1 => u0_u2_n_1373_BAR, A2 => u0_count_out(0), B1 => u0_u2_n_91, B2 => u0_u2_n_84, ZN => u0_u2_n_1);
  u0_u2_g2 : NR2D1BWP7T port map(A1 => u0_u2_n_157, A2 => FE_PHN26_u0_u2_SHIFT_nLOAD, ZN => u0_u2_n_158);
  u0_u2_g3 : IOA21D1BWP7T port map(A1 => u0_u2_n_25, A2 => u0_u2_n_26, B => u0_u2_n_30, ZN => u0_u2_n_157);
  u0_u2_state_reg_2 : DFKCND1BWP7T port map(CN => u0_u2_new_state(2), CP => CTS_17, D => u0_u2_n_0, Q => u0_u2_state(2), QN => u0_u2_n_15);
  u0_u2_state_reg_0 : DFKCND1BWP7T port map(CN => u0_u2_new_state(0), CP => CTS_17, D => u0_u2_n_0, Q => u0_u2_state(0), QN => u0_u2_n_13);
  u0_u2_state_reg_1 : DFKCND1BWP7T port map(CN => u0_u2_new_state(1), CP => CTS_17, D => u0_u2_n_0, Q => u0_u2_state(1), QN => u0_u2_n_12);
  u1_g3 : BUFTD4BWP7T port map(I => MOSI(3), OE => n_0, Z => SO(3));
  u1_g4 : BUFTD4BWP7T port map(I => MOSI(2), OE => n_0, Z => SO(2));
  u1_g6 : BUFTD4BWP7T port map(I => MOSI(0), OE => n_0, Z => SO(0));
  u1_g5 : BUFTD4BWP7T port map(I => MOSI(1), OE => n_0, Z => SO(1));
  u0_u0_count_reg_3 : DFQD1BWP7T port map(CP => CTS_17, D => u0_u0_n_9, Q => u0_count_out(3));
  u0_u0_g225 : NR2XD0BWP7T port map(A1 => u0_u0_n_8, A2 => CS, ZN => u0_u0_n_9);
  u0_u0_count_reg_2 : DFQD1BWP7T port map(CP => CTS_17, D => u0_u0_n_7, Q => u0_count_out(2));
  u0_u0_g227 : MAOI22D0BWP7T port map(A1 => u0_u0_n_5, A2 => u0_count_out(3), B1 => u0_u0_n_5, B2 => u0_count_out(3), ZN => u0_u0_n_8);
  u0_u0_g228 : NR2XD0BWP7T port map(A1 => u0_u0_n_6, A2 => CS, ZN => u0_u0_n_7);
  u0_u0_count_reg_1 : DFKCNQD1BWP7T port map(CN => u0_u0_n_0, CP => CTS_17, D => u0_u0_n_4, Q => u0_count_out(1));
  u0_u0_g230 : MAOI22D0BWP7T port map(A1 => u0_u0_n_3, A2 => u0_count_out(2), B1 => u0_u0_n_3, B2 => u0_count_out(2), ZN => u0_u0_n_6);
  u0_u0_g231 : IND2D1BWP7T port map(A1 => u0_u0_n_3, B1 => u0_count_out(2), ZN => u0_u0_n_5);
  u0_u0_count_reg_0 : DFKCNQD1BWP7T port map(CN => u0_u0_n_0, CP => CTS_17, D => u0_u0_n_2, Q => u0_count_out(0));
  u0_u0_g233 : MOAI22D0BWP7T port map(A1 => u0_u0_n_1, A2 => u0_count_out(1), B1 => u0_u0_n_1, B2 => u0_count_out(1), ZN => u0_u0_n_4);
  u0_u0_g234 : IND2D1BWP7T port map(A1 => u0_u0_n_1, B1 => u0_count_out(1), ZN => u0_u0_n_3);
  u0_u0_g235 : CKXOR2D1BWP7T port map(A1 => u0_count_en, A2 => u0_count_out(0), Z => u0_u0_n_2);
  u0_u0_g236 : ND2D1BWP7T port map(A1 => u0_count_en, A2 => u0_count_out(0), ZN => u0_u0_n_1);
  u0_u0_g237 : INVD1BWP7T port map(I => CS, ZN => u0_u0_n_0);

end routed;
