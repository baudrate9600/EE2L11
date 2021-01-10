
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of sqi is

  component CKBD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD2BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL02BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD1BWP7T
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

  component CKND3BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKBD4BWP7T
    port(I : in std_logic; Z : out std_logic);
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

  component IOA21D2BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D2BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component LHQD1BWP7T
    port(D, E : in std_logic; Q : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AO31D1BWP7T
    port(A1, A2, A3, B : in std_logic; Z : out std_logic);
  end component;

  component ND2D5BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component EDFCNQD1BWP7T
    port(CDN, CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component DFNCND1BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal FE_PHN44_u2_n_95, FE_PHN43_u2_n_95, FE_PHN42_u2_n_95, FE_PHN41_data_read_in_2, FE_PHN40_data_read_in_7 : std_logic;
  signal FE_PHN39_data_read_in_1, FE_PHN38_u2_n_95, FE_PHN37_data_read_in_4, FE_PHN36_data_read_in_2, FE_PHN35_data_read_in_7 : std_logic;
  signal FE_PHN34_data_read_in_6, FE_PHN33_data_read_in_0, FE_PHN32_data_read_in_1, FE_PHN31_data_read_in_3, FE_PHN30_data_read_in_5 : std_logic;
  signal FE_PHN29_u2_SHIFT_nLOAD, FE_PHN28_reset, FE_PHN27_count_out_3, FE_PHN26_u2_n_95, FE_PHN25_u2_n_41 : std_logic;
  signal FE_PHN24_count_out_3, FE_PHN23_u2_n_95, FE_PHN22_u2_state_0, FE_PHN21_count_out_3, FE_PHN20_u2_n_95 : std_logic;
  signal FE_PHN19_count_out_3, FE_PHN18_u2_n_95, FE_PHN17_u2_n_95, FE_PHN16_u2_n_95, FE_PHN15_u2_n_95 : std_logic;
  signal FE_PHN14_u2_n_95, FE_PHN13_u2_n_95, FE_PHN12_u2_n_95, FE_PHN11_u2_n_95, FE_PHN10_u2_n_95 : std_logic;
  signal FE_PHN9_u2_n_95, FE_OFN8_MOSI_0, FE_OFN7_data_out_1, FE_OFN6_data_out_2, FE_OFN5_data_out_3 : std_logic;
  signal FE_OFN4_data_out_6, FE_OFN3_data_out_0, FE_OFN2_data_out_5, FE_OFN1_data_out_7, FE_OFN0_data_out_4 : std_logic;
  signal CTS_18, CTS_17, CTS_16, CTS_2 : std_logic;
  signal data_read_in : std_logic_vector(7 downto 0);
  signal data_wire : std_logic_vector(7 downto 0);
  signal u2_new_state : std_logic_vector(3 downto 0);
  signal u2_state : std_logic_vector(3 downto 0);
  signal count_out : std_logic_vector(3 downto 0);
  signal UNCONNECTED, count_en, load_reg, n_0, n_1 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_7, n_8, n_9, n_10, shift_clk : std_logic;
  signal shift_reg, u0_n_0, u0_n_1, u0_n_2, u0_n_3 : std_logic;
  signal u0_n_4, u0_n_5, u0_n_6, u0_n_7, u0_n_8 : std_logic;
  signal u0_n_9, u0_n_10, u2_RW_LATCH, u2_SHIFT_nLOAD, u2_SINGLE_LATCH : std_logic;
  signal u2_n_0, u2_n_1, u2_n_3, u2_n_4, u2_n_5 : std_logic;
  signal u2_n_7, u2_n_8, u2_n_17, u2_n_18, u2_n_19 : std_logic;
  signal u2_n_20, u2_n_21, u2_n_23, u2_n_24, u2_n_25 : std_logic;
  signal u2_n_26, u2_n_27, u2_n_28, u2_n_29, u2_n_30 : std_logic;
  signal u2_n_31, u2_n_32, u2_n_33, u2_n_34, u2_n_35 : std_logic;
  signal u2_n_36, u2_n_37, u2_n_38, u2_n_39, u2_n_40 : std_logic;
  signal u2_n_41, u2_n_42, u2_n_43, u2_n_44, u2_n_45 : std_logic;
  signal u2_n_46, u2_n_47, u2_n_48, u2_n_49, u2_n_50 : std_logic;
  signal u2_n_51, u2_n_52, u2_n_53, u2_n_55, u2_n_56 : std_logic;
  signal u2_n_57, u2_n_58, u2_n_59, u2_n_60, u2_n_61 : std_logic;
  signal u2_n_62, u2_n_63, u2_n_64, u2_n_65, u2_n_66 : std_logic;
  signal u2_n_67, u2_n_68, u2_n_69, u2_n_70, u2_n_71 : std_logic;
  signal u2_n_72, u2_n_73, u2_n_74, u2_n_75, u2_n_76 : std_logic;
  signal u2_n_77, u2_n_78, u2_n_79, u2_n_80, u2_n_81 : std_logic;
  signal u2_n_82, u2_n_83, u2_n_84, u2_n_85, u2_n_86 : std_logic;
  signal u2_n_87, u2_n_89, u2_n_94, u2_n_95, u2_n_96 : std_logic;
  signal u2_n_97, u2_n_98, u2_n_150, u2_n_159, u2_n_164 : std_logic;
  signal u2_n_165 : std_logic;

begin

  FE_PHC44_u2_n_95 : CKBD1BWP7T port map(I => FE_PHN44_u2_n_95, Z => FE_PHN14_u2_n_95);
  FE_PHC43_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN43_u2_n_95, Z => FE_PHN42_u2_n_95);
  FE_PHC42_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN42_u2_n_95, Z => FE_PHN38_u2_n_95);
  FE_PHC41_data_read_in_2 : BUFFD2BWP7T port map(I => FE_PHN36_data_read_in_2, Z => FE_PHN41_data_read_in_2);
  FE_PHC40_data_read_in_7 : DEL01BWP7T port map(I => data_read_in(7), Z => FE_PHN40_data_read_in_7);
  FE_PHC39_data_read_in_1 : DEL01BWP7T port map(I => FE_PHN32_data_read_in_1, Z => FE_PHN39_data_read_in_1);
  FE_PHC38_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN38_u2_n_95, Z => FE_PHN23_u2_n_95);
  FE_PHC37_data_read_in_4 : DEL0BWP7T port map(I => data_read_in(4), Z => FE_PHN37_data_read_in_4);
  FE_PHC36_data_read_in_2 : DEL02BWP7T port map(I => data_read_in(2), Z => FE_PHN36_data_read_in_2);
  FE_PHC35_data_read_in_7 : DEL02BWP7T port map(I => FE_PHN35_data_read_in_7, Z => data_read_in(7));
  FE_PHC34_data_read_in_6 : DEL0BWP7T port map(I => data_read_in(6), Z => FE_PHN34_data_read_in_6);
  FE_PHC33_data_read_in_0 : DEL0BWP7T port map(I => FE_PHN33_data_read_in_0, Z => data_read_in(0));
  FE_PHC32_data_read_in_1 : DEL02BWP7T port map(I => data_read_in(1), Z => FE_PHN32_data_read_in_1);
  FE_PHC31_data_read_in_3 : DEL0BWP7T port map(I => data_read_in(3), Z => FE_PHN31_data_read_in_3);
  FE_PHC30_data_read_in_5 : DEL0BWP7T port map(I => FE_PHN30_data_read_in_5, Z => data_read_in(5));
  FE_PHC29_u2_SHIFT_nLOAD : DEL0BWP7T port map(I => u2_SHIFT_nLOAD, Z => FE_PHN29_u2_SHIFT_nLOAD);
  FE_PHC28_reset : BUFFD1BWP7T port map(I => reset, Z => FE_PHN28_reset);
  FE_PHC27_count_out_3 : CKBD0BWP7T port map(I => FE_PHN19_count_out_3, Z => FE_PHN27_count_out_3);
  FE_PHC26_u2_n_95 : DEL01BWP7T port map(I => u2_n_95, Z => FE_PHN26_u2_n_95);
  FE_PHC25_u2_n_41 : CKBD0BWP7T port map(I => u2_n_41, Z => FE_PHN25_u2_n_41);
  FE_PHC24_count_out_3 : CKBD0BWP7T port map(I => FE_PHN27_count_out_3, Z => FE_PHN24_count_out_3);
  FE_PHC23_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN20_u2_n_95, Z => FE_PHN43_u2_n_95);
  FE_PHC22_u2_state_0 : CKBD0BWP7T port map(I => u2_state(0), Z => FE_PHN22_u2_state_0);
  FE_PHC21_count_out_3 : CKBD0BWP7T port map(I => FE_PHN24_count_out_3, Z => FE_PHN21_count_out_3);
  FE_PHC20_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN18_u2_n_95, Z => FE_PHN20_u2_n_95);
  FE_PHC19_count_out_3 : DEL0BWP7T port map(I => count_out(3), Z => FE_PHN19_count_out_3);
  FE_PHC18_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN17_u2_n_95, Z => FE_PHN18_u2_n_95);
  FE_PHC17_u2_n_95 : CKBD0BWP7T port map(I => FE_PHN16_u2_n_95, Z => FE_PHN17_u2_n_95);
  FE_PHC16_u2_n_95 : DEL0BWP7T port map(I => FE_PHN15_u2_n_95, Z => FE_PHN16_u2_n_95);
  FE_PHC15_u2_n_95 : DEL3BWP7T port map(I => FE_PHN13_u2_n_95, Z => FE_PHN15_u2_n_95);
  FE_PHC14_u2_n_95 : DEL4BWP7T port map(I => FE_PHN9_u2_n_95, Z => FE_PHN44_u2_n_95);
  FE_PHC13_u2_n_95 : DEL4BWP7T port map(I => FE_PHN14_u2_n_95, Z => FE_PHN13_u2_n_95);
  FE_PHC12_u2_n_95 : DEL4BWP7T port map(I => FE_PHN23_u2_n_95, Z => FE_PHN12_u2_n_95);
  FE_PHC11_u2_n_95 : DEL4BWP7T port map(I => FE_PHN12_u2_n_95, Z => FE_PHN11_u2_n_95);
  FE_PHC10_u2_n_95 : DEL4BWP7T port map(I => FE_PHN11_u2_n_95, Z => FE_PHN10_u2_n_95);
  FE_PHC9_u2_n_95 : DEL4BWP7T port map(I => FE_PHN26_u2_n_95, Z => FE_PHN9_u2_n_95);
  FE_OFC8_MOSI_0 : BUFFD5BWP7T port map(I => FE_OFN8_MOSI_0, Z => MOSI(0));
  FE_OFC7_data_out_1 : BUFFD5BWP7T port map(I => FE_OFN7_data_out_1, Z => data_out(1));
  FE_OFC6_data_out_2 : BUFFD5BWP7T port map(I => FE_OFN6_data_out_2, Z => data_out(2));
  FE_OFC5_data_out_3 : BUFFD5BWP7T port map(I => FE_OFN5_data_out_3, Z => data_out(3));
  FE_OFC4_data_out_6 : BUFFD5BWP7T port map(I => FE_OFN4_data_out_6, Z => data_out(6));
  FE_OFC3_data_out_0 : BUFFD5BWP7T port map(I => FE_OFN3_data_out_0, Z => data_out(0));
  FE_OFC2_data_out_5 : BUFFD5BWP7T port map(I => FE_OFN2_data_out_5, Z => data_out(5));
  FE_OFC1_data_out_7 : BUFFD5BWP7T port map(I => FE_OFN1_data_out_7, Z => data_out(7));
  FE_OFC0_data_out_4 : BUFFD5BWP7T port map(I => FE_OFN0_data_out_4, Z => data_out(4));
  CTS_ccl_a_BUF_clk_G0_L2_2 : CKBD2BWP7T port map(I => CTS_18, Z => CTS_17);
  CTS_ccl_a_BUF_clk_G0_L4_1 : CKBD12BWP7T port map(I => CTS_2, Z => SCK);
  CTS_cex_INV_clk_G0_L2_1 : CKND3BWP7T port map(I => CTS_18, ZN => CTS_16);
  CTS_ccl_a_BUF_clk_G0_L1_1 : CKBD4BWP7T port map(I => clk, Z => CTS_18);
  u1_reg_reg_0 : DFQD1BWP7T port map(CP => shift_clk, D => n_7, Q => FE_PHN33_data_read_in_0);
  u1_reg_reg_6 : DFQD1BWP7T port map(CP => shift_clk, D => n_9, Q => data_read_in(6));
  u1_reg_reg_5 : DFQD1BWP7T port map(CP => shift_clk, D => n_3, Q => FE_PHN30_data_read_in_5);
  u1_reg_reg_1 : DFQD1BWP7T port map(CP => shift_clk, D => n_8, Q => data_read_in(1));
  u1_reg_reg_2 : DFQD1BWP7T port map(CP => shift_clk, D => n_4, Q => data_read_in(2));
  u1_reg_reg_4 : DFQD1BWP7T port map(CP => shift_clk, D => n_6, Q => data_read_in(4));
  u1_reg_reg_7 : DFQD1BWP7T port map(CP => shift_clk, D => n_10, Q => FE_PHN35_data_read_in_7);
  u1_reg_reg_3 : DFQD1BWP7T port map(CP => shift_clk, D => n_5, Q => data_read_in(3));
  g509 : AO222D0BWP7T port map(A1 => n_2, A2 => MISO(3), B1 => n_1, B2 => data_read_in(7), C1 => data_wire(7), C2 => n_0, Z => n_10);
  g510 : AO222D0BWP7T port map(A1 => n_2, A2 => data_read_in(7), B1 => n_1, B2 => FE_PHN34_data_read_in_6, C1 => n_0, C2 => data_wire(3), Z => n_9);
  g511 : AO222D0BWP7T port map(A1 => n_2, A2 => MISO(0), B1 => n_1, B2 => FE_PHN32_data_read_in_1, C1 => data_wire(4), C2 => n_0, Z => n_8);
  g512 : AO222D0BWP7T port map(A1 => n_2, A2 => FE_PHN32_data_read_in_1, B1 => n_1, B2 => data_read_in(0), C1 => data_wire(0), C2 => n_0, Z => n_7);
  g513 : AO222D0BWP7T port map(A1 => n_2, A2 => data_read_in(5), B1 => n_1, B2 => FE_PHN37_data_read_in_4, C1 => data_wire(2), C2 => n_0, Z => n_6);
  g514 : AO222D0BWP7T port map(A1 => n_2, A2 => MISO(1), B1 => n_1, B2 => FE_PHN31_data_read_in_3, C1 => data_wire(5), C2 => n_0, Z => n_5);
  g515 : AO222D0BWP7T port map(A1 => n_2, A2 => FE_PHN31_data_read_in_3, B1 => n_1, B2 => FE_PHN36_data_read_in_2, C1 => data_wire(1), C2 => n_0, Z => n_4);
  g516 : AO222D0BWP7T port map(A1 => n_2, A2 => MISO(2), B1 => n_1, B2 => data_read_in(5), C1 => data_wire(6), C2 => n_0, Z => n_3);
  g517 : INR3D0BWP7T port map(A1 => shift_reg, B1 => FE_PHN28_reset, B2 => load_reg, ZN => n_2);
  g518 : NR3D0BWP7T port map(A1 => load_reg, A2 => shift_reg, A3 => FE_PHN28_reset, ZN => n_1);
  g519 : INR2D1BWP7T port map(A1 => load_reg, B1 => FE_PHN28_reset, ZN => n_0);
  u2_g1800 : CKAN2D0BWP7T port map(A1 => CTS_16, A2 => u2_n_87, Z => CTS_2);
  u2_g1801 : IOA21D2BWP7T port map(A1 => CTS_18, A2 => FE_PHN10_u2_n_95, B => u2_n_86, ZN => shift_clk);
  u2_g1802 : INR2D0BWP7T port map(A1 => u2_n_94, B1 => FE_PHN28_reset, ZN => u2_n_87);
  u2_g1803 : IND2D2BWP7T port map(A1 => FE_PHN26_u2_n_95, B1 => CTS_16, ZN => u2_n_86);
  u2_RW_LATCH_reg : LNQD1BWP7T port map(D => RW, EN => count_en, Q => u2_RW_LATCH);
  u2_SINGLE_LATCH_reg : LNQD1BWP7T port map(D => single, EN => count_en, Q => u2_SINGLE_LATCH);
  u2_new_state_reg_0 : LHQD1BWP7T port map(D => u2_n_84, E => u2_n_85, Q => u2_new_state(0));
  u2_new_state_reg_1 : LHQD1BWP7T port map(D => u2_n_83, E => u2_n_85, Q => u2_new_state(1));
  u2_new_state_reg_2 : LHQD1BWP7T port map(D => u2_n_81, E => u2_n_85, Q => u2_new_state(2));
  u2_new_state_reg_3 : LHQD1BWP7T port map(D => u2_n_80, E => u2_n_85, Q => u2_new_state(3));
  u2_g4517 : AO222D0BWP7T port map(A1 => u2_n_28, A2 => u2_n_35, B1 => u2_n_82, B2 => FE_PHN22_u2_state_0, C1 => u2_n_49, C2 => u2_state(3), Z => u2_n_84);
  u2_g4518 : OAI21D0BWP7T port map(A1 => u2_n_69, A2 => u2_n_98, B => u2_n_18, ZN => u2_n_83);
  u2_g4520 : OAI211D0BWP7T port map(A1 => u2_n_79, A2 => u2_n_21, B => u2_n_68, C => u2_n_74, ZN => u2_n_82);
  u2_g4522 : OAI211D0BWP7T port map(A1 => u2_n_78, A2 => u2_n_24, B => u2_n_66, C => u2_n_47, ZN => u2_n_81);
  u2_g4524 : AN2D1BWP7T port map(A1 => u2_n_96, A2 => u2_n_78, Z => u2_n_80);
  u2_g4526 : AOI22D0BWP7T port map(A1 => u2_state(2), A2 => u2_n_77, B1 => u2_n_53, B2 => u2_n_24, ZN => u2_n_79);
  u2_g4527 : NR2D0BWP7T port map(A1 => u2_n_23, A2 => u2_n_77, ZN => u2_n_78);
  u2_g4528 : ND4D0BWP7T port map(A1 => count_out(1), A2 => count_out(0), A3 => count_out(3), A4 => u2_n_72, ZN => u2_n_77);
  u2_g4529 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(11), B1 => u2_n_71, B2 => address(3), C1 => u2_n_70, C2 => data_in(3), Z => data_wire(7));
  u2_g4530 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(10), B1 => u2_n_71, B2 => address(2), C1 => u2_n_70, C2 => data_in(2), Z => data_wire(6));
  u2_g4531 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(14), B1 => u2_n_71, B2 => address(6), C1 => u2_n_70, C2 => data_in(6), Z => data_wire(2));
  u2_g4532 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(13), B1 => u2_n_71, B2 => address(5), C1 => u2_n_70, C2 => data_in(5), Z => data_wire(1));
  u2_g4533 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(12), B1 => u2_n_71, B2 => address(4), C1 => u2_n_70, C2 => data_in(4), Z => data_wire(0));
  u2_g4534 : OR2D1BWP7T port map(A1 => u2_n_76, A2 => u2_n_17, Z => FE_OFN8_MOSI_0);
  u2_g4535 : NR2XD0BWP7T port map(A1 => u2_n_73, A2 => u2_n_41, ZN => u2_n_76);
  u2_g4536 : OAI31D0BWP7T port map(A1 => u2_n_65, A2 => count_out(0), A3 => u2_n_42, B => u2_n_27, ZN => u2_n_75);
  u2_g4537 : OAI21D0BWP7T port map(A1 => u2_n_67, A2 => u2_n_45, B => u2_n_52, ZN => data_wire(5));
  u2_g4538 : AO222D0BWP7T port map(A1 => u2_n_58, A2 => address(8), B1 => u2_n_59, B2 => u2_n_34, C1 => done, C2 => RW, Z => data_wire(4));
  u2_g4539 : NR3D0BWP7T port map(A1 => u2_n_57, A2 => u2_n_45, A3 => u2_n_23, ZN => data_wire(3));
  u2_g4540 : OAI21D0BWP7T port map(A1 => u2_n_55, A2 => u2_RW_LATCH, B => u2_n_27, ZN => u2_n_74);
  u2_g4541 : AOI22D0BWP7T port map(A1 => u2_n_61, A2 => u2_n_31, B1 => u2_n_56, B2 => u2_n_29, ZN => u2_n_73);
  u2_g4542 : MAOI22D0BWP7T port map(A1 => count_out(2), A2 => u2_SINGLE_LATCH, B1 => count_out(2), B2 => u2_SINGLE_LATCH, ZN => u2_n_72);
  u2_g4543 : CKAN2D8BWP7T port map(A1 => u2_n_60, A2 => FE_PHN36_data_read_in_2, Z => MOSI(1));
  u2_g4545 : AOI21D0BWP7T port map(A1 => u2_n_50, A2 => u2_state(1), B => u2_n_29, ZN => u2_n_69);
  u2_g4546 : CKAN2D8BWP7T port map(A1 => u2_n_60, A2 => FE_PHN37_data_read_in_4, Z => MOSI(2));
  u2_g4547 : INR2D1BWP7T port map(A1 => u2_n_59, B1 => count_out(1), ZN => u2_n_71);
  u2_g4548 : AN2D1BWP7T port map(A1 => u2_n_59, A2 => count_out(1), Z => u2_n_70);
  u2_g4549 : AOI222D0BWP7T port map(A1 => u2_n_46, A2 => address(9), B1 => u2_n_38, B2 => address(1), C1 => u2_n_43, C2 => data_in(1), ZN => u2_n_67);
  u2_g4550 : AO31D1BWP7T port map(A1 => u2_n_40, A2 => u2_SHIFT_nLOAD, A3 => u2_state(2), B => u2_n_51, Z => shift_reg);
  u2_g4551 : ND2D5BWP7T port map(A1 => u2_n_62, A2 => u2_n_95, ZN => high_z);
  u2_g4552 : ND2D5BWP7T port map(A1 => u2_n_64, A2 => u2_n_30, ZN => MOSI(3));
  u2_g4553 : IND3D0BWP7T port map(A1 => u2_n_53, B1 => FE_PHN22_u2_state_0, B2 => u2_n_29, ZN => u2_n_66);
  u2_g4554 : ND2D5BWP7T port map(A1 => u2_n_63, A2 => u2_n_52, ZN => new_data);
  u2_g4555 : AOI21D0BWP7T port map(A1 => u2_n_165, A2 => u2_n_31, B => u2_state(3), ZN => u2_n_68);
  u2_g4556 : CKND1BWP7T port map(I => u2_RW_LATCH, ZN => u2_n_65);
  u2_g4557 : OAI21D0BWP7T port map(A1 => u2_n_49, A2 => u2_n_36, B => FE_PHN34_data_read_in_6, ZN => u2_n_64);
  u2_g4558 : IND2D1BWP7T port map(A1 => u2_n_37, B1 => u2_n_51, ZN => u2_n_63);
  u2_g4559 : OR2D1BWP7T port map(A1 => u2_n_97, A2 => FE_PHN28_reset, Z => u2_n_62);
  u2_g4560 : ND2D1BWP7T port map(A1 => u2_n_53, A2 => u2_n_55, ZN => u2_n_61);
  u2_g4561 : ND2D1BWP7T port map(A1 => u2_n_51, A2 => FE_PHN21_count_out_3, ZN => u2_n_95);
  u2_g4565 : AOI22D0BWP7T port map(A1 => u2_n_38, A2 => address(7), B1 => u2_n_43, B2 => data_in(7), ZN => u2_n_57);
  u2_g4567 : AO21D0BWP7T port map(A1 => u2_n_38, A2 => u2_n_25, B => u2_n_46, Z => u2_n_56);
  u2_g4568 : OAI21D0BWP7T port map(A1 => u2_n_45, A2 => u2_SHIFT_nLOAD, B => u2_n_52, ZN => load_reg);
  u2_g4569 : OAI222D0BWP7T port map(A1 => u2_n_47, A2 => u2_n_23, B1 => u2_n_24, B2 => u2_state(0), C1 => u2_n_21, C2 => u2_n_20, ZN => u2_n_60);
  u2_g4570 : NR3D0BWP7T port map(A1 => u2_n_41, A2 => u2_n_32, A3 => u2_n_89, ZN => u2_n_59);
  u2_g4571 : AN3D1BWP7T port map(A1 => u2_n_40, A2 => u2_n_46, A3 => u2_n_27, Z => u2_n_58);
  u2_g4573 : INVD1BWP7T port map(I => done, ZN => u2_n_52);
  u2_g4575 : ND2D1BWP7T port map(A1 => u2_n_39, A2 => count_out(0), ZN => u2_n_55);
  u2_g4577 : ND2D1BWP7T port map(A1 => u2_n_43, A2 => count_out(0), ZN => u2_n_53);
  u2_g4578 : CKAN2D8BWP7T port map(A1 => u2_n_44, A2 => u2_n_23, Z => done);
  u2_g4579 : ND2D0BWP7T port map(A1 => u2_n_39, A2 => u2_n_25, ZN => u2_n_50);
  u2_g4580 : ND2D5BWP7T port map(A1 => u2_n_94, A2 => u2_n_0, ZN => CS);
  u2_g4582 : INR2D1BWP7T port map(A1 => u2_n_96, B1 => FE_PHN25_u2_n_41, ZN => u2_n_51);
  u2_g4583 : NR2XD0BWP7T port map(A1 => u2_n_150, A2 => reset, ZN => count_en);
  u2_g4584 : ND2D0BWP7T port map(A1 => u2_n_48, A2 => u2_state(3), ZN => u2_n_85);
  u2_g4586 : INVD1BWP7T port map(I => u2_n_45, ZN => u2_n_44);
  u2_g4587 : INVD0BWP7T port map(I => u2_n_43, ZN => u2_n_42);
  u2_g4588 : INVD0BWP7T port map(I => u2_n_41, ZN => u2_n_40);
  u2_g4589 : NR2D0BWP7T port map(A1 => u2_n_31, A2 => FE_PHN22_u2_state_0, ZN => u2_n_49);
  u2_g4590 : ND2D1BWP7T port map(A1 => u2_n_31, A2 => u2_n_23, ZN => u2_n_48);
  u2_g4591 : NR2D1BWP7T port map(A1 => u2_n_27, A2 => u2_state(3), ZN => u2_n_47);
  u2_g4592 : IND2D1BWP7T port map(A1 => u2_n_96, B1 => u2_n_28, ZN => u2_n_94);
  u2_g4593 : NR2D1BWP7T port map(A1 => u2_n_159, A2 => count_out(3), ZN => u2_n_46);
  u2_g4594 : ND2D1BWP7T port map(A1 => u2_n_27, A2 => u2_n_33, ZN => u2_n_45);
  u2_g4595 : NR2D1BWP7T port map(A1 => u2_n_32, A2 => u2_n_19, ZN => u2_n_43);
  u2_g4596 : ND2D1BWP7T port map(A1 => u2_n_33, A2 => FE_PHN22_u2_state_0, ZN => u2_n_41);
  u2_g4597 : AOI21D0BWP7T port map(A1 => u2_n_20, A2 => u2_state(1), B => u2_n_23, ZN => u2_n_36);
  u2_g4598 : IOA21D0BWP7T port map(A1 => u2_n_21, A2 => en, B => u2_state(2), ZN => u2_n_35);
  u2_g4600 : AO22D0BWP7T port map(A1 => u2_n_19, A2 => address(0), B1 => data_in(0), B2 => count_out(1), Z => u2_n_34);
  u2_g4601 : NR2XD0BWP7T port map(A1 => u2_n_98, A2 => u2_n_89, ZN => u2_n_150);
  u2_g4602 : NR3D0BWP7T port map(A1 => u2_n_26, A2 => count_out(1), A3 => count_out(2), ZN => u2_n_39);
  u2_g4603 : NR2D0BWP7T port map(A1 => u2_n_32, A2 => count_out(1), ZN => u2_n_38);
  u2_g4604 : ND3D0BWP7T port map(A1 => count_out(0), A2 => count_out(3), A3 => count_out(2), ZN => u2_n_37);
  u2_g4605 : ND2D1BWP7T port map(A1 => u2_n_24, A2 => u2_n_20, ZN => u2_n_30);
  u2_g4606 : NR2XD0BWP7T port map(A1 => u2_state(3), A2 => FE_PHN28_reset, ZN => u2_n_33);
  u2_g4607 : ND2D1BWP7T port map(A1 => u2_n_26, A2 => count_out(2), ZN => u2_n_32);
  u2_g4608 : NR2XD0BWP7T port map(A1 => u2_state(2), A2 => u2_state(1), ZN => u2_n_31);
  u2_g4609 : INVD0BWP7T port map(I => u2_n_98, ZN => u2_n_28);
  u2_g4610 : INVD0BWP7T port map(I => u2_n_27, ZN => u2_n_89);
  u2_g4611 : IND2D1BWP7T port map(A1 => count_out(2), B1 => count_out(1), ZN => u2_n_159);
  u2_g4612 : NR2XD0BWP7T port map(A1 => u2_n_21, A2 => u2_n_24, ZN => u2_n_96);
  u2_g4613 : NR2D1BWP7T port map(A1 => u2_state(2), A2 => u2_n_21, ZN => u2_n_29);
  u2_g4614 : ND2D1BWP7T port map(A1 => u2_n_23, A2 => u2_n_20, ZN => u2_n_98);
  u2_g4615 : NR2XD0BWP7T port map(A1 => u2_n_24, A2 => u2_state(1), ZN => u2_n_27);
  u2_g4617 : INVD1BWP7T port map(I => count_out(3), ZN => u2_n_26);
  u2_g4618 : CKND1BWP7T port map(I => count_out(0), ZN => u2_n_25);
  u2_g4621 : INVD1BWP7T port map(I => FE_PHN28_reset, ZN => u2_n_0);
  u2_g4624 : INVD1BWP7T port map(I => count_out(1), ZN => u2_n_19);
  u2_g2 : IND4D0BWP7T port map(A1 => u2_n_79, B1 => u2_n_68, B2 => FE_PHN22_u2_state_0, B3 => u2_n_75, ZN => u2_n_18);
  u2_g4625 : CKAN2D1BWP7T port map(A1 => data_read_in(0), A2 => u2_n_60, Z => u2_n_17);
  u2_g4626 : IND2D1BWP7T port map(A1 => u2_n_48, B1 => u2_state(3), ZN => u2_n_97);
  u2_data_read_reg_4 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => data_read_in(0), E => u2_n_8, Q => FE_OFN0_data_out_4);
  u2_data_read_reg_3 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN40_data_read_in_7, E => u2_n_8, Q => FE_OFN5_data_out_3);
  u2_data_read_reg_0 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN39_data_read_in_1, E => u2_n_8, Q => FE_OFN3_data_out_0);
  u2_data_read_reg_5 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN41_data_read_in_2, E => u2_n_8, Q => FE_OFN2_data_out_5);
  u2_data_read_reg_1 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN31_data_read_in_3, E => u2_n_8, Q => FE_OFN7_data_out_1);
  u2_data_read_reg_7 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN34_data_read_in_6, E => u2_n_8, Q => FE_OFN1_data_out_7);
  u2_data_read_reg_6 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => FE_PHN37_data_read_in_4, E => u2_n_8, Q => FE_OFN4_data_out_6);
  u2_data_read_reg_2 : EDFCNQD1BWP7T port map(CDN => u2_n_0, CP => CTS_17, D => data_read_in(5), E => u2_n_8, Q => FE_OFN6_data_out_2);
  u2_g1906 : IOA21D1BWP7T port map(A1 => u2_n_164, A2 => u2_n_96, B => u2_n_97, ZN => u2_n_8);
  u2_SHIFT_nLOAD_reg : DFNCND1BWP7T port map(CDN => u2_n_0, CPN => CTS_17, D => u2_n_7, Q => u2_SHIFT_nLOAD, QN => UNCONNECTED);
  u2_g1908 : INR2D1BWP7T port map(A1 => u2_n_5, B1 => FE_PHN29_u2_SHIFT_nLOAD, ZN => u2_n_7);
  u2_g1910 : OAI22D0BWP7T port map(A1 => u2_n_89, A2 => u2_n_3, B1 => u2_n_1, B2 => u2_n_98, ZN => u2_n_5);
  u2_g1914 : IND3D1BWP7T port map(A1 => u2_n_159, B1 => count_out(3), B2 => count_out(0), ZN => u2_n_4);
  u2_g1916 : IND2D1BWP7T port map(A1 => u2_state(3), B1 => FE_PHN22_u2_state_0, ZN => u2_n_3);
  u2_g1918 : INVD1BWP7T port map(I => u2_n_96, ZN => u2_n_1);
  u2_g4631 : AOI21D0BWP7T port map(A1 => u2_n_37, A2 => u2_n_4, B => u2_n_3, ZN => u2_n_164);
  u2_state_reg_2 : DFKCND1BWP7T port map(CN => u2_new_state(2), CP => CTS_17, D => u2_n_0, Q => u2_state(2), QN => u2_n_24);
  u2_state_reg_0 : DFKCND1BWP7T port map(CN => u2_new_state(0), CP => CTS_17, D => u2_n_0, Q => u2_state(0), QN => u2_n_23);
  u2_state_reg_1 : DFKCND1BWP7T port map(CN => u2_new_state(1), CP => CTS_17, D => u2_n_0, Q => u2_state(1), QN => u2_n_21);
  u2_state_reg_3 : DFKCND1BWP7T port map(CN => u2_new_state(3), CP => CTS_17, D => u2_n_0, Q => u2_state(3), QN => u2_n_20);
  u2_g4640 : OR2D1BWP7T port map(A1 => u2_n_37, A2 => u2_n_19, Z => u2_n_165);
  u0_count_reg_3 : DFQD1BWP7T port map(CP => CTS_17, D => u0_n_10, Q => count_out(3));
  u0_g225 : NR2XD0BWP7T port map(A1 => u0_n_9, A2 => CS, ZN => u0_n_10);
  u0_count_reg_2 : DFQD1BWP7T port map(CP => CTS_17, D => u0_n_8, Q => count_out(2));
  u0_g227 : MAOI22D0BWP7T port map(A1 => u0_n_5, A2 => count_out(3), B1 => u0_n_5, B2 => count_out(3), ZN => u0_n_9);
  u0_g228 : NR2XD0BWP7T port map(A1 => u0_n_7, A2 => CS, ZN => u0_n_8);
  u0_count_reg_1 : DFQD1BWP7T port map(CP => CTS_17, D => u0_n_6, Q => count_out(1));
  u0_g230 : MAOI22D0BWP7T port map(A1 => u0_n_3, A2 => count_out(2), B1 => u0_n_3, B2 => count_out(2), ZN => u0_n_7);
  u0_g231 : NR2XD0BWP7T port map(A1 => u0_n_4, A2 => CS, ZN => u0_n_6);
  u0_g232 : IND2D1BWP7T port map(A1 => u0_n_3, B1 => count_out(2), ZN => u0_n_5);
  u0_count_reg_0 : DFQD1BWP7T port map(CP => CTS_17, D => u0_n_2, Q => count_out(0));
  u0_g234 : MAOI22D0BWP7T port map(A1 => u0_n_0, A2 => count_out(1), B1 => u0_n_0, B2 => count_out(1), ZN => u0_n_4);
  u0_g235 : IND2D1BWP7T port map(A1 => u0_n_0, B1 => count_out(1), ZN => u0_n_3);
  u0_g236 : NR2XD0BWP7T port map(A1 => u0_n_1, A2 => CS, ZN => u0_n_2);
  u0_g237 : XNR2D1BWP7T port map(A1 => count_en, A2 => count_out(0), ZN => u0_n_1);
  u0_g238 : ND2D1BWP7T port map(A1 => count_en, A2 => count_out(0), ZN => u0_n_0);

end routed;
