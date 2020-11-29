
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of sqi is

  component CKBD1BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL2BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD6BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD12BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component LHQD1BWP7T
    port(D, E : in std_logic; Q : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CN, CP, D : in std_logic; Q : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component HA1D0BWP7T
    port(A, B : in std_logic; CO, S : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
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

  component INVD5BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal FE_PHN14_n_62, FE_PHN13_counter_2, FE_PHN12_n_19, FE_PHN11_n_62, FE_PHN10_n_62 : std_logic;
  signal FE_PHN9_n_62, FE_PHN8_n_62, FE_PHN7_n_62, FE_PHN6_n_62, FE_PHN5_n_62 : std_logic;
  signal FE_PHN4_n_62, FE_PHN3_n_62, FE_PHN2_n_62, FE_PHN1_n_62, FE_OFN0_cs : std_logic;
  signal CTS_11, CTS_10, CTS_1 : std_logic;
  signal state : std_logic_vector(1 downto 0);
  signal rom_address : std_logic_vector(1 downto 0);
  signal DFF : std_logic_vector(7 downto 0);
  signal counter : std_logic_vector(3 downto 0);
  signal load_reg, n_0, n_1, n_2, n_3 : std_logic;
  signal n_4, n_5, n_6, n_7, n_8 : std_logic;
  signal n_9, n_10, n_11, n_12, n_13 : std_logic;
  signal n_14, n_15, n_16, n_17, n_18 : std_logic;
  signal n_19, n_20, n_21, n_22, n_23 : std_logic;
  signal n_24, n_25, n_26, n_27, n_28 : std_logic;
  signal n_29, n_30, n_31, n_32, n_33 : std_logic;
  signal n_34, n_35, n_36, n_37, n_38 : std_logic;
  signal n_39, n_40, n_41, n_42, n_43 : std_logic;
  signal n_44, n_45, n_46, n_47, n_48 : std_logic;
  signal n_49, n_50, n_51, n_52, n_53 : std_logic;
  signal n_54, n_55, n_56, n_57, n_58 : std_logic;
  signal n_59, n_60, n_61, n_62, n_64 : std_logic;
  signal n_65, shift_reg : std_logic;

begin

  FE_PHC14_n_62 : CKBD1BWP7T port map(I => n_62, Z => FE_PHN14_n_62);
  FE_PHC13_counter_2 : DEL01BWP7T port map(I => counter(2), Z => FE_PHN13_counter_2);
  FE_PHC12_n_19 : DEL01BWP7T port map(I => FE_PHN12_n_19, Z => n_19);
  FE_PHC11_n_62 : CKBD1BWP7T port map(I => FE_PHN14_n_62, Z => FE_PHN11_n_62);
  FE_PHC10_n_62 : CKBD1BWP7T port map(I => FE_PHN9_n_62, Z => FE_PHN10_n_62);
  FE_PHC9_n_62 : CKBD0BWP7T port map(I => FE_PHN8_n_62, Z => FE_PHN9_n_62);
  FE_PHC8_n_62 : CKBD1BWP7T port map(I => FE_PHN7_n_62, Z => FE_PHN8_n_62);
  FE_PHC7_n_62 : DEL2BWP7T port map(I => FE_PHN6_n_62, Z => FE_PHN7_n_62);
  FE_PHC6_n_62 : DEL4BWP7T port map(I => FE_PHN3_n_62, Z => FE_PHN6_n_62);
  FE_PHC5_n_62 : DEL4BWP7T port map(I => FE_PHN2_n_62, Z => FE_PHN5_n_62);
  FE_PHC4_n_62 : DEL4BWP7T port map(I => FE_PHN1_n_62, Z => FE_PHN4_n_62);
  FE_PHC3_n_62 : DEL4BWP7T port map(I => FE_PHN5_n_62, Z => FE_PHN3_n_62);
  FE_PHC2_n_62 : DEL4BWP7T port map(I => FE_PHN4_n_62, Z => FE_PHN2_n_62);
  FE_PHC1_n_62 : DEL4BWP7T port map(I => FE_PHN11_n_62, Z => FE_PHN1_n_62);
  FE_OFC0_cs : BUFFD5BWP7T port map(I => FE_OFN0_cs, Z => cs);
  CTS_ccl_a_BUF_clk_G0_L2_1 : CKBD6BWP7T port map(I => CTS_11, Z => CTS_10);
  CTS_ccl_a_BUF_clk_G0_L3_1 : CKBD12BWP7T port map(I => CTS_1, Z => SCK);
  CTS_ccl_BUF_clk_G0_L1_1 : CKBD4BWP7T port map(I => clk, Z => CTS_11);
  g441 : INVD1BWP7T port map(I => cs, ZN => n_62);
  g442 : INVD0BWP7T port map(I => RW, ZN => n_61);
  g444 : NR2XD0BWP7T port map(A1 => state(1), A2 => state(0), ZN => FE_OFN0_cs);
  load_reg_reg : LNQD1BWP7T port map(D => n_58, EN => n_60, Q => load_reg);
  shift_reg_reg : LHQD1BWP7T port map(D => state(0), E => n_59, Q => shift_reg);
  g459 : NR2D0BWP7T port map(A1 => n_59, A2 => cs, ZN => n_60);
  g460 : INVD0BWP7T port map(I => n_65, ZN => n_58);
  g461 : AO21D0BWP7T port map(A1 => n_64, A2 => state(1), B => n_65, Z => n_59);
  rom_address_reg_0 : LHQD1BWP7T port map(D => n_61, E => cs, Q => rom_address(0));
  g463 : CKND2D1BWP7T port map(A1 => CTS_11, A2 => FE_PHN10_n_62, ZN => CTS_1);
  g464 : NR2XD0BWP7T port map(A1 => n_64, A2 => state(1), ZN => n_65);
  DFF_reg_7 : DFQD1BWP7T port map(CP => CTS_10, D => n_53, Q => DFF(7));
  DFF_reg_1 : DFQD1BWP7T port map(CP => CTS_10, D => n_47, Q => DFF(1));
  DFF_reg_5 : DFQD1BWP7T port map(CP => CTS_10, D => n_51, Q => DFF(5));
  counter_reg_3 : DFKCNQD1BWP7T port map(CN => n_6, CP => CTS_10, D => n_38, Q => counter(3));
  g1166 : ND2D1BWP7T port map(A1 => n_46, A2 => n_10, ZN => n_53);
  g1167 : ND2D1BWP7T port map(A1 => n_40, A2 => n_37, ZN => n_52);
  DFF_reg_3 : DFQD1BWP7T port map(CP => CTS_10, D => n_44, Q => DFF(3));
  g1170 : ND2D1BWP7T port map(A1 => n_42, A2 => n_31, ZN => n_51);
  g1171 : ND2D1BWP7T port map(A1 => n_41, A2 => n_34, ZN => n_50);
  g1172 : ND2D1BWP7T port map(A1 => n_43, A2 => n_32, ZN => n_49);
  g1173 : ND2D1BWP7T port map(A1 => n_45, A2 => n_30, ZN => n_48);
  g1174 : ND3D0BWP7T port map(A1 => n_35, A2 => n_36, A3 => n_18, ZN => n_47);
  g1175 : AOI222D0BWP7T port map(A1 => n_23, A2 => data_in(7), B1 => DFF(7), B2 => n_7, C1 => n_22, C2 => address(7), ZN => n_46);
  g1176 : AOI222D0BWP7T port map(A1 => n_24, A2 => address(11), B1 => n_23, B2 => data_in(3), C1 => n_57, C2 => n_12, ZN => n_45);
  g1177 : OAI211D1BWP7T port map(A1 => n_20, A2 => FE_PHN13_counter_2, B => n_28, C => n_33, ZN => n_44);
  g1178 : AOI222D0BWP7T port map(A1 => n_23, A2 => data_in(1), B1 => MOSI(1), B2 => n_12, C1 => n_22, C2 => address(1), ZN => n_43);
  g1179 : AOI222D0BWP7T port map(A1 => n_23, A2 => data_in(6), B1 => MOSI(3), B2 => n_11, C1 => n_22, C2 => address(6), ZN => n_42);
  g1180 : AOI222D0BWP7T port map(A1 => n_23, A2 => data_in(2), B1 => DFF(5), B2 => n_11, C1 => n_22, C2 => address(2), ZN => n_41);
  g1181 : AOI222D0BWP7T port map(A1 => n_24, A2 => address(8), B1 => n_23, B2 => data_in(0), C1 => n_54, C2 => n_12, ZN => n_40);
  g1182 : OAI32D1BWP7T port map(A1 => reset, A2 => n_4, A3 => n_27, B1 => n_16, B2 => n_13, ZN => n_39);
  g1183 : MOAI22D0BWP7T port map(A1 => n_29, A2 => counter(3), B1 => n_29, B2 => counter(3), ZN => n_38);
  g1184 : AOI22D0BWP7T port map(A1 => n_22, A2 => address(0), B1 => DFF(1), B2 => n_11, ZN => n_37);
  g1185 : AOI22D0BWP7T port map(A1 => n_4, A2 => n_25, B1 => n_24, B2 => address(12), ZN => n_36);
  g1186 : AOI22D0BWP7T port map(A1 => n_23, A2 => data_in(4), B1 => n_22, B2 => address(4), ZN => n_35);
  counter_reg_1 : DFKCNQD1BWP7T port map(CN => n_6, CP => CTS_10, D => n_26, Q => counter(1));
  g1188 : AOI22D0BWP7T port map(A1 => n_24, A2 => address(10), B1 => n_56, B2 => n_12, ZN => n_34);
  g1189 : AOI22D0BWP7T port map(A1 => n_22, A2 => address(5), B1 => DFF(3), B2 => n_12, ZN => n_33);
  g1190 : AOI22D0BWP7T port map(A1 => n_24, A2 => address(9), B1 => DFF(3), B2 => n_11, ZN => n_32);
  g1191 : AOI22D0BWP7T port map(A1 => n_24, A2 => address(14), B1 => DFF(5), B2 => n_12, ZN => n_31);
  g1192 : AOI22D0BWP7T port map(A1 => n_22, A2 => address(3), B1 => DFF(7), B2 => n_11, ZN => n_30);
  g1193 : ND2D1BWP7T port map(A1 => n_27, A2 => counter(2), ZN => n_29);
  g1194 : AOI22D0BWP7T port map(A1 => n_9, A2 => n_21, B1 => MOSI(2), B2 => n_11, ZN => n_28);
  g1195 : HA1D0BWP7T port map(A => counter(1), B => n_8, CO => n_27, S => n_26);
  g1197 : INR2D1BWP7T port map(A1 => n_21, B1 => rom_address(0), ZN => n_25);
  g1199 : AN3D1BWP7T port map(A1 => n_4, A2 => counter(1), A3 => n_17, Z => n_24);
  g1200 : INR2D1BWP7T port map(A1 => n_21, B1 => n_4, ZN => n_23);
  g1201 : NR3D0BWP7T port map(A1 => n_16, A2 => counter(3), A3 => n_7, ZN => n_22);
  g1202 : ND2D1BWP7T port map(A1 => n_17, A2 => address(13), ZN => n_20);
  g1203 : INR2D1BWP7T port map(A1 => n_17, B1 => counter(1), ZN => n_21);
  g1204 : OAI32D1BWP7T port map(A1 => reset, A2 => n_5, A3 => n_65, B1 => counter(0), B2 => n_13, ZN => FE_PHN12_n_19);
  g1205 : AOI22D0BWP7T port map(A1 => DFF(1), A2 => n_12, B1 => n_55, B2 => n_11, ZN => n_18);
  state_reg_1 : DFQD1BWP7T port map(CP => CTS_10, D => n_14, Q => state(1));
  g1207 : NR3D0BWP7T port map(A1 => counter(0), A2 => counter(3), A3 => n_7, ZN => n_17);
  g1208 : OA21D0BWP7T port map(A1 => state(1), A2 => en, B => n_64, Z => n_15);
  g1209 : ND3D0BWP7T port map(A1 => n_4, A2 => counter(0), A3 => counter(1), ZN => n_16);
  g1210 : INVD0BWP7T port map(I => n_13, ZN => n_14);
  g1211 : ND2D1BWP7T port map(A1 => n_65, A2 => n_6, ZN => n_13);
  g1212 : NR2D0BWP7T port map(A1 => load_reg, A2 => shift_reg, ZN => n_12);
  g1213 : INVD1BWP7T port map(I => n_10, ZN => n_11);
  g1214 : IND2D1BWP7T port map(A1 => data_in(5), B1 => counter(2), ZN => n_9);
  g1215 : CKAN2D1BWP7T port map(A1 => n_65, A2 => counter(0), Z => n_8);
  g1216 : ND2D0BWP7T port map(A1 => n_7, A2 => shift_reg, ZN => n_10);
  g1217 : INVD1BWP7T port map(I => load_reg, ZN => n_7);
  g1218 : INVD1BWP7T port map(I => reset, ZN => n_6);
  drc_bufs : INVD5BWP7T port map(I => n_3, ZN => MOSI(2));
  drc_bufs1225 : INVD5BWP7T port map(I => n_2, ZN => MOSI(1));
  drc_bufs1228 : INVD5BWP7T port map(I => n_1, ZN => MOSI(3));
  drc_bufs1233 : INVD5BWP7T port map(I => n_0, ZN => MOSI(0));
  state_reg_0 : DFKCND1BWP7T port map(CN => n_6, CP => CTS_10, D => n_15, Q => state(0), QN => n_64);
  counter_reg_0 : DFD1BWP7T port map(CP => CTS_10, D => n_19, Q => counter(0), QN => n_5);
  counter_reg_2 : DFD1BWP7T port map(CP => CTS_10, D => n_39, Q => counter(2), QN => n_4);
  DFF_reg_4 : DFD1BWP7T port map(CP => CTS_10, D => n_50, Q => n_56, QN => n_3);
  DFF_reg_2 : DFD1BWP7T port map(CP => CTS_10, D => n_49, Q => n_55, QN => n_2);
  DFF_reg_6 : DFD1BWP7T port map(CP => CTS_10, D => n_48, Q => n_57, QN => n_1);
  DFF_reg_0 : DFD1BWP7T port map(CP => CTS_10, D => n_52, Q => n_54, QN => n_0);

end routed;
