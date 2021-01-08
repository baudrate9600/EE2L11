
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of sqi_controller is

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component LHQD1BWP7T
    port(E, D : in std_logic; Q : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component LND1BWP7T
    port(EN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component EDFCNQD1BWP7T
    port(CDN, CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component DFSND1BWP7T
    port(SDN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal state : std_logic_vector(2 downto 0);
  signal new_state : std_logic_vector(2 downto 0);
  signal SHIFT_nLOAD, UNCONNECTED, n_0, n_1, n_2 : std_logic;
  signal n_3, n_4, n_5, n_6, n_7 : std_logic;
  signal n_8, n_9, n_10, n_11, n_12 : std_logic;
  signal n_13, n_14, n_15, n_16, n_17 : std_logic;
  signal n_18, n_19, n_20, n_21, n_22 : std_logic;
  signal n_23, n_24, n_25, n_26, n_27 : std_logic;
  signal n_28, n_29, n_30, n_31, n_32 : std_logic;
  signal n_33, n_34, n_35, n_36, n_37 : std_logic;
  signal n_38, n_39, n_40, n_41, n_42 : std_logic;
  signal n_43, n_44, n_45, n_46, n_47 : std_logic;
  signal n_48, n_49, n_50, n_51, n_52 : std_logic;
  signal n_53, n_54, n_55, n_56, n_57 : std_logic;
  signal n_58, n_59, n_60, n_61, n_62 : std_logic;
  signal n_63, n_64, n_65, n_66, n_67 : std_logic;
  signal n_69, n_70, n_75, n_76, n_77 : std_logic;
  signal n_124, n_125 : std_logic;

begin

  count_out(0) <= count_load;
  count_out(1) <= count_load;
  count_out(2) <= count_load;
  count_out(3) <= count_load;
  g1237 : INVD4BWP7T port map(I => count_reset, ZN => count_en);
  g1238 : INVD0BWP7T port map(I => cs, ZN => n_70);
  g1239 : BUFFD4BWP7T port map(I => reset, Z => shift_reset);
  g1266 : AN2D4BWP7T port map(A1 => n_69, A2 => n_13, Z => cs);
  g1267 : IND2D1BWP7T port map(A1 => state(2), B1 => n_69, ZN => n_77);
  g1268 : ND2D1BWP7T port map(A1 => n_69, A2 => state(2), ZN => n_76);
  g1269 : INR2XD0BWP7T port map(A1 => state(0), B1 => state(1), ZN => n_69);
  new_state_reg_0 : LHQD1BWP7T port map(E => n_19, D => n_67, Q => new_state(0));
  g3128 : MOAI22D0BWP7T port map(A1 => n_66, A2 => n_16, B1 => n_24, B2 => n_29, ZN => n_67);
  g3129 : AOI211D0BWP7T port map(A1 => n_52, A2 => count_in(0), B => n_18, C => state(0), ZN => n_66);
  new_state_reg_2 : LHQD1BWP7T port map(E => n_19, D => n_65, Q => new_state(2));
  new_state_reg_1 : LHQD1BWP7T port map(E => n_19, D => n_64, Q => new_state(1));
  g3132 : ND2D4BWP7T port map(A1 => n_63, A2 => n_15, ZN => data_out(5));
  g3133 : ND2D4BWP7T port map(A1 => n_61, A2 => n_46, ZN => data_out(1));
  g3134 : ND2D4BWP7T port map(A1 => n_62, A2 => n_49, ZN => data_out(2));
  g3135 : ND2D4BWP7T port map(A1 => n_59, A2 => n_50, ZN => data_out(4));
  g3136 : ND2D4BWP7T port map(A1 => n_60, A2 => n_45, ZN => data_out(0));
  g3137 : AO21D0BWP7T port map(A1 => n_43, A2 => count_in(2), B => n_75, Z => n_65);
  g3138 : OR2D4BWP7T port map(A1 => n_55, A2 => done, Z => new_data);
  g3139 : AO21D0BWP7T port map(A1 => n_41, A2 => n_125, B => n_16, Z => n_64);
  g3140 : ND2D4BWP7T port map(A1 => n_53, A2 => n_33, ZN => MOSI(0));
  g3141 : ND2D4BWP7T port map(A1 => n_54, A2 => n_58, ZN => data_out(6));
  g3142 : ND2D4BWP7T port map(A1 => n_51, A2 => n_57, ZN => data_out(7));
  g3143 : AOI222D0BWP7T port map(A1 => n_44, A2 => data_in(1), B1 => n_40, B2 => address(1), C1 => n_37, C2 => address(9), ZN => n_63);
  g3144 : ND2D4BWP7T port map(A1 => n_56, A2 => n_48, ZN => data_out(3));
  g3145 : AOI22D0BWP7T port map(A1 => n_40, A2 => address(6), B1 => n_44, B2 => data_in(6), ZN => n_62);
  g3146 : AOI22D0BWP7T port map(A1 => n_37, A2 => address(13), B1 => n_44, B2 => data_in(5), ZN => n_61);
  g3147 : AOI22D0BWP7T port map(A1 => n_37, A2 => address(12), B1 => n_44, B2 => data_in(4), ZN => n_60);
  g3148 : AOI22D0BWP7T port map(A1 => n_44, A2 => data_in(0), B1 => done, B2 => RW, ZN => n_59);
  g3149 : ND2D1BWP7T port map(A1 => n_44, A2 => data_in(2), ZN => n_58);
  g3150 : ND2D1BWP7T port map(A1 => n_44, A2 => data_in(3), ZN => n_57);
  g3151 : ND2D1BWP7T port map(A1 => n_44, A2 => data_in(7), ZN => n_56);
  g3152 : NR3D0BWP7T port map(A1 => n_35, A2 => reset, A3 => n_12, ZN => n_55);
  g3153 : AOI22D0BWP7T port map(A1 => n_40, A2 => address(2), B1 => n_37, B2 => address(10), ZN => n_54);
  g3154 : OAI211D1BWP7T port map(A1 => n_26, A2 => n_34, B => n_24, C => n_13, ZN => n_53);
  g3155 : OAI21D0BWP7T port map(A1 => n_27, A2 => count_in(2), B => n_42, ZN => n_52);
  g3156 : AOI22D0BWP7T port map(A1 => n_40, A2 => address(3), B1 => n_37, B2 => address(11), ZN => n_51);
  g3157 : AOI22D0BWP7T port map(A1 => n_40, A2 => address(0), B1 => n_37, B2 => address(8), ZN => n_50);
  g3158 : ND2D1BWP7T port map(A1 => n_37, A2 => address(14), ZN => n_49);
  g3159 : ND2D1BWP7T port map(A1 => n_40, A2 => address(7), ZN => n_48);
  high_z_reg : LND1BWP7T port map(EN => n_31, D => n_36, Q => UNCONNECTED, QN => n_47);
  g3161 : INVD4BWP7T port map(I => n_47, ZN => high_z);
  g3162 : ND2D1BWP7T port map(A1 => n_40, A2 => address(5), ZN => n_46);
  g3163 : ND2D1BWP7T port map(A1 => n_40, A2 => address(4), ZN => n_45);
  g3164 : INR3D0BWP7T port map(A1 => n_125, B1 => count_in(0), B2 => n_30, ZN => n_43);
  g3165 : ND4D0BWP7T port map(A1 => state(2), A2 => n_21, A3 => count_in(3), A4 => count_in(1), ZN => n_42);
  g3166 : ND2D4BWP7T port map(A1 => n_39, A2 => n_32, ZN => reg_shift);
  g3167 : ND2D4BWP7T port map(A1 => n_38, A2 => n_15, ZN => reg_load);
  g3168 : AO221D0BWP7T port map(A1 => n_30, A2 => count_in(2), B1 => n_23, B2 => n_12, C => n_22, Z => n_41);
  g3169 : AN3D1BWP7T port map(A1 => n_28, A2 => n_17, A3 => count_in(2), Z => n_44);
  g3170 : ND2D1BWP7T port map(A1 => n_28, A2 => SHIFT_nLOAD, ZN => n_39);
  g3171 : ND2D1BWP7T port map(A1 => n_28, A2 => n_124, ZN => n_38);
  g3172 : AN2D1BWP7T port map(A1 => n_28, A2 => n_25, Z => n_40);
  g3173 : NR2D0BWP7T port map(A1 => n_29, A2 => reset, ZN => n_36);
  g3174 : ND3D0BWP7T port map(A1 => n_75, A2 => count_in(3), A3 => count_in(0), ZN => n_35);
  g3175 : AN2D1BWP7T port map(A1 => n_28, A2 => n_26, Z => n_37);
  g3176 : INR2XD0BWP7T port map(A1 => n_25, B1 => count_in(0), ZN => n_34);
  g3177 : IND2D1BWP7T port map(A1 => n_24, B1 => shift_in(0), ZN => n_33);
  g3178 : ND2D1BWP7T port map(A1 => n_75, A2 => n_13, ZN => n_32);
  g3179 : NR2D0BWP7T port map(A1 => n_75, A2 => reset, ZN => n_31);
  g3180 : IND3D0BWP7T port map(A1 => RW, B1 => n_20, B2 => state(1), ZN => n_27);
  g3181 : IND3D0BWP7T port map(A1 => state(0), B1 => RW, B2 => n_17, ZN => n_30);
  g3182 : AN3D0BWP7T port map(A1 => n_17, A2 => count_in(2), A3 => count_in(0), Z => n_29);
  g3183 : INR3D0BWP7T port map(A1 => n_125, B1 => reset, B2 => state(0), ZN => n_28);
  g3184 : AN2D1BWP7T port map(A1 => n_17, A2 => n_12, Z => n_26);
  g3185 : NR3D0BWP7T port map(A1 => count_in(1), A2 => count_in(3), A3 => n_12, ZN => n_25);
  g3186 : NR3D0BWP7T port map(A1 => state(1), A2 => state(0), A3 => state(2), ZN => n_24);
  g3187 : OAI21D0BWP7T port map(A1 => state(0), A2 => count_in(0), B => n_20, ZN => n_23);
  g3188 : OA21D0BWP7T port map(A1 => state(0), A2 => RW, B => count_in(0), Z => n_22);
  g3189 : MOAI22D0BWP7T port map(A1 => n_12, A2 => single, B1 => n_12, B2 => single, ZN => n_21);
  g3191 : CKND1BWP7T port map(I => n_19, ZN => n_18);
  g3192 : INR2D0BWP7T port map(A1 => count_in(3), B1 => count_in(1), ZN => n_20);
  g3193 : INR2D1BWP7T port map(A1 => state(1), B1 => state(2), ZN => n_125);
  g3194 : ND2D0BWP7T port map(A1 => state(2), A2 => state(1), ZN => n_19);
  g3195 : INR2D1BWP7T port map(A1 => count_in(1), B1 => count_in(3), ZN => n_17);
  g3196 : INVD1BWP7T port map(I => done, ZN => n_15);
  g3197 : ND2D4BWP7T port map(A1 => clk, A2 => n_70, ZN => sck);
  g3198 : ND2D4BWP7T port map(A1 => n_77, A2 => n_13, ZN => count_reset);
  g3199 : INR2D0BWP7T port map(A1 => en, B1 => n_77, ZN => n_16);
  g3200 : AN2D4BWP7T port map(A1 => n_14, A2 => n_13, Z => done);
  g3201 : INVD0BWP7T port map(I => n_77, ZN => n_14);
  g3204 : INVD1BWP7T port map(I => reset, ZN => n_13);
  g3205 : INVD1BWP7T port map(I => count_in(2), ZN => n_12);
  g2 : INR3D0BWP7T port map(A1 => state(2), B1 => state(0), B2 => state(1), ZN => n_75);
  data_read_reg_6 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(4), E => n_3, Q => n_10);
  data_read_reg_1 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(3), E => n_3, Q => n_5);
  data_read_reg_0 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(1), E => n_3, Q => n_4);
  data_read_reg_7 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(6), E => n_3, Q => n_11);
  data_read_reg_4 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(0), E => n_3, Q => n_8);
  data_read_reg_3 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(7), E => n_3, Q => n_7);
  data_read_reg_2 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(5), E => n_3, Q => n_6);
  data_read_reg_5 : EDFCNQD1BWP7T port map(CDN => n_0, CP => clk, D => shift_data_in(2), E => n_3, Q => n_9);
  g3206 : ND2D1BWP7T port map(A1 => n_2, A2 => n_76, ZN => n_3);
  state_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => new_state(0), D => n_0, Q => state(0));
  state_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => new_state(1), D => n_0, Q => state(1));
  state_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => new_state(2), D => n_0, Q => state(2));
  g1273 : IND4D0BWP7T port map(A1 => count_in(0), B1 => count_in(3), B2 => count_in(2), B3 => n_75, ZN => n_2);
  g1274 : IND2D1BWP7T port map(A1 => n_124, B1 => n_125, ZN => n_1);
  g1275 : INVD1BWP7T port map(I => shift_reset, ZN => n_0);
  drc_bufs : BUFFD4BWP7T port map(I => n_11, Z => data_read(7));
  drc_bufs1276 : BUFFD4BWP7T port map(I => n_4, Z => data_read(0));
  drc_bufs1277 : BUFFD4BWP7T port map(I => n_5, Z => data_read(1));
  drc_bufs1278 : BUFFD4BWP7T port map(I => n_6, Z => data_read(2));
  drc_bufs1279 : BUFFD4BWP7T port map(I => n_7, Z => data_read(3));
  drc_bufs1280 : BUFFD4BWP7T port map(I => n_8, Z => data_read(4));
  drc_bufs1281 : BUFFD4BWP7T port map(I => n_9, Z => data_read(5));
  drc_bufs1282 : BUFFD4BWP7T port map(I => n_10, Z => data_read(6));
  drc_bufs3207 : BUFFD4BWP7T port map(I => shift_in(3), Z => MOSI(3));
  drc_bufs3210 : BUFFD4BWP7T port map(I => shift_in(1), Z => MOSI(1));
  drc_bufs3213 : BUFFD4BWP7T port map(I => shift_in(2), Z => MOSI(2));
  SHIFT_nLOAD_reg : DFSND1BWP7T port map(SDN => n_0, CP => clk, D => n_1, Q => SHIFT_nLOAD, QN => n_124);
  tie_0_cell : TIELBWP7T port map(ZN => count_load);

end synthesised;
