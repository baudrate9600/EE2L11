
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of sqi_controller is

  component BUFFD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD2BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD6BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD2BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD10BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD5BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKBD12BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKND0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D5BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
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

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component DFNCND1BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
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

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal FE_PHN47_count_in_3, FE_PHN46_state_1, FE_PHN45_n_93, FE_PHN44_shift_reset, FE_PHN43_count_in_3 : std_logic;
  signal FE_PHN42_state_1, FE_PHN41_n_91, FE_PHN40_state_0, FE_PHN39_count_in_3, FE_PHN38_state_1 : std_logic;
  signal FE_PHN37_n_91, FE_PHN36_count_in_3, FE_PHN35_state_1, FE_PHN34_state_0, FE_PHN33_n_91 : std_logic;
  signal FE_PHN32_state_2, FE_PHN31_state_1, FE_PHN30_state_0, FE_PHN29_count_in_3, FE_PHN28_n_91 : std_logic;
  signal FE_PHN27_n_91, FE_PHN26_n_91, FE_PHN25_n_91, FE_PHN24_n_91, FE_PHN23_n_91 : std_logic;
  signal FE_PHN22_n_91, FE_PHN21_n_91, FE_PHN20_n_91, FE_OFN19_reg_load, FE_OFN18_new_data : std_logic;
  signal FE_OFN17_data_out_5, FE_OFN16_count_reset, FE_OFN15_count_en, FE_OFN14_data_read_5, FE_OFN13_data_read_7 : std_logic;
  signal FE_OFN12_data_read_4, FE_OFN11_data_read_1, FE_OFN10_data_read_3, FE_OFN9_data_read_2, FE_OFN8_data_read_0 : std_logic;
  signal FE_OFN7_data_read_6, FE_RN_2, FE_OFN2_count_load, FE_OFN1_count_load, CTS_19 : std_logic;
  signal CTS_18, CTS_17, CTS_5, CTS_4 : std_logic;
  signal state : std_logic_vector(2 downto 0);
  signal RW_LATCH, SHIFT_nLOAD, SINGLE_LATCH, n_0, n_1 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_8, n_9, n_10, n_11, n_12 : std_logic;
  signal n_13, n_14, n_15, n_16, n_17 : std_logic;
  signal n_18, n_19, n_20, n_21, n_22 : std_logic;
  signal n_31, n_33, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_43, n_44, n_45, n_46 : std_logic;
  signal n_47, n_48, n_49, n_50, n_51 : std_logic;
  signal n_52, n_53, n_54, n_55, n_56 : std_logic;
  signal n_57, n_58, n_59, n_60, n_61 : std_logic;
  signal n_62, n_63, n_64, n_65, n_66 : std_logic;
  signal n_67, n_68, n_69, n_70, n_71 : std_logic;
  signal n_72, n_73, n_74, n_75, n_76 : std_logic;
  signal n_77, n_78, n_79, n_80, n_81 : std_logic;
  signal n_82, n_85, n_88, n_91, n_92 : std_logic;
  signal n_93, n_94, n_149, n_152, n_162 : std_logic;
  signal n_619_BAR, n_1298_BAR : std_logic;

