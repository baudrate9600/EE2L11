
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of line_buffer is

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(EN, D : in std_logic; Q : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  signal mem_6 : std_logic_vector(7 downto 0);
  signal mem_5 : std_logic_vector(7 downto 0);
  signal mem_0 : std_logic_vector(7 downto 0);
  signal mem_2 : std_logic_vector(7 downto 0);
  signal mem_9 : std_logic_vector(7 downto 0);
  signal mem_11 : std_logic_vector(7 downto 0);
  signal mem_1 : std_logic_vector(7 downto 0);
  signal mem_12 : std_logic_vector(7 downto 0);
  signal mem_13 : std_logic_vector(7 downto 0);
  signal mem_15 : std_logic_vector(7 downto 0);
  signal mem_14 : std_logic_vector(7 downto 0);
  signal mem_8 : std_logic_vector(7 downto 0);
  signal mem_3 : std_logic_vector(7 downto 0);
  signal mem_7 : std_logic_vector(7 downto 0);
  signal mem_4 : std_logic_vector(7 downto 0);
  signal mem_10 : std_logic_vector(7 downto 0);
  signal mem_18 : std_logic_vector(7 downto 0);
  signal mem_19 : std_logic_vector(7 downto 0);
  signal mem_16 : std_logic_vector(7 downto 0);
  signal mem_17 : std_logic_vector(7 downto 0);
  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2, UNCONNECTED3 : std_logic;
  signal UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, n_0, n_1 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_7, n_8, n_9, n_10, n_11 : std_logic;
  signal n_12, n_13, n_14, n_15, n_16 : std_logic;
  signal n_17, n_18, n_19, n_20, n_21 : std_logic;
  signal n_22, n_23, n_24, n_25, n_26 : std_logic;
  signal n_27, n_28, n_29, n_30, n_31 : std_logic;
  signal n_32, n_33, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_43, n_44, n_45, n_46 : std_logic;
  signal n_47, n_48, n_49, n_50, n_51 : std_logic;
  signal n_52, n_53, n_54, n_55, n_56 : std_logic;
  signal n_57, n_58, n_59, n_60, n_61 : std_logic;
  signal n_62, n_63, n_64, n_65, n_66 : std_logic;
  signal n_67, n_68, n_69, n_70, n_71 : std_logic;
  signal n_72, n_73, n_74, n_75, n_76 : std_logic;
  signal n_77, n_78, n_79, n_80, n_81 : std_logic;
  signal n_82, n_83, n_84, n_85, n_86 : std_logic;
  signal n_87, n_88, n_89, n_90, n_91 : std_logic;
  signal n_92, n_93, n_94, n_95, n_96 : std_logic;
  signal n_97, n_98, n_99, n_100, n_101 : std_logic;
  signal n_102, n_103, n_104, n_105, n_106 : std_logic;
  signal n_107, n_108, n_109, n_110, n_111 : std_logic;
  signal n_112, n_113, n_114, n_115, n_116 : std_logic;
  signal n_117, n_118, n_119, n_120, n_121 : std_logic;
  signal n_122, n_123, n_124, n_125, n_126 : std_logic;
  signal n_127, n_128, n_129, n_130, n_131 : std_logic;
  signal n_132, n_133, n_134, n_135, n_136 : std_logic;
  signal n_137, n_138, n_139, n_140, n_141 : std_logic;
  signal n_142, n_143, n_144, n_145, n_146 : std_logic;
  signal n_147, n_148, n_149, n_150, n_151 : std_logic;
  signal n_152, n_153, n_154, n_155, n_156 : std_logic;
  signal n_157, n_158, n_159, n_168, n_169 : std_logic;
  signal n_170, n_171, n_172, n_173, n_174 : std_logic;
  signal n_175 : std_logic;

begin

  g4899 : CKND4BWP7T port map(I => n_172, ZN => data_out(0));
  g4895 : CKND4BWP7T port map(I => n_174, ZN => data_out(6));
  g4893 : CKND4BWP7T port map(I => n_175, ZN => data_out(4));
  g4907 : CKND4BWP7T port map(I => n_168, ZN => data_out(1));
  g4903 : CKND4BWP7T port map(I => n_170, ZN => data_out(5));
  g4897 : CKND4BWP7T port map(I => n_173, ZN => data_out(7));
  g4901 : CKND4BWP7T port map(I => n_171, ZN => data_out(2));
  g4905 : CKND4BWP7T port map(I => n_169, ZN => data_out(3));
  data_out_reg_7 : LHD1BWP7T port map(E => write, D => n_153, Q => UNCONNECTED, QN => n_173);
  data_out_reg_2 : LHD1BWP7T port map(E => write, D => n_155, Q => UNCONNECTED0, QN => n_171);
  data_out_reg_4 : LHD1BWP7T port map(E => write, D => n_158, Q => UNCONNECTED1, QN => n_175);
  data_out_reg_5 : LHD1BWP7T port map(E => write, D => n_154, Q => UNCONNECTED2, QN => n_170);
  data_out_reg_0 : LHD1BWP7T port map(E => write, D => n_159, Q => UNCONNECTED3, QN => n_172);
  data_out_reg_3 : LHD1BWP7T port map(E => write, D => n_157, Q => UNCONNECTED4, QN => n_169);
  data_out_reg_6 : LHD1BWP7T port map(E => write, D => n_152, Q => UNCONNECTED5, QN => n_174);
  data_out_reg_1 : LHD1BWP7T port map(E => write, D => n_156, Q => UNCONNECTED6, QN => n_168);
  g4908 : IND4D0BWP7T port map(A1 => n_140, B1 => n_103, B2 => n_83, B3 => n_148, ZN => n_159);
  g4910 : IND4D0BWP7T port map(A1 => n_141, B1 => n_71, B2 => n_64, B3 => n_139, ZN => n_158);
  g4914 : IND4D0BWP7T port map(A1 => n_144, B1 => n_94, B2 => n_72, B3 => n_138, ZN => n_157);
  g4915 : IND4D0BWP7T port map(A1 => n_136, B1 => n_93, B2 => n_96, B3 => n_151, ZN => n_156);
  g4909 : IND4D0BWP7T port map(A1 => n_137, B1 => n_60, B2 => n_102, B3 => n_147, ZN => n_155);
  g4912 : IND4D0BWP7T port map(A1 => n_149, B1 => n_116, B2 => n_135, B3 => n_146, ZN => n_154);
  g4911 : IND4D0BWP7T port map(A1 => n_142, B1 => n_82, B2 => n_133, B3 => n_143, ZN => n_153);
  g4913 : IND4D0BWP7T port map(A1 => n_150, B1 => n_85, B2 => n_86, B3 => n_145, ZN => n_152);
  g4927 : AN4D1BWP7T port map(A1 => n_132, A2 => n_58, A3 => n_63, A4 => n_124, Z => n_151);
  g4924 : ND4D0BWP7T port map(A1 => n_98, A2 => n_77, A3 => n_74, A4 => n_134, ZN => n_150);
  g4925 : ND4D0BWP7T port map(A1 => n_88, A2 => n_108, A3 => n_91, A4 => n_59, ZN => n_149);
  g4926 : AN4D1BWP7T port map(A1 => n_105, A2 => n_66, A3 => n_127, A4 => n_80, Z => n_148);
  g4923 : AN4D1BWP7T port map(A1 => n_79, A2 => n_104, A3 => n_36, A4 => n_46, Z => n_147);
  g4916 : AN4D1BWP7T port map(A1 => n_90, A2 => n_100, A3 => n_50, A4 => n_55, Z => n_146);
  g4928 : AN4D1BWP7T port map(A1 => n_81, A2 => n_57, A3 => n_45, A4 => n_44, Z => n_145);
  g4929 : ND4D0BWP7T port map(A1 => n_106, A2 => n_67, A3 => n_61, A4 => n_65, ZN => n_144);
  g4919 : AN4D1BWP7T port map(A1 => n_97, A2 => n_87, A3 => n_43, A4 => n_38, Z => n_143);
  g4930 : ND4D0BWP7T port map(A1 => n_68, A2 => n_73, A3 => n_70, A4 => n_69, ZN => n_142);
  g4931 : ND4D0BWP7T port map(A1 => n_110, A2 => n_118, A3 => n_114, A4 => n_62, ZN => n_141);
  g4918 : ND4D0BWP7T port map(A1 => n_112, A2 => n_101, A3 => n_41, A4 => n_40, ZN => n_140);
  g4917 : AN4D1BWP7T port map(A1 => n_126, A2 => n_122, A3 => n_42, A4 => n_54, Z => n_139);
  g4920 : AN4D1BWP7T port map(A1 => n_76, A2 => n_89, A3 => n_39, A4 => n_37, Z => n_138);
  g4921 : ND4D0BWP7T port map(A1 => n_75, A2 => n_84, A3 => n_78, A4 => n_56, ZN => n_137);
  g4922 : ND4D0BWP7T port map(A1 => n_130, A2 => n_120, A3 => n_48, A4 => n_52, ZN => n_136);
  g4948 : AOI22D0BWP7T port map(A1 => n_113, A2 => mem_6(5), B1 => n_111, B2 => mem_5(5), ZN => n_135);
  g4978 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(6), B1 => n_131, B2 => mem_2(6), ZN => n_134);
  g4979 : AOI22D0BWP7T port map(A1 => n_128, A2 => mem_9(7), B1 => n_119, B2 => mem_11(7), ZN => n_133);
  g4942 : AOI22D0BWP7T port map(A1 => n_131, A2 => mem_2(1), B1 => n_117, B2 => mem_1(1), ZN => n_132);
  g4980 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(1), B1 => n_128, B2 => mem_9(1), ZN => n_130);
  g4981 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(0), B1 => n_125, B2 => mem_13(0), ZN => n_127);
  g4943 : AOI22D0BWP7T port map(A1 => n_125, A2 => mem_13(4), B1 => n_99, B2 => mem_15(4), ZN => n_126);
  g4982 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(1), B1 => n_121, B2 => mem_14(1), ZN => n_124);
  g4984 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(4), B1 => n_121, B2 => mem_14(4), ZN => n_122);
  g4985 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(1), B1 => n_119, B2 => mem_11(1), ZN => n_120);
  g4945 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(4), B1 => n_107, B2 => mem_3(4), ZN => n_118);
  g4987 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(5), B1 => n_109, B2 => mem_7(5), ZN => n_116);
  g4946 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(4), B1 => n_113, B2 => mem_6(4), ZN => n_114);
  g4989 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(0), B1 => n_92, B2 => mem_10(0), ZN => n_112);
  g4947 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(4), B1 => n_109, B2 => mem_7(4), ZN => n_110);
  g4991 : AOI22D0BWP7T port map(A1 => n_107, A2 => mem_3(5), B1 => n_123, B2 => mem_12(5), ZN => n_108);
  g4941 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(3), B1 => n_107, B2 => mem_3(3), ZN => n_106);
  g4992 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(0), B1 => n_117, B2 => mem_1(0), ZN => n_105);
  g4993 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(2), B1 => n_121, B2 => mem_14(2), ZN => n_104);
  g4949 : AOI22D0BWP7T port map(A1 => n_113, A2 => mem_6(0), B1 => n_109, B2 => mem_7(0), ZN => n_103);
  g4950 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(2), B1 => n_109, B2 => mem_7(2), ZN => n_102);
  g4997 : AOI22D0BWP7T port map(A1 => n_131, A2 => mem_2(0), B1 => n_115, B2 => mem_8(0), ZN => n_101);
  g4951 : AOI22D0BWP7T port map(A1 => n_125, A2 => mem_13(5), B1 => n_99, B2 => mem_15(5), ZN => n_100);
  g4998 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(6), B1 => n_125, B2 => mem_13(6), ZN => n_98);
  g4999 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(7), B1 => n_99, B2 => mem_15(7), ZN => n_97);
  g4952 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(1), B1 => n_109, B2 => mem_7(1), ZN => n_96);
  g5000 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(3), B1 => n_109, B2 => mem_7(3), ZN => n_94);
  g5001 : AOI22D0BWP7T port map(A1 => n_113, A2 => mem_6(1), B1 => n_92, B2 => mem_10(1), ZN => n_93);
  g4953 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(5), B1 => n_121, B2 => mem_14(5), ZN => n_91);
  g5002 : AOI22D0BWP7T port map(A1 => n_92, A2 => mem_10(5), B1 => n_128, B2 => mem_9(5), ZN => n_90);
  g5003 : AOI22D0BWP7T port map(A1 => n_123, A2 => mem_12(3), B1 => n_92, B2 => mem_10(3), ZN => n_89);
  g4954 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(5), B1 => n_119, B2 => mem_11(5), ZN => n_88);
  g4965 : AOI22D0BWP7T port map(A1 => n_121, A2 => mem_14(7), B1 => n_125, B2 => mem_13(7), ZN => n_87);
  g4955 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(6), B1 => n_109, B2 => mem_7(6), ZN => n_86);
  g5008 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(6), B1 => n_92, B2 => mem_10(6), ZN => n_85);
  g5009 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(2), B1 => n_92, B2 => mem_10(2), ZN => n_84);
  g4957 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(0), B1 => n_119, B2 => mem_11(0), ZN => n_83);
  g5010 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(7), B1 => n_92, B2 => mem_10(7), ZN => n_82);
  g4958 : AOI22D0BWP7T port map(A1 => n_121, A2 => mem_14(6), B1 => n_99, B2 => mem_15(6), ZN => n_81);
  g4959 : AOI22D0BWP7T port map(A1 => n_121, A2 => mem_14(0), B1 => n_99, B2 => mem_15(0), ZN => n_80);
  g4932 : AOI22D0BWP7T port map(A1 => n_125, A2 => mem_13(2), B1 => n_99, B2 => mem_15(2), ZN => n_79);
  g4960 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(2), B1 => n_113, B2 => mem_6(2), ZN => n_78);
  g4961 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(6), B1 => n_107, B2 => mem_3(6), ZN => n_77);
  g4933 : AOI22D0BWP7T port map(A1 => n_125, A2 => mem_13(3), B1 => n_99, B2 => mem_15(3), ZN => n_76);
  g4962 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(2), B1 => n_107, B2 => mem_3(2), ZN => n_75);
  g4963 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(6), B1 => n_113, B2 => mem_6(6), ZN => n_74);
  g4934 : AOI22D0BWP7T port map(A1 => n_117, A2 => mem_1(7), B1 => n_107, B2 => mem_3(7), ZN => n_73);
  g4964 : AOI22D0BWP7T port map(A1 => n_113, A2 => mem_6(3), B1 => n_111, B2 => mem_5(3), ZN => n_72);
  g5005 : AOI22D0BWP7T port map(A1 => n_115, A2 => mem_8(4), B1 => n_92, B2 => mem_10(4), ZN => n_71);
  g4935 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(7), B1 => n_113, B2 => mem_6(7), ZN => n_70);
  g4967 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(7), B1 => n_131, B2 => mem_2(7), ZN => n_69);
  g4936 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(7), B1 => n_109, B2 => mem_7(7), ZN => n_68);
  g4968 : AOI22D0BWP7T port map(A1 => n_95, A2 => mem_4(3), B1 => n_128, B2 => mem_9(3), ZN => n_67);
  g4969 : AOI22D0BWP7T port map(A1 => n_107, A2 => mem_3(0), B1 => n_128, B2 => mem_9(0), ZN => n_66);
  g4970 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(3), B1 => n_131, B2 => mem_2(3), ZN => n_65);
  g4971 : AOI22D0BWP7T port map(A1 => n_128, A2 => mem_9(4), B1 => n_119, B2 => mem_11(4), ZN => n_64);
  g4938 : AOI22D0BWP7T port map(A1 => n_125, A2 => mem_13(1), B1 => n_99, B2 => mem_15(1), ZN => n_63);
  g4973 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(4), B1 => n_131, B2 => mem_2(4), ZN => n_62);
  g4939 : AOI22D0BWP7T port map(A1 => n_121, A2 => mem_14(3), B1 => n_119, B2 => mem_11(3), ZN => n_61);
  g4974 : AOI22D0BWP7T port map(A1 => n_128, A2 => mem_9(2), B1 => n_119, B2 => mem_11(2), ZN => n_60);
  g4975 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(5), B1 => n_131, B2 => mem_2(5), ZN => n_59);
  g4940 : AOI22D0BWP7T port map(A1 => n_111, A2 => mem_5(1), B1 => n_107, B2 => mem_3(1), ZN => n_58);
  g4976 : AOI22D0BWP7T port map(A1 => n_128, A2 => mem_9(6), B1 => n_119, B2 => mem_11(6), ZN => n_57);
  g4977 : AOI22D0BWP7T port map(A1 => n_129, A2 => mem_0(2), B1 => n_131, B2 => mem_2(2), ZN => n_56);
  g4990 : AOI22D0BWP7T port map(A1 => n_53, A2 => mem_18(5), B1 => n_47, B2 => mem_19(5), ZN => n_55);
  g4944 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(4), B1 => n_53, B2 => mem_18(4), ZN => n_54);
  g4986 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(1), B1 => n_49, B2 => mem_17(1), ZN => n_52);
  g4988 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(5), B1 => n_49, B2 => mem_17(5), ZN => n_50);
  g4983 : AOI22D0BWP7T port map(A1 => n_53, A2 => mem_18(1), B1 => n_47, B2 => mem_19(1), ZN => n_48);
  g4994 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(2), B1 => n_49, B2 => mem_17(2), ZN => n_46);
  g4995 : AOI22D0BWP7T port map(A1 => n_53, A2 => mem_18(6), B1 => n_47, B2 => mem_19(6), ZN => n_45);
  g4996 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(6), B1 => n_49, B2 => mem_17(6), ZN => n_44);
  g5011 : AOI22D0BWP7T port map(A1 => n_49, A2 => mem_17(7), B1 => n_47, B2 => mem_19(7), ZN => n_43);
  g5006 : AOI22D0BWP7T port map(A1 => n_49, A2 => mem_17(4), B1 => n_47, B2 => mem_19(4), ZN => n_42);
  g5007 : AOI22D0BWP7T port map(A1 => n_49, A2 => mem_17(0), B1 => n_47, B2 => mem_19(0), ZN => n_41);
  g4956 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(0), B1 => n_53, B2 => mem_18(0), ZN => n_40);
  g5004 : AOI22D0BWP7T port map(A1 => n_49, A2 => mem_17(3), B1 => n_47, B2 => mem_19(3), ZN => n_39);
  g4966 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(7), B1 => n_53, B2 => mem_18(7), ZN => n_38);
  g4937 : AOI22D0BWP7T port map(A1 => n_51, A2 => mem_16(3), B1 => n_53, B2 => mem_18(3), ZN => n_37);
  g4972 : AOI22D0BWP7T port map(A1 => n_53, A2 => mem_18(2), B1 => n_47, B2 => mem_19(2), ZN => n_36);
  mem_reg_4_3 : LNQD1BWP7T port map(EN => n_35, D => data_in(3), Q => mem_4(3));
  mem_reg_4_2 : LNQD1BWP7T port map(EN => n_35, D => data_in(2), Q => mem_4(2));
  mem_reg_4_6 : LNQD1BWP7T port map(EN => n_35, D => data_in(6), Q => mem_4(6));
  mem_reg_7_4 : LNQD1BWP7T port map(EN => n_26, D => data_in(4), Q => mem_7(4));
  mem_reg_14_7 : LNQD1BWP7T port map(EN => n_20, D => data_in(7), Q => mem_14(7));
  mem_reg_10_6 : LNQD1BWP7T port map(EN => n_28, D => data_in(6), Q => mem_10(6));
  mem_reg_1_2 : LNQD1BWP7T port map(EN => n_22, D => data_in(2), Q => mem_1(2));
  mem_reg_0_6 : LNQD1BWP7T port map(EN => n_24, D => data_in(6), Q => mem_0(6));
  mem_reg_6_1 : LNQD1BWP7T port map(EN => n_23, D => data_in(1), Q => mem_6(1));
  mem_reg_15_3 : LNQD1BWP7T port map(EN => n_30, D => data_in(3), Q => mem_15(3));
  mem_reg_13_0 : LNQD1BWP7T port map(EN => n_34, D => data_in(0), Q => mem_13(0));
  mem_reg_5_7 : LNQD1BWP7T port map(EN => n_27, D => data_in(7), Q => mem_5(7));
  mem_reg_2_1 : LNQD1BWP7T port map(EN => n_32, D => data_in(1), Q => mem_2(1));
  mem_reg_9_5 : LNQD1BWP7T port map(EN => n_29, D => data_in(5), Q => mem_9(5));
  mem_reg_13_1 : LNQD1BWP7T port map(EN => n_34, D => data_in(1), Q => mem_13(1));
  mem_reg_4_1 : LNQD1BWP7T port map(EN => n_35, D => data_in(1), Q => mem_4(1));
  mem_reg_3_6 : LNQD1BWP7T port map(EN => n_33, D => data_in(6), Q => mem_3(6));
  mem_reg_11_2 : LNQD1BWP7T port map(EN => n_31, D => data_in(2), Q => mem_11(2));
  mem_reg_3_2 : LNQD1BWP7T port map(EN => n_33, D => data_in(2), Q => mem_3(2));
  mem_reg_2_6 : LNQD1BWP7T port map(EN => n_32, D => data_in(6), Q => mem_2(6));
  mem_reg_11_0 : LNQD1BWP7T port map(EN => n_31, D => data_in(0), Q => mem_11(0));
  mem_reg_2_5 : LNQD1BWP7T port map(EN => n_32, D => data_in(5), Q => mem_2(5));
  mem_reg_12_6 : LNQD1BWP7T port map(EN => n_25, D => data_in(6), Q => mem_12(6));
  mem_reg_11_3 : LNQD1BWP7T port map(EN => n_31, D => data_in(3), Q => mem_11(3));
  mem_reg_15_5 : LNQD1BWP7T port map(EN => n_30, D => data_in(5), Q => mem_15(5));
  mem_reg_13_5 : LNQD1BWP7T port map(EN => n_34, D => data_in(5), Q => mem_13(5));
  mem_reg_11_4 : LNQD1BWP7T port map(EN => n_31, D => data_in(4), Q => mem_11(4));
  mem_reg_9_3 : LNQD1BWP7T port map(EN => n_29, D => data_in(3), Q => mem_9(3));
  mem_reg_10_4 : LNQD1BWP7T port map(EN => n_28, D => data_in(4), Q => mem_10(4));
  mem_reg_5_5 : LNQD1BWP7T port map(EN => n_27, D => data_in(5), Q => mem_5(5));
  mem_reg_7_5 : LNQD1BWP7T port map(EN => n_26, D => data_in(5), Q => mem_7(5));
  mem_reg_7_7 : LNQD1BWP7T port map(EN => n_26, D => data_in(7), Q => mem_7(7));
  mem_reg_12_5 : LNQD1BWP7T port map(EN => n_25, D => data_in(5), Q => mem_12(5));
  mem_reg_3_1 : LNQD1BWP7T port map(EN => n_33, D => data_in(1), Q => mem_3(1));
  mem_reg_10_3 : LNQD1BWP7T port map(EN => n_28, D => data_in(3), Q => mem_10(3));
  mem_reg_3_3 : LNQD1BWP7T port map(EN => n_33, D => data_in(3), Q => mem_3(3));
  mem_reg_8_5 : LNQD1BWP7T port map(EN => n_21, D => data_in(5), Q => mem_8(5));
  mem_reg_0_1 : LNQD1BWP7T port map(EN => n_24, D => data_in(1), Q => mem_0(1));
  mem_reg_13_4 : LNQD1BWP7T port map(EN => n_34, D => data_in(4), Q => mem_13(4));
  mem_reg_2_3 : LNQD1BWP7T port map(EN => n_32, D => data_in(3), Q => mem_2(3));
  mem_reg_0_3 : LNQD1BWP7T port map(EN => n_24, D => data_in(3), Q => mem_0(3));
  mem_reg_5_2 : LNQD1BWP7T port map(EN => n_27, D => data_in(2), Q => mem_5(2));
  mem_reg_6_5 : LNQD1BWP7T port map(EN => n_23, D => data_in(5), Q => mem_6(5));
  mem_reg_5_4 : LNQD1BWP7T port map(EN => n_27, D => data_in(4), Q => mem_5(4));
  mem_reg_15_7 : LNQD1BWP7T port map(EN => n_30, D => data_in(7), Q => mem_15(7));
  mem_reg_9_0 : LNQD1BWP7T port map(EN => n_29, D => data_in(0), Q => mem_9(0));
  mem_reg_9_4 : LNQD1BWP7T port map(EN => n_29, D => data_in(4), Q => mem_9(4));
  mem_reg_2_4 : LNQD1BWP7T port map(EN => n_32, D => data_in(4), Q => mem_2(4));
  mem_reg_11_6 : LNQD1BWP7T port map(EN => n_31, D => data_in(6), Q => mem_11(6));
  mem_reg_12_1 : LNQD1BWP7T port map(EN => n_25, D => data_in(1), Q => mem_12(1));
  mem_reg_0_4 : LNQD1BWP7T port map(EN => n_24, D => data_in(4), Q => mem_0(4));
  mem_reg_9_1 : LNQD1BWP7T port map(EN => n_29, D => data_in(1), Q => mem_9(1));
  mem_reg_1_4 : LNQD1BWP7T port map(EN => n_22, D => data_in(4), Q => mem_1(4));
  mem_reg_7_3 : LNQD1BWP7T port map(EN => n_26, D => data_in(3), Q => mem_7(3));
  mem_reg_4_0 : LNQD1BWP7T port map(EN => n_35, D => data_in(0), Q => mem_4(0));
  mem_reg_4_4 : LNQD1BWP7T port map(EN => n_35, D => data_in(4), Q => mem_4(4));
  mem_reg_6_3 : LNQD1BWP7T port map(EN => n_23, D => data_in(3), Q => mem_6(3));
  mem_reg_3_0 : LNQD1BWP7T port map(EN => n_33, D => data_in(0), Q => mem_3(0));
  mem_reg_0_0 : LNQD1BWP7T port map(EN => n_24, D => data_in(0), Q => mem_0(0));
  mem_reg_12_7 : LNQD1BWP7T port map(EN => n_25, D => data_in(7), Q => mem_12(7));
  mem_reg_8_0 : LNQD1BWP7T port map(EN => n_21, D => data_in(0), Q => mem_8(0));
  mem_reg_13_6 : LNQD1BWP7T port map(EN => n_34, D => data_in(6), Q => mem_13(6));
  mem_reg_3_4 : LNQD1BWP7T port map(EN => n_33, D => data_in(4), Q => mem_3(4));
  mem_reg_7_6 : LNQD1BWP7T port map(EN => n_26, D => data_in(6), Q => mem_7(6));
  mem_reg_3_7 : LNQD1BWP7T port map(EN => n_33, D => data_in(7), Q => mem_3(7));
  mem_reg_14_4 : LNQD1BWP7T port map(EN => n_20, D => data_in(4), Q => mem_14(4));
  mem_reg_6_7 : LNQD1BWP7T port map(EN => n_23, D => data_in(7), Q => mem_6(7));
  mem_reg_1_0 : LNQD1BWP7T port map(EN => n_22, D => data_in(0), Q => mem_1(0));
  mem_reg_8_1 : LNQD1BWP7T port map(EN => n_21, D => data_in(1), Q => mem_8(1));
  mem_reg_7_1 : LNQD1BWP7T port map(EN => n_26, D => data_in(1), Q => mem_7(1));
  mem_reg_11_7 : LNQD1BWP7T port map(EN => n_31, D => data_in(7), Q => mem_11(7));
  mem_reg_8_3 : LNQD1BWP7T port map(EN => n_21, D => data_in(3), Q => mem_8(3));
  mem_reg_6_4 : LNQD1BWP7T port map(EN => n_23, D => data_in(4), Q => mem_6(4));
  mem_reg_11_1 : LNQD1BWP7T port map(EN => n_31, D => data_in(1), Q => mem_11(1));
  mem_reg_5_3 : LNQD1BWP7T port map(EN => n_27, D => data_in(3), Q => mem_5(3));
  mem_reg_1_1 : LNQD1BWP7T port map(EN => n_22, D => data_in(1), Q => mem_1(1));
  mem_reg_5_0 : LNQD1BWP7T port map(EN => n_27, D => data_in(0), Q => mem_5(0));
  mem_reg_14_2 : LNQD1BWP7T port map(EN => n_20, D => data_in(2), Q => mem_14(2));
  mem_reg_13_2 : LNQD1BWP7T port map(EN => n_34, D => data_in(2), Q => mem_13(2));
  mem_reg_12_4 : LNQD1BWP7T port map(EN => n_25, D => data_in(4), Q => mem_12(4));
  mem_reg_5_6 : LNQD1BWP7T port map(EN => n_27, D => data_in(6), Q => mem_5(6));
  mem_reg_7_2 : LNQD1BWP7T port map(EN => n_26, D => data_in(2), Q => mem_7(2));
  mem_reg_13_3 : LNQD1BWP7T port map(EN => n_34, D => data_in(3), Q => mem_13(3));
  mem_reg_1_6 : LNQD1BWP7T port map(EN => n_22, D => data_in(6), Q => mem_1(6));
  mem_reg_9_6 : LNQD1BWP7T port map(EN => n_29, D => data_in(6), Q => mem_9(6));
  mem_reg_10_0 : LNQD1BWP7T port map(EN => n_28, D => data_in(0), Q => mem_10(0));
  mem_reg_15_6 : LNQD1BWP7T port map(EN => n_30, D => data_in(6), Q => mem_15(6));
  mem_reg_15_4 : LNQD1BWP7T port map(EN => n_30, D => data_in(4), Q => mem_15(4));
  mem_reg_5_1 : LNQD1BWP7T port map(EN => n_27, D => data_in(1), Q => mem_5(1));
  mem_reg_10_2 : LNQD1BWP7T port map(EN => n_28, D => data_in(2), Q => mem_10(2));
  mem_reg_0_7 : LNQD1BWP7T port map(EN => n_24, D => data_in(7), Q => mem_0(7));
  mem_reg_8_4 : LNQD1BWP7T port map(EN => n_21, D => data_in(4), Q => mem_8(4));
  mem_reg_8_6 : LNQD1BWP7T port map(EN => n_21, D => data_in(6), Q => mem_8(6));
  mem_reg_9_2 : LNQD1BWP7T port map(EN => n_29, D => data_in(2), Q => mem_9(2));
  mem_reg_10_7 : LNQD1BWP7T port map(EN => n_28, D => data_in(7), Q => mem_10(7));
  mem_reg_2_7 : LNQD1BWP7T port map(EN => n_32, D => data_in(7), Q => mem_2(7));
  mem_reg_6_6 : LNQD1BWP7T port map(EN => n_23, D => data_in(6), Q => mem_6(6));
  mem_reg_12_3 : LNQD1BWP7T port map(EN => n_25, D => data_in(3), Q => mem_12(3));
  mem_reg_10_5 : LNQD1BWP7T port map(EN => n_28, D => data_in(5), Q => mem_10(5));
  mem_reg_14_3 : LNQD1BWP7T port map(EN => n_20, D => data_in(3), Q => mem_14(3));
  mem_reg_6_0 : LNQD1BWP7T port map(EN => n_23, D => data_in(0), Q => mem_6(0));
  mem_reg_12_2 : LNQD1BWP7T port map(EN => n_25, D => data_in(2), Q => mem_12(2));
  mem_reg_1_3 : LNQD1BWP7T port map(EN => n_22, D => data_in(3), Q => mem_1(3));
  mem_reg_14_0 : LNQD1BWP7T port map(EN => n_20, D => data_in(0), Q => mem_14(0));
  mem_reg_4_5 : LNQD1BWP7T port map(EN => n_35, D => data_in(5), Q => mem_4(5));
  mem_reg_13_7 : LNQD1BWP7T port map(EN => n_34, D => data_in(7), Q => mem_13(7));
  mem_reg_3_5 : LNQD1BWP7T port map(EN => n_33, D => data_in(5), Q => mem_3(5));
  mem_reg_14_1 : LNQD1BWP7T port map(EN => n_20, D => data_in(1), Q => mem_14(1));
  mem_reg_2_2 : LNQD1BWP7T port map(EN => n_32, D => data_in(2), Q => mem_2(2));
  mem_reg_12_0 : LNQD1BWP7T port map(EN => n_25, D => data_in(0), Q => mem_12(0));
  mem_reg_7_0 : LNQD1BWP7T port map(EN => n_26, D => data_in(0), Q => mem_7(0));
  mem_reg_0_5 : LNQD1BWP7T port map(EN => n_24, D => data_in(5), Q => mem_0(5));
  mem_reg_15_1 : LNQD1BWP7T port map(EN => n_30, D => data_in(1), Q => mem_15(1));
  mem_reg_4_7 : LNQD1BWP7T port map(EN => n_35, D => data_in(7), Q => mem_4(7));
  mem_reg_10_1 : LNQD1BWP7T port map(EN => n_28, D => data_in(1), Q => mem_10(1));
  mem_reg_15_2 : LNQD1BWP7T port map(EN => n_30, D => data_in(2), Q => mem_15(2));
  mem_reg_15_0 : LNQD1BWP7T port map(EN => n_30, D => data_in(0), Q => mem_15(0));
  mem_reg_1_7 : LNQD1BWP7T port map(EN => n_22, D => data_in(7), Q => mem_1(7));
  mem_reg_8_7 : LNQD1BWP7T port map(EN => n_21, D => data_in(7), Q => mem_8(7));
  mem_reg_0_2 : LNQD1BWP7T port map(EN => n_24, D => data_in(2), Q => mem_0(2));
  mem_reg_11_5 : LNQD1BWP7T port map(EN => n_31, D => data_in(5), Q => mem_11(5));
  mem_reg_2_0 : LNQD1BWP7T port map(EN => n_32, D => data_in(0), Q => mem_2(0));
  mem_reg_1_5 : LNQD1BWP7T port map(EN => n_22, D => data_in(5), Q => mem_1(5));
  mem_reg_9_7 : LNQD1BWP7T port map(EN => n_29, D => data_in(7), Q => mem_9(7));
  mem_reg_14_5 : LNQD1BWP7T port map(EN => n_20, D => data_in(5), Q => mem_14(5));
  mem_reg_6_2 : LNQD1BWP7T port map(EN => n_23, D => data_in(2), Q => mem_6(2));
  mem_reg_8_2 : LNQD1BWP7T port map(EN => n_21, D => data_in(2), Q => mem_8(2));
  mem_reg_14_6 : LNQD1BWP7T port map(EN => n_20, D => data_in(6), Q => mem_14(6));
  mem_reg_17_7 : LNQD1BWP7T port map(EN => n_18, D => data_in(7), Q => mem_17(7));
  mem_reg_19_0 : LNQD1BWP7T port map(EN => n_19, D => data_in(0), Q => mem_19(0));
  mem_reg_16_6 : LNQD1BWP7T port map(EN => n_17, D => data_in(6), Q => mem_16(6));
  mem_reg_19_5 : LNQD1BWP7T port map(EN => n_19, D => data_in(5), Q => mem_19(5));
  mem_reg_17_0 : LNQD1BWP7T port map(EN => n_18, D => data_in(0), Q => mem_17(0));
  mem_reg_19_7 : LNQD1BWP7T port map(EN => n_19, D => data_in(7), Q => mem_19(7));
  mem_reg_16_7 : LNQD1BWP7T port map(EN => n_17, D => data_in(7), Q => mem_16(7));
  mem_reg_17_3 : LNQD1BWP7T port map(EN => n_18, D => data_in(3), Q => mem_17(3));
  mem_reg_19_4 : LNQD1BWP7T port map(EN => n_19, D => data_in(4), Q => mem_19(4));
  mem_reg_18_5 : LNQD1BWP7T port map(EN => n_16, D => data_in(5), Q => mem_18(5));
  mem_reg_19_3 : LNQD1BWP7T port map(EN => n_19, D => data_in(3), Q => mem_19(3));
  mem_reg_18_3 : LNQD1BWP7T port map(EN => n_16, D => data_in(3), Q => mem_18(3));
  mem_reg_16_5 : LNQD1BWP7T port map(EN => n_17, D => data_in(5), Q => mem_16(5));
  mem_reg_18_0 : LNQD1BWP7T port map(EN => n_16, D => data_in(0), Q => mem_18(0));
  mem_reg_18_6 : LNQD1BWP7T port map(EN => n_16, D => data_in(6), Q => mem_18(6));
  mem_reg_19_2 : LNQD1BWP7T port map(EN => n_19, D => data_in(2), Q => mem_19(2));
  mem_reg_16_0 : LNQD1BWP7T port map(EN => n_17, D => data_in(0), Q => mem_16(0));
  mem_reg_16_4 : LNQD1BWP7T port map(EN => n_17, D => data_in(4), Q => mem_16(4));
  mem_reg_18_2 : LNQD1BWP7T port map(EN => n_16, D => data_in(2), Q => mem_18(2));
  mem_reg_17_6 : LNQD1BWP7T port map(EN => n_18, D => data_in(6), Q => mem_17(6));
  mem_reg_18_1 : LNQD1BWP7T port map(EN => n_16, D => data_in(1), Q => mem_18(1));
  mem_reg_19_6 : LNQD1BWP7T port map(EN => n_19, D => data_in(6), Q => mem_19(6));
  mem_reg_19_1 : LNQD1BWP7T port map(EN => n_19, D => data_in(1), Q => mem_19(1));
  mem_reg_16_1 : LNQD1BWP7T port map(EN => n_17, D => data_in(1), Q => mem_16(1));
  mem_reg_18_7 : LNQD1BWP7T port map(EN => n_16, D => data_in(7), Q => mem_18(7));
  mem_reg_17_1 : LNQD1BWP7T port map(EN => n_18, D => data_in(1), Q => mem_17(1));
  mem_reg_17_2 : LNQD1BWP7T port map(EN => n_18, D => data_in(2), Q => mem_17(2));
  mem_reg_18_4 : LNQD1BWP7T port map(EN => n_16, D => data_in(4), Q => mem_18(4));
  mem_reg_17_4 : LNQD1BWP7T port map(EN => n_18, D => data_in(4), Q => mem_17(4));
  mem_reg_16_2 : LNQD1BWP7T port map(EN => n_17, D => data_in(2), Q => mem_16(2));
  mem_reg_16_3 : LNQD1BWP7T port map(EN => n_17, D => data_in(3), Q => mem_16(3));
  mem_reg_17_5 : LNQD1BWP7T port map(EN => n_18, D => data_in(5), Q => mem_17(5));
  g5191 : ND2D0BWP7T port map(A1 => n_119, A2 => write, ZN => n_31);
  g5187 : ND2D0BWP7T port map(A1 => n_95, A2 => write, ZN => n_35);
  g5188 : ND2D0BWP7T port map(A1 => n_123, A2 => write, ZN => n_25);
  g5189 : ND2D0BWP7T port map(A1 => n_121, A2 => write, ZN => n_20);
  g5184 : ND2D0BWP7T port map(A1 => n_125, A2 => write, ZN => n_34);
  g5186 : ND2D0BWP7T port map(A1 => n_128, A2 => write, ZN => n_29);
  g5190 : ND2D0BWP7T port map(A1 => n_92, A2 => write, ZN => n_28);
  g5176 : ND2D0BWP7T port map(A1 => n_109, A2 => write, ZN => n_26);
  g5177 : ND2D0BWP7T port map(A1 => n_117, A2 => write, ZN => n_22);
  g5172 : ND2D0BWP7T port map(A1 => n_107, A2 => write, ZN => n_33);
  g5173 : ND2D0BWP7T port map(A1 => n_113, A2 => write, ZN => n_23);
  g5175 : ND2D0BWP7T port map(A1 => n_99, A2 => write, ZN => n_30);
  g5174 : ND2D0BWP7T port map(A1 => n_111, A2 => write, ZN => n_27);
  g5179 : ND2D0BWP7T port map(A1 => n_129, A2 => write, ZN => n_24);
  g5180 : ND2D0BWP7T port map(A1 => n_115, A2 => write, ZN => n_21);
  g5181 : ND2D0BWP7T port map(A1 => n_131, A2 => write, ZN => n_32);
  g5185 : ND2D0BWP7T port map(A1 => n_53, A2 => write, ZN => n_16);
  g5182 : ND2D0BWP7T port map(A1 => n_49, A2 => write, ZN => n_18);
  g5183 : ND2D0BWP7T port map(A1 => n_47, A2 => write, ZN => n_19);
  g5178 : ND2D0BWP7T port map(A1 => n_51, A2 => write, ZN => n_17);
  g5200 : NR2D0BWP7T port map(A1 => n_15, A2 => n_14, ZN => n_99);
  g5207 : NR2D0BWP7T port map(A1 => n_15, A2 => n_12, ZN => n_128);
  g5193 : AN2D1BWP7T port map(A1 => n_11, A2 => n_0, Z => n_115);
  g5194 : NR2D0BWP7T port map(A1 => n_13, A2 => n_14, ZN => n_109);
  g5198 : NR2D0BWP7T port map(A1 => n_13, A2 => n_12, ZN => n_117);
  g5202 : NR2D0BWP7T port map(A1 => n_13, A2 => n_10, ZN => n_111);
  g5197 : INR2D0BWP7T port map(A1 => n_11, B1 => n_14, ZN => n_121);
  g5209 : NR2D0BWP7T port map(A1 => n_15, A2 => n_10, ZN => n_125);
  g5210 : NR2D0BWP7T port map(A1 => n_9, A2 => n_8, ZN => n_131);
  g5192 : NR2D0BWP7T port map(A1 => n_9, A2 => n_14, ZN => n_113);
  g5205 : INR2D0BWP7T port map(A1 => n_11, B1 => n_10, ZN => n_123);
  g5206 : NR2D0BWP7T port map(A1 => n_9, A2 => n_12, ZN => n_129);
  g5211 : NR2D0BWP7T port map(A1 => n_9, A2 => n_10, ZN => n_95);
  g5203 : INR2D0BWP7T port map(A1 => n_11, B1 => n_8, ZN => n_92);
  g5196 : NR2D0BWP7T port map(A1 => n_13, A2 => n_8, ZN => n_107);
  g5208 : NR2D0BWP7T port map(A1 => n_15, A2 => n_8, ZN => n_119);
  g5204 : INR2D0BWP7T port map(A1 => n_6, B1 => address(0), ZN => n_51);
  g5199 : INR2D0BWP7T port map(A1 => n_7, B1 => address(0), ZN => n_53);
  g5201 : AN2D1BWP7T port map(A1 => n_7, A2 => address(0), Z => n_47);
  g5195 : AN2D1BWP7T port map(A1 => n_6, A2 => address(0), Z => n_49);
  g5213 : NR2D0BWP7T port map(A1 => n_4, A2 => address(0), ZN => n_11);
  g5217 : ND2D0BWP7T port map(A1 => n_5, A2 => address(0), ZN => n_13);
  g5214 : IND2D0BWP7T port map(A1 => address(0), B1 => n_5, ZN => n_9);
  g5212 : IND2D0BWP7T port map(A1 => n_4, B1 => address(0), ZN => n_15);
  g5216 : NR2D0BWP7T port map(A1 => n_3, A2 => n_12, ZN => n_6);
  g5215 : NR2D0BWP7T port map(A1 => n_3, A2 => n_8, ZN => n_7);
  g5219 : IND2D0BWP7T port map(A1 => n_2, B1 => address(3), ZN => n_4);
  g5218 : NR2D0BWP7T port map(A1 => n_2, A2 => address(3), ZN => n_5);
  g5220 : IND3D0BWP7T port map(A1 => address(3), B1 => address(4), B2 => n_1, ZN => n_3);
  g5221 : IND2D0BWP7T port map(A1 => address(4), B1 => n_1, ZN => n_2);
  g5222 : NR3D0BWP7T port map(A1 => address(5), A2 => address(6), A3 => address(7), ZN => n_1);
  g5225 : INVD0BWP7T port map(I => n_0, ZN => n_12);
  g5223 : IND2D0BWP7T port map(A1 => address(1), B1 => address(2), ZN => n_10);
  g5226 : IND2D0BWP7T port map(A1 => address(2), B1 => address(1), ZN => n_8);
  g5227 : NR2D0BWP7T port map(A1 => address(1), A2 => address(2), ZN => n_0);
  g5224 : ND2D0BWP7T port map(A1 => address(1), A2 => address(2), ZN => n_14);

end synthesised;