begin

  cs <= count_reset;
  count_out(3) <= FE_RN_2;
  FE_PHC47_count_in_3 : BUFFD1BWP7T port map(I => count_in(3), Z => FE_PHN47_count_in_3);
  FE_PHC46_state_1 : CKBD1BWP7T port map(I => FE_PHN31_state_1, Z => FE_PHN46_state_1);
  FE_PHC45_n_93 : BUFFD2BWP7T port map(I => FE_PHN45_n_93, Z => n_93);
  FE_PHC44_shift_reset : CKBD6BWP7T port map(I => shift_reset, Z => FE_PHN44_shift_reset);
  FE_PHC43_count_in_3 : CKBD2BWP7T port map(I => FE_PHN47_count_in_3, Z => FE_PHN43_count_in_3);
  FE_PHC42_state_1 : CKBD0BWP7T port map(I => FE_PHN46_state_1, Z => FE_PHN42_state_1);
  FE_PHC41_n_91 : DEL01BWP7T port map(I => n_91, Z => FE_PHN41_n_91);
  FE_PHC40_state_0 : CKBD0BWP7T port map(I => FE_PHN30_state_0, Z => FE_PHN40_state_0);
  FE_PHC39_count_in_3 : CKBD0BWP7T port map(I => FE_PHN36_count_in_3, Z => FE_PHN39_count_in_3);
  FE_PHC38_state_1 : CKBD0BWP7T port map(I => FE_PHN42_state_1, Z => FE_PHN38_state_1);
  FE_PHC37_n_91 : CKBD0BWP7T port map(I => FE_PHN23_n_91, Z => FE_PHN37_n_91);
  FE_PHC36_count_in_3 : CKBD0BWP7T port map(I => FE_PHN29_count_in_3, Z => FE_PHN36_count_in_3);
  FE_PHC35_state_1 : CKBD0BWP7T port map(I => FE_PHN38_state_1, Z => FE_PHN35_state_1);
  FE_PHC34_state_0 : DEL0BWP7T port map(I => FE_PHN40_state_0, Z => FE_PHN34_state_0);
  FE_PHC33_n_91 : CKBD0BWP7T port map(I => FE_PHN37_n_91, Z => FE_PHN33_n_91);
  FE_PHC32_state_2 : DEL0BWP7T port map(I => state(2), Z => FE_PHN32_state_2);
  FE_PHC31_state_1 : DEL0BWP7T port map(I => state(1), Z => FE_PHN31_state_1);
  FE_PHC30_state_0 : DEL0BWP7T port map(I => state(0), Z => FE_PHN30_state_0);
  FE_PHC29_count_in_3 : DEL1BWP7T port map(I => FE_PHN43_count_in_3, Z => FE_PHN29_count_in_3);
  FE_PHC28_n_91 : DEL0BWP7T port map(I => FE_PHN27_n_91, Z => FE_PHN28_n_91);
  FE_PHC27_n_91 : DEL1BWP7T port map(I => FE_PHN26_n_91, Z => FE_PHN27_n_91);
  FE_PHC26_n_91 : DEL4BWP7T port map(I => FE_PHN25_n_91, Z => FE_PHN26_n_91);
  FE_PHC25_n_91 : DEL4BWP7T port map(I => FE_PHN24_n_91, Z => FE_PHN25_n_91);
  FE_PHC24_n_91 : DEL4BWP7T port map(I => FE_PHN41_n_91, Z => FE_PHN24_n_91);
  FE_PHC23_n_91 : DEL0BWP7T port map(I => FE_PHN20_n_91, Z => FE_PHN23_n_91);
  FE_PHC22_n_91 : DEL4BWP7T port map(I => FE_PHN33_n_91, Z => FE_PHN22_n_91);
  FE_PHC21_n_91 : DEL4BWP7T port map(I => FE_PHN22_n_91, Z => FE_PHN21_n_91);
  FE_PHC20_n_91 : DEL4BWP7T port map(I => FE_PHN21_n_91, Z => n_91);
  FE_OFC19_reg_load : BUFFD5BWP7T port map(I => FE_OFN19_reg_load, Z => reg_load);
  FE_OFC18_new_data : BUFFD5BWP7T port map(I => FE_OFN18_new_data, Z => new_data);
  FE_OFC17_data_out_5 : BUFFD5BWP7T port map(I => FE_OFN17_data_out_5, Z => data_out(5));
  FE_OFC16_count_reset : BUFFD10BWP7T port map(I => FE_OFN16_count_reset, Z => count_reset);
  FE_OFC15_count_en : BUFFD5BWP7T port map(I => FE_OFN15_count_en, Z => count_en);
  FE_OFC14_data_read_5 : BUFFD5BWP7T port map(I => FE_OFN14_data_read_5, Z => data_read(5));
  FE_OFC13_data_read_7 : BUFFD5BWP7T port map(I => FE_OFN13_data_read_7, Z => data_read(7));
  FE_OFC12_data_read_4 : BUFFD5BWP7T port map(I => FE_OFN12_data_read_4, Z => data_read(4));
  FE_OFC11_data_read_1 : BUFFD5BWP7T port map(I => FE_OFN11_data_read_1, Z => data_read(1));
  FE_OFC10_data_read_3 : BUFFD5BWP7T port map(I => FE_OFN10_data_read_3, Z => data_read(3));
  FE_OFC9_data_read_2 : BUFFD5BWP7T port map(I => FE_OFN9_data_read_2, Z => data_read(2));
  FE_OFC8_data_read_0 : BUFFD5BWP7T port map(I => FE_OFN8_data_read_0, Z => data_read(0));
  FE_OFC7_data_read_6 : BUFFD5BWP7T port map(I => FE_OFN7_data_read_6, Z => data_read(6));
  FE_OFC6_count_load : BUFFD5BWP7T port map(I => count_out(1), Z => count_out(0));
  FE_OFC5_count_load : BUFFD5BWP7T port map(I => count_out(2), Z => count_out(1));
  FE_OFC4_count_load : BUFFD5BWP7T port map(I => FE_RN_2, Z => count_out(2));
  FE_OFC3_count_load : INVD5BWP7T port map(I => FE_OFN2_count_load, ZN => count_load);
  FE_OFC2_count_load : INVD5BWP7T port map(I => FE_OFN2_count_load, ZN => FE_RN_2);
  FE_OFC1_count_load : INVD1BWP7T port map(I => FE_OFN1_count_load, ZN => FE_OFN2_count_load);
  FE_OFC0_reset : BUFFD5BWP7T port map(I => reset, Z => shift_reset);
  CTS_ccl_a_BUF_clk_G0_L4_1 : CKBD12BWP7T port map(I => CTS_5, Z => sck);
  CTS_cmf_BUF_clk_G0_L5_1 : CKBD12BWP7T port map(I => CTS_4, Z => shift_clk);
  CTS_cex_INV_clk_G0_L2_1 : CKND0BWP7T port map(I => CTS_19, ZN => CTS_18);
  CTS_ccl_BUF_clk_G0_L1_2 : CKBD0BWP7T port map(I => clk, Z => CTS_19);
  CTS_ccl_a_BUF_clk_G0_L1_1 : CKBD2BWP7T port map(I => clk, Z => CTS_17);
  g1203 : CKAN2D0BWP7T port map(A1 => CTS_18, A2 => n_81, Z => CTS_5);
  g1204 : CKND2D0BWP7T port map(A1 => n_80, A2 => n_82, ZN => CTS_4);
  g1205 : CKND2D0BWP7T port map(A1 => CTS_19, A2 => FE_PHN28_n_91, ZN => n_82);
  g1206 : INR2D0BWP7T port map(A1 => n_88, B1 => shift_reset, ZN => n_81);
  g1207 : IND2D0BWP7T port map(A1 => FE_PHN41_n_91, B1 => CTS_18, ZN => n_80);
  g1969 : ND2D5BWP7T port map(A1 => n_79, A2 => n_78, ZN => mosi(0));
  g1970 : ND2D5BWP7T port map(A1 => n_76, A2 => n_66, ZN => data_out(4));
  g1971 : IND4D0BWP7T port map(A1 => shift_reset, B1 => count_in(0), B2 => n_43, B3 => n_60, ZN => n_79);
  g1972 : OR2D1BWP7T port map(A1 => done, A2 => n_77, Z => FE_OFN17_data_out_5);
  g1973 : ND2D5BWP7T port map(A1 => n_75, A2 => n_62, ZN => data_out(6));
  g1974 : ND2D5BWP7T port map(A1 => n_74, A2 => n_59, ZN => data_out(0));
  g1975 : AOI32D1BWP7T port map(A1 => n_44, A2 => n_36, A3 => n_51, B1 => n_35, B2 => shift_in(0), ZN => n_78);
  g1976 : ND2D5BWP7T port map(A1 => n_69, A2 => n_73, ZN => data_out(2));
  g1977 : NR2XD0BWP7T port map(A1 => n_47, A2 => n_65, ZN => n_77);
  g1978 : ND2D5BWP7T port map(A1 => n_68, A2 => n_70, ZN => data_out(1));
  g1979 : AOI22D0BWP7T port map(A1 => n_53, A2 => address(0), B1 => n_64, B2 => data_in(0), ZN => n_76);
  g1980 : ND2D5BWP7T port map(A1 => n_72, A2 => n_63, ZN => data_out(3));
  g1981 : ND2D5BWP7T port map(A1 => n_67, A2 => n_71, ZN => data_out(7));
  g1982 : AOI22D0BWP7T port map(A1 => n_54, A2 => address(10), B1 => n_64, B2 => data_in(2), ZN => n_75);
  g1983 : AOI22D0BWP7T port map(A1 => n_54, A2 => address(12), B1 => n_64, B2 => data_in(4), ZN => n_74);
  g1984 : ND2D1BWP7T port map(A1 => n_64, A2 => data_in(6), ZN => n_73);
  g1985 : ND2D1BWP7T port map(A1 => n_64, A2 => data_in(7), ZN => n_72);
  g1986 : ND2D1BWP7T port map(A1 => n_64, A2 => data_in(3), ZN => n_71);
  g1987 : ND2D1BWP7T port map(A1 => n_64, A2 => data_in(5), ZN => n_70);
  g1988 : OR2D1BWP7T port map(A1 => done, A2 => n_58, Z => FE_OFN18_new_data);
  g1989 : ND2D5BWP7T port map(A1 => n_61, A2 => n_57, ZN => reg_shift);
  g1990 : AOI22D0BWP7T port map(A1 => n_53, A2 => address(6), B1 => n_54, B2 => address(14), ZN => n_69);
  g1991 : AOI22D0BWP7T port map(A1 => n_53, A2 => address(5), B1 => n_54, B2 => address(13), ZN => n_68);
  g1992 : AOI22D0BWP7T port map(A1 => n_53, A2 => address(3), B1 => n_54, B2 => address(11), ZN => n_67);
  g1993 : AOI22D0BWP7T port map(A1 => n_54, A2 => address(8), B1 => done, B2 => RW, ZN => n_66);
  g1994 : MAOI22D0BWP7T port map(A1 => n_45, A2 => data_in(1), B1 => n_52, B2 => count_in(3), ZN => n_65);
  g1995 : ND2D1BWP7T port map(A1 => n_53, A2 => address(7), ZN => n_63);
  g1996 : IND2D1BWP7T port map(A1 => n_57, B1 => FE_PHN39_count_in_3, ZN => FE_PHN20_n_91);
  SINGLE_LATCH_reg : LNQD1BWP7T port map(D => single, EN => count_en, Q => SINGLE_LATCH);
  g1998 : ND2D1BWP7T port map(A1 => n_53, A2 => address(2), ZN => n_62);
  g1999 : NR2D1BWP7T port map(A1 => n_55, A2 => n_47, ZN => n_64);
  g2000 : ND3D0BWP7T port map(A1 => n_48, A2 => SHIFT_nLOAD, A3 => state(0), ZN => n_61);
  g2001 : OAI31D0BWP7T port map(A1 => count_in(2), A2 => n_34, A3 => n_31, B => n_55, ZN => n_60);
  g2002 : ND2D1BWP7T port map(A1 => n_53, A2 => address(4), ZN => n_59);
  g2003 : OR2D1BWP7T port map(A1 => done, A2 => n_56, Z => FE_OFN19_reg_load);
  g2004 : AN4D1BWP7T port map(A1 => n_93, A2 => n_31, A3 => n_85, A4 => count_in(2), Z => n_58);
  g2005 : AN2D0BWP7T port map(A1 => n_45, A2 => count_in(0), Z => n_94);
  g2007 : NR2XD0BWP7T port map(A1 => n_47, A2 => SHIFT_nLOAD, ZN => n_56);
  g2008 : OR2D1BWP7T port map(A1 => n_46, A2 => shift_reset, Z => FE_OFN16_count_reset);
  g2009 : OR2D1BWP7T port map(A1 => n_49, A2 => FE_PHN34_state_0, Z => n_57);
  g2010 : NR2D0BWP7T port map(A1 => n_149, A2 => shift_reset, ZN => FE_OFN15_count_en);
  g2011 : AOI22D0BWP7T port map(A1 => n_37, A2 => address(1), B1 => n_41, B2 => address(9), ZN => n_52);
  g2012 : OAI21D0BWP7T port map(A1 => n_38, A2 => count_in(0), B => n_42, ZN => n_51);
  g2013 : CKAN2D8BWP7T port map(A1 => n_50, A2 => n_39, Z => high_z);
  g2014 : ND3D0BWP7T port map(A1 => n_36, A2 => count_in(2), A3 => count_in(1), ZN => n_55);
  g2015 : CKAN2D8BWP7T port map(A1 => n_48, A2 => n_31, Z => done);
  g2016 : AN3D1BWP7T port map(A1 => n_48, A2 => n_36, A3 => n_41, Z => n_54);
  g2017 : AN3D1BWP7T port map(A1 => n_48, A2 => n_36, A3 => n_37, Z => n_53);
  g2018 : INVD0BWP7T port map(I => n_49, ZN => n_50);
  g2019 : INVD1BWP7T port map(I => n_48, ZN => n_47);
  g2020 : CKAN2D8BWP7T port map(A1 => n_35, A2 => shift_in(1), Z => mosi(1));
  g2023 : CKAN2D8BWP7T port map(A1 => n_35, A2 => shift_in(2), Z => mosi(2));
  g2024 : ND2D1BWP7T port map(A1 => n_93, A2 => FE_PHN35_state_1, ZN => n_49);
  g2025 : INR2XD0BWP7T port map(A1 => n_35, B1 => shift_reset, ZN => n_48);
  g2026 : INVD1BWP7T port map(I => n_46, ZN => n_88);
  g2027 : IND2D0BWP7T port map(A1 => count_in(2), B1 => n_85, ZN => n_619_BAR);
  g2028 : ND2D5BWP7T port map(A1 => n_40, A2 => state(2), ZN => mosi(3));
  g2029 : AOI21D0BWP7T port map(A1 => state(2), A2 => state(1), B => state(0), ZN => n_46);
  g2030 : AN3D1BWP7T port map(A1 => count_in(2), A2 => count_in(1), A3 => n_33, Z => n_45);
  g2031 : NR3D0BWP7T port map(A1 => n_0, A2 => state(2), A3 => shift_reset, ZN => n_44);
  g2032 : AN2D0BWP7T port map(A1 => n_35, A2 => n_31, Z => n_149);
  g2033 : INVD0BWP7T port map(I => n_41, ZN => n_42);
  g2034 : ND2D1BWP7T port map(A1 => n_0, A2 => shift_in(3), ZN => n_40);
  g2035 : ND2D0BWP7T port map(A1 => state(0), A2 => state(1), ZN => n_1298_BAR);
  g2036 : ND2D1BWP7T port map(A1 => n_31, A2 => n_33, ZN => n_39);
  g2037 : NR2XD0BWP7T port map(A1 => state(2), A2 => state(1), ZN => n_43);
  g2038 : INR2XD0BWP7T port map(A1 => count_in(1), B1 => count_in(2), ZN => n_41);
  g2039 : AN2D1BWP7T port map(A1 => count_in(0), A2 => FE_PHN43_count_in_3, Z => n_85);
  g2040 : INVD0BWP7T port map(I => n_37, ZN => n_38);
  g2041 : IND2D1BWP7T port map(A1 => count_in(1), B1 => FE_PHN47_count_in_3, ZN => n_34);
  g2042 : NR2XD0BWP7T port map(A1 => n_0, A2 => state(0), ZN => n_92);
  g2043 : INR2XD0BWP7T port map(A1 => FE_PHN32_state_2, B1 => FE_PHN44_shift_reset, ZN => FE_PHN45_n_93);
  g2044 : INR2XD0BWP7T port map(A1 => count_in(2), B1 => count_in(1), ZN => n_37);
  g2045 : NR2XD0BWP7T port map(A1 => n_31, A2 => FE_PHN47_count_in_3, ZN => n_36);
  g2046 : CKAN2D1BWP7T port map(A1 => n_0, A2 => state(2), Z => n_35);
  g2047 : INVD0BWP7T port map(I => FE_PHN43_count_in_3, ZN => n_33);
  g1625 : AO21D0BWP7T port map(A1 => state(0), A2 => n_21, B => n_20, Z => n_22);
  data_read_reg_5 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(2), E => n_18, Q => FE_OFN14_data_read_5);
  data_read_reg_4 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(0), E => n_18, Q => FE_OFN12_data_read_4);
  data_read_reg_3 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(7), E => n_18, Q => FE_OFN10_data_read_3);
  data_read_reg_0 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(1), E => n_18, Q => FE_OFN8_data_read_0);
  data_read_reg_7 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(6), E => n_18, Q => FE_OFN13_data_read_7);
  data_read_reg_6 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(4), E => n_18, Q => FE_OFN7_data_read_6);
  data_read_reg_2 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(5), E => n_18, Q => FE_OFN9_data_read_2);
  data_read_reg_1 : EDFCNQD1BWP7T port map(CDN => n_1, CP => CTS_17, D => shift_data_in(3), E => n_18, Q => FE_OFN11_data_read_1);
  g1635 : AOI221D0BWP7T port map(A1 => state(2), A2 => n_16, B1 => n_4, B2 => state(1), C => n_12, ZN => n_21);
  g1636 : AOI21D0BWP7T port map(A1 => state(2), A2 => n_15, B => state(0), ZN => n_20);
  g1637 : OAI211D1BWP7T port map(A1 => n_13, A2 => n_9, B => n_17, C => n_10, ZN => n_19);
  g1638 : AOI21D1BWP7T port map(A1 => n_14, A2 => n_1298_BAR, B => n_2, ZN => n_18);
  g1639 : ND2D1BWP7T port map(A1 => n_12, A2 => state(0), ZN => n_17);
  g1640 : OAI31D0BWP7T port map(A1 => count_in(1), A2 => RW_LATCH, A3 => n_619_BAR, B => n_13, ZN => n_16);
  g1641 : AOI32D1BWP7T port map(A1 => state(1), A2 => n_5, A3 => n_6, B1 => n_0, B2 => en, ZN => n_15);
  SHIFT_nLOAD_reg : DFNCND1BWP7T port map(CDN => n_1, CPN => CTS_17, D => n_11, Q => SHIFT_nLOAD, QN => n_152);
  g1643 : OAI21D0BWP7T port map(A1 => n_5, A2 => n_8, B => n_92, ZN => n_14);
  g1644 : IND4D0BWP7T port map(A1 => count_in(0), B1 => count_in(1), B2 => count_in(2), B3 => n_3, ZN => n_13);
  g1645 : AN4D1BWP7T port map(A1 => n_0, A2 => n_2, A3 => n_5, A4 => count_in(2), Z => n_12);
  g1647 : INR2D1BWP7T port map(A1 => n_152, B1 => n_9, ZN => n_11);
  g1648 : AO21D0BWP7T port map(A1 => n_4, A2 => state(0), B => n_0, Z => n_10);
  g1649 : AN3D0BWP7T port map(A1 => count_in(2), A2 => FE_PHN43_count_in_3, A3 => count_in(0), Z => n_8);
  g1650 : ND3D0BWP7T port map(A1 => n_0, A2 => state(0), A3 => state(2), ZN => n_9);
  g1652 : CKXOR2D1BWP7T port map(A1 => count_in(2), A2 => SINGLE_LATCH, Z => n_6);
  RW_LATCH_reg : LNQD1BWP7T port map(D => RW, EN => count_en, Q => RW_LATCH);
  g1654 : CKAN2D1BWP7T port map(A1 => n_85, A2 => count_in(1), Z => n_5);
  g1655 : INR2XD0BWP7T port map(A1 => RW_LATCH, B1 => FE_PHN43_count_in_3, ZN => n_3);
  g1656 : IND2D1BWP7T port map(A1 => n_94, B1 => n_2, ZN => n_4);
  g1658 : INVD0BWP7T port map(I => shift_reset, ZN => n_1);
  state_reg_1 : DFKCND1BWP7T port map(CN => n_1, CP => CTS_17, D => n_19, Q => state(1), QN => n_0);
  state_reg_0 : DFKCND1BWP7T port map(CN => n_1, CP => CTS_17, D => n_22, Q => state(0), QN => n_31);
  state_reg_2 : DFD1BWP7T port map(CP => CTS_17, D => n_162, Q => state(2), QN => n_2);
  g2 : AO31D1BWP7T port map(A1 => n_44, A2 => state(0), A3 => n_94, B => n_93, Z => n_162);
  tie_0_cell : TIELBWP7T port map(ZN => FE_OFN1_count_load);

end routed;
