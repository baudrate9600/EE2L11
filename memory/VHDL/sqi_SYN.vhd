
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of sqi is

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

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component DFNCND0BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component DFNCND1BWP7T
    port(CDN, CPN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IIND4D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal data_read_in : std_logic_vector(7 downto 0);
  signal data_wire : std_logic_vector(7 downto 0);
  signal count_out : std_logic_vector(3 downto 0);
  signal u2_state : std_logic_vector(2 downto 0);
  signal count_en, count_reset, load_reg, n_0, n_1 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_7, n_8, n_9, n_10, n_11 : std_logic;
  signal n_12, n_13, n_14, shift_clk, shift_reg : std_logic;
  signal u0_n_0, u0_n_1, u0_n_2, u0_n_3, u0_n_4 : std_logic;
  signal u0_n_5, u0_n_6, u0_n_7, u2_SHIFT_nLOAD, u2_n_0 : std_logic;
  signal u2_n_1, u2_n_2, u2_n_3, u2_n_4, u2_n_5 : std_logic;
  signal u2_n_6, u2_n_7, u2_n_8, u2_n_9, u2_n_12 : std_logic;
  signal u2_n_13, u2_n_14, u2_n_15, u2_n_16, u2_n_17 : std_logic;
  signal u2_n_18, u2_n_20, u2_n_21, u2_n_22, u2_n_23 : std_logic;
  signal u2_n_24, u2_n_25, u2_n_26, u2_n_27, u2_n_28 : std_logic;
  signal u2_n_29, u2_n_30, u2_n_31, u2_n_32, u2_n_33 : std_logic;
  signal u2_n_34, u2_n_35, u2_n_36, u2_n_37, u2_n_38 : std_logic;
  signal u2_n_39, u2_n_40, u2_n_41, u2_n_42, u2_n_43 : std_logic;
  signal u2_n_44, u2_n_45, u2_n_46, u2_n_47, u2_n_48 : std_logic;
  signal u2_n_49, u2_n_50, u2_n_51, u2_n_52, u2_n_53 : std_logic;
  signal u2_n_54, u2_n_55, u2_n_56, u2_n_57, u2_n_58 : std_logic;
  signal u2_n_59, u2_n_60, u2_n_61, u2_n_62, u2_n_63 : std_logic;
  signal u2_n_64, u2_n_65, u2_n_66, u2_n_67, u2_n_68 : std_logic;
  signal u2_n_69, u2_n_70, u2_n_71, u2_n_72, u2_n_73 : std_logic;
  signal u2_n_74, u2_n_75, u2_n_76, u2_n_77, u2_n_78 : std_logic;
  signal u2_n_79, u2_n_80, u2_n_81, u2_n_83, u2_n_84 : std_logic;
  signal u2_n_85, u2_n_87, u2_n_88, u2_n_89, u2_n_90 : std_logic;
  signal u2_n_136, u2_n_143, u2_n_144, u2_n_293_BAR : std_logic;

begin

  u1_reg_reg_0 : DFQD1BWP7T port map(CP => shift_clk, D => n_9, Q => data_read_in(0));
  u1_reg_reg_6 : DFQD1BWP7T port map(CP => shift_clk, D => n_11, Q => data_read_in(6));
  u1_reg_reg_5 : DFQD1BWP7T port map(CP => shift_clk, D => n_5, Q => data_read_in(5));
  u1_reg_reg_1 : DFQD1BWP7T port map(CP => shift_clk, D => n_10, Q => data_read_in(1));
  u1_reg_reg_7 : DFQD1BWP7T port map(CP => shift_clk, D => n_12, Q => data_read_in(7));
  u1_reg_reg_3 : DFQD1BWP7T port map(CP => shift_clk, D => n_7, Q => data_read_in(3));
  g504 : AO222D0BWP7T port map(A1 => n_4, A2 => MISO(3), B1 => n_3, B2 => data_read_in(7), C1 => data_wire(7), C2 => n_2, Z => n_12);
  g505 : AO222D0BWP7T port map(A1 => n_4, A2 => data_read_in(7), B1 => n_3, B2 => data_read_in(6), C1 => data_wire(3), C2 => n_2, Z => n_11);
  g506 : AO222D0BWP7T port map(A1 => n_4, A2 => MISO(0), B1 => n_3, B2 => data_read_in(1), C1 => data_wire(4), C2 => n_2, Z => n_10);
  g507 : AO222D0BWP7T port map(A1 => n_4, A2 => data_read_in(1), B1 => n_3, B2 => data_read_in(0), C1 => data_wire(0), C2 => n_2, Z => n_9);
  g508 : AO222D0BWP7T port map(A1 => n_4, A2 => data_read_in(5), B1 => n_3, B2 => n_14, C1 => data_wire(2), C2 => n_2, Z => n_8);
  g509 : AO222D0BWP7T port map(A1 => n_4, A2 => MISO(1), B1 => n_3, B2 => data_read_in(3), C1 => data_wire(5), C2 => n_2, Z => n_7);
  g510 : AO222D0BWP7T port map(A1 => n_4, A2 => data_read_in(3), B1 => n_3, B2 => n_13, C1 => data_wire(1), C2 => n_2, Z => n_6);
  g511 : AO222D0BWP7T port map(A1 => n_4, A2 => MISO(2), B1 => n_3, B2 => data_read_in(5), C1 => data_wire(6), C2 => n_2, Z => n_5);
  g512 : INR3D0BWP7T port map(A1 => shift_reg, B1 => reset, B2 => load_reg, ZN => n_4);
  g513 : NR3D0BWP7T port map(A1 => load_reg, A2 => shift_reg, A3 => reset, ZN => n_3);
  g514 : INR2D0BWP7T port map(A1 => load_reg, B1 => reset, ZN => n_2);
  drc_bufs515 : INVD4BWP7T port map(I => n_1, ZN => MOSI(2));
  drc_bufs519 : INVD4BWP7T port map(I => n_0, ZN => MOSI(1));
  u1_reg_reg_4 : DFD1BWP7T port map(CP => shift_clk, D => n_8, Q => n_14, QN => n_1);
  u1_reg_reg_2 : DFD1BWP7T port map(CP => shift_clk, D => n_6, Q => n_13, QN => n_0);
  u2_g2476 : IND2D0BWP7T port map(A1 => done, B1 => u2_n_81, ZN => data_wire(5));
  u2_g2477 : ND2D0BWP7T port map(A1 => u2_n_80, A2 => u2_n_77, ZN => data_wire(4));
  u2_g2478 : AO222D0BWP7T port map(A1 => u2_n_71, A2 => address(11), B1 => u2_n_76, B2 => address(3), C1 => u2_n_75, C2 => data_in(3), Z => data_wire(7));
  u2_g2479 : AO222D0BWP7T port map(A1 => u2_n_76, A2 => address(6), B1 => u2_n_75, B2 => data_in(6), C1 => u2_n_71, C2 => address(14), Z => data_wire(2));
  u2_g2480 : AO222D0BWP7T port map(A1 => u2_n_71, A2 => address(12), B1 => u2_n_76, B2 => address(4), C1 => u2_n_75, C2 => data_in(4), Z => data_wire(0));
  u2_g2481 : AO222D0BWP7T port map(A1 => u2_n_71, A2 => address(10), B1 => u2_n_76, B2 => address(2), C1 => u2_n_75, C2 => data_in(2), Z => data_wire(6));
  u2_g2482 : AO222D0BWP7T port map(A1 => u2_n_76, A2 => address(5), B1 => u2_n_75, B2 => data_in(5), C1 => u2_n_71, C2 => address(13), Z => data_wire(1));
  u2_g2483 : AOI222D0BWP7T port map(A1 => u2_n_76, A2 => address(1), B1 => u2_n_71, B2 => address(9), C1 => u2_n_75, C2 => data_in(1), ZN => u2_n_81);
  u2_g2484 : OR2D4BWP7T port map(A1 => u2_n_79, A2 => done, Z => new_data);
  u2_g2485 : ND2D4BWP7T port map(A1 => u2_n_78, A2 => u2_n_74, ZN => MOSI(0));
  u2_g2486 : AOI22D0BWP7T port map(A1 => u2_n_76, A2 => address(0), B1 => u2_n_75, B2 => data_in(0), ZN => u2_n_80);
  u2_g2487 : AO22D0BWP7T port map(A1 => u2_n_76, A2 => address(7), B1 => data_in(7), B2 => u2_n_75, Z => data_wire(3));
  u2_g2488 : INR3D0BWP7T port map(A1 => count_out(2), B1 => count_out(0), B2 => u2_n_72, ZN => u2_n_79);
  u2_g2489 : AOI22D0BWP7T port map(A1 => u2_n_70, A2 => u2_n_83, B1 => u2_n_66, B2 => data_read_in(0), ZN => u2_n_78);
  u2_g2490 : AOI22D0BWP7T port map(A1 => u2_n_71, A2 => address(8), B1 => done, B2 => RW, ZN => u2_n_77);
  u2_g2491 : MOAI22D0BWP7T port map(A1 => u2_n_72, A2 => clk, B1 => u2_n_72, B2 => clk, ZN => shift_clk);
  u2_g2492 : NR2D0BWP7T port map(A1 => u2_n_73, A2 => count_out(1), ZN => u2_n_76);
  u2_g2493 : INR2D0BWP7T port map(A1 => count_out(1), B1 => u2_n_73, ZN => u2_n_75);
  u2_g2494 : AO21D0BWP7T port map(A1 => u2_n_84, A2 => u2_n_136, B => done, Z => load_reg);
  u2_g2495 : IND3D0BWP7T port map(A1 => u2_n_69, B1 => u2_n_62, B2 => u2_n_60, ZN => u2_n_74);
  u2_g2496 : INVD1BWP7T port map(I => high_z, ZN => u2_n_72);
  u2_g2497 : ND2D0BWP7T port map(A1 => u2_n_84, A2 => u2_n_59, ZN => u2_n_73);
  u2_g2498 : CKAN2D4BWP7T port map(A1 => u2_n_85, A2 => count_out(3), Z => high_z);
  u2_g2499 : AN2D1BWP7T port map(A1 => u2_n_84, A2 => u2_n_64, Z => u2_n_71);
  u2_g2500 : OR2D4BWP7T port map(A1 => CS, A2 => u2_n_56, Z => SCK);
  u2_g2501 : ND2D0BWP7T port map(A1 => u2_n_90, A2 => u2_n_89, ZN => u2_n_70);
  u2_g2502 : AO21D0BWP7T port map(A1 => u2_n_68, A2 => u2_SHIFT_nLOAD, B => u2_n_85, Z => shift_reg);
  u2_g2503 : OR2D4BWP7T port map(A1 => u2_n_65, A2 => data_read_in(6), Z => MOSI(3));
  u2_g2504 : OR2D4BWP7T port map(A1 => count_reset, A2 => u2_n_58, Z => CS);
  u2_g2505 : AN2D1BWP7T port map(A1 => u2_n_68, A2 => u2_state(1), Z => u2_n_85);
  u2_g2506 : INR2D0BWP7T port map(A1 => u2_n_68, B1 => u2_state(1), ZN => u2_n_84);
  u2_g2507 : AN2D4BWP7T port map(A1 => u2_n_67, A2 => u2_n_55, Z => done);
  u2_g2508 : OAI21D0BWP7T port map(A1 => u2_n_60, A2 => reset, B => u2_n_61, ZN => count_en);
  u2_g2509 : AOI21D0BWP7T port map(A1 => u2_n_59, A2 => u2_n_63, B => u2_n_64, ZN => u2_n_69);
  u2_g2510 : IND3D0BWP7T port map(A1 => u2_n_87, B1 => count_out(0), B2 => u2_n_57, ZN => u2_n_89);
  u2_g2511 : ND3D0BWP7T port map(A1 => u2_n_59, A2 => count_out(1), A3 => count_out(0), ZN => u2_n_90);
  u2_g2512 : INR3D0BWP7T port map(A1 => u2_n_62, B1 => u2_state(1), B2 => u2_state(2), ZN => u2_n_83);
  u2_g2513 : IND2D0BWP7T port map(A1 => u2_state(0), B1 => u2_n_60, ZN => u2_n_293_BAR);
  u2_g2514 : ND2D0BWP7T port map(A1 => u2_n_58, A2 => u2_state(2), ZN => u2_n_88);
  u2_g2515 : INR2D0BWP7T port map(A1 => u2_n_58, B1 => reset, ZN => u2_n_67);
  u2_g2516 : NR2D0BWP7T port map(A1 => u2_n_61, A2 => u2_n_55, ZN => u2_n_68);
  u2_g2517 : INVD0BWP7T port map(I => u2_n_65, ZN => u2_n_66);
  u2_g2519 : NR2D0BWP7T port map(A1 => u2_n_58, A2 => u2_state(2), ZN => u2_n_65);
  u2_g2520 : AO21D0BWP7T port map(A1 => u2_n_55, A2 => u2_state(0), B => reset, Z => count_reset);
  u2_g2521 : NR3D0BWP7T port map(A1 => u2_n_57, A2 => count_out(3), A3 => count_out(2), ZN => u2_n_64);
  u2_g2523 : CKND1BWP7T port map(I => u2_n_62, ZN => u2_n_61);
  u2_g2524 : NR2D0BWP7T port map(A1 => count_out(1), A2 => count_out(0), ZN => u2_n_63);
  u2_g2525 : IND2D0BWP7T port map(A1 => count_out(2), B1 => count_out(3), ZN => u2_n_87);
  u2_g2526 : NR2D0BWP7T port map(A1 => u2_state(0), A2 => reset, ZN => u2_n_62);
  u2_g2527 : INR2D0BWP7T port map(A1 => u2_state(1), B1 => u2_state(2), ZN => u2_n_60);
  u2_g2528 : INR2D0BWP7T port map(A1 => count_out(2), B1 => count_out(3), ZN => u2_n_59);
  u2_g2529 : AN2D1BWP7T port map(A1 => u2_state(1), A2 => u2_state(0), Z => u2_n_58);
  u2_g2531 : CKND1BWP7T port map(I => count_out(1), ZN => u2_n_57);
  u2_g2532 : INVD0BWP7T port map(I => clk, ZN => u2_n_56);
  u2_state_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => u2_n_12, D => u2_n_46, Q => u2_state(1));
  u2_state_reg_0 : DFQD1BWP7T port map(CP => clk, D => u2_n_44, Q => u2_state(0));
  u2_g2022 : OAI21D0BWP7T port map(A1 => u2_n_144, A2 => u2_n_0, B => u2_n_45, ZN => u2_n_46);
  u2_data_read_reg_4 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_43, Q => u2_n_51, QN => u2_n_6);
  u2_data_read_reg_3 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_42, Q => u2_n_50, QN => u2_n_7);
  u2_data_read_reg_2 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_36, Q => u2_n_49, QN => u2_n_8);
  u2_data_read_reg_5 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_41, Q => u2_n_52, QN => u2_n_5);
  u2_data_read_reg_6 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_38, Q => u2_n_53, QN => u2_n_4);
  u2_g2028 : IND4D0BWP7T port map(A1 => u2_n_83, B1 => u2_n_0, B2 => u2_n_16, B3 => u2_n_33, ZN => u2_n_45);
  u2_g2029 : OAI221D0BWP7T port map(A1 => u2_n_31, A2 => u2_n_15, B1 => en, B2 => u2_n_14, C => u2_n_32, ZN => u2_n_44);
  u2_data_read_reg_1 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_37, Q => u2_n_48, QN => u2_n_9);
  u2_data_read_reg_7 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_39, Q => u2_n_54, QN => u2_n_3);
  u2_data_read_reg_0 : DFNCND0BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_40, Q => u2_n_47, QN => u2_n_2);
  u2_g2034 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_51, B1 => data_read_in(0), B2 => u2_n_35, Z => u2_n_43);
  u2_g2035 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_50, B1 => data_read_in(7), B2 => u2_n_35, Z => u2_n_42);
  u2_g2037 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_52, B1 => MOSI(1), B2 => u2_n_35, Z => u2_n_41);
  u2_g2038 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_47, B1 => data_read_in(1), B2 => u2_n_35, Z => u2_n_40);
  u2_g2039 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_54, B1 => data_read_in(6), B2 => u2_n_35, Z => u2_n_39);
  u2_g2040 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_53, B1 => MOSI(2), B2 => u2_n_35, Z => u2_n_38);
  u2_g2041 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_48, B1 => data_read_in(3), B2 => u2_n_35, Z => u2_n_37);
  u2_g2042 : AO22D0BWP7T port map(A1 => u2_n_34, A2 => u2_n_49, B1 => data_read_in(5), B2 => u2_n_35, Z => u2_n_36);
  u2_g2043 : INVD1BWP7T port map(I => u2_n_35, ZN => u2_n_34);
  u2_g2044 : OAI31D0BWP7T port map(A1 => u2_n_13, A2 => count_out(3), A3 => u2_n_22, B => u2_n_26, ZN => u2_n_33);
  u2_g2045 : IND2D0BWP7T port map(A1 => u2_n_29, B1 => u2_n_88, ZN => u2_n_35);
  u2_g2046 : AOI222D0BWP7T port map(A1 => u2_n_20, A2 => u2_n_12, B1 => u2_n_84, B2 => u2_n_17, C1 => u2_n_27, C2 => count_out(1), ZN => u2_n_32);
  u2_g2047 : AOI22D0BWP7T port map(A1 => u2_n_28, A2 => count_out(3), B1 => u2_n_24, B2 => single, ZN => u2_n_31);
  u2_g2048 : INR3D0BWP7T port map(A1 => u2_n_144, B1 => reset, B2 => u2_n_0, ZN => u2_n_30);
  u2_g2049 : AOI21D0BWP7T port map(A1 => u2_n_23, A2 => u2_n_21, B => u2_n_143, ZN => u2_n_29);
  u2_SHIFT_nLOAD_reg : DFNCND1BWP7T port map(CDN => u2_n_12, CPN => clk, D => u2_n_25, Q => u2_SHIFT_nLOAD, QN => u2_n_136);
  u2_g2051 : NR2D0BWP7T port map(A1 => u2_n_22, A2 => single, ZN => u2_n_28);
  u2_g2052 : INR2D0BWP7T port map(A1 => u2_n_83, B1 => u2_n_21, ZN => u2_n_27);
  u2_g2054 : INR2D0BWP7T port map(A1 => u2_n_136, B1 => u2_n_18, ZN => u2_n_25);
  u2_g2055 : INR2D0BWP7T port map(A1 => u2_n_84, B1 => u2_n_17, ZN => u2_n_26);
  u2_g2057 : CKND1BWP7T port map(I => u2_n_23, ZN => u2_n_24);
  u2_g2058 : MOAI22D0BWP7T port map(A1 => u2_n_90, A2 => u2_n_293_BAR, B1 => u2_state(2), B2 => u2_state(0), ZN => u2_n_20);
  u2_g2059 : IND3D0BWP7T port map(A1 => u2_n_87, B1 => count_out(1), B2 => count_out(0), ZN => u2_n_23);
  u2_g2060 : IND3D0BWP7T port map(A1 => count_out(0), B1 => count_out(2), B2 => count_out(1), ZN => u2_n_22);
  u2_g2061 : ND3D0BWP7T port map(A1 => count_out(3), A2 => count_out(0), A3 => count_out(2), ZN => u2_n_21);
  u2_g2064 : IND2D0BWP7T port map(A1 => u2_state(1), B1 => u2_state(2), ZN => u2_n_18);
  u2_g2065 : NR2D0BWP7T port map(A1 => u2_n_89, A2 => RW, ZN => u2_n_17);
  u2_g2066 : ND2D0BWP7T port map(A1 => done, A2 => en, ZN => u2_n_16);
  u2_g2067 : CKND1BWP7T port map(I => u2_n_85, ZN => u2_n_15);
  u2_g2068 : CKND1BWP7T port map(I => done, ZN => u2_n_14);
  u2_g2069 : INVD0BWP7T port map(I => RW, ZN => u2_n_13);
  u2_g2070 : INVD0BWP7T port map(I => reset, ZN => u2_n_12);
  u2_drc_bufs2073 : INVD4BWP7T port map(I => u2_n_9, ZN => data_out(1));
  u2_drc_bufs2077 : INVD4BWP7T port map(I => u2_n_8, ZN => data_out(2));
  u2_drc_bufs2081 : INVD4BWP7T port map(I => u2_n_7, ZN => data_out(3));
  u2_drc_bufs2085 : INVD4BWP7T port map(I => u2_n_6, ZN => data_out(4));
  u2_drc_bufs2089 : INVD4BWP7T port map(I => u2_n_5, ZN => data_out(5));
  u2_drc_bufs2093 : INVD4BWP7T port map(I => u2_n_4, ZN => data_out(6));
  u2_drc_bufs2097 : INVD4BWP7T port map(I => u2_n_3, ZN => data_out(7));
  u2_drc_bufs2101 : INVD4BWP7T port map(I => u2_n_2, ZN => data_out(0));
  u2_g2 : IIND4D0BWP7T port map(A1 => u2_n_26, A2 => u2_n_30, B1 => u2_n_15, B2 => u2_n_16, ZN => u2_n_1);
  u2_g2106 : IND2D1BWP7T port map(A1 => u2_n_18, B1 => u2_state(0), ZN => u2_n_0);
  u2_g2534 : ND2D1BWP7T port map(A1 => u2_state(1), A2 => u2_state(2), ZN => u2_n_143);
  u2_state_reg_2 : DFD1BWP7T port map(CP => clk, D => u2_n_1, Q => u2_state(2), QN => u2_n_55);
  u2_g2537 : IND2D1BWP7T port map(A1 => u2_n_87, B1 => u2_n_63, ZN => u2_n_144);
  u0_count_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => u0_n_0, D => u0_n_7, Q => count_out(3));
  u0_count_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => u0_n_0, D => u0_n_6, Q => count_out(2));
  u0_g226 : MOAI22D0BWP7T port map(A1 => u0_n_5, A2 => count_out(3), B1 => u0_n_5, B2 => count_out(3), ZN => u0_n_7);
  u0_count_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => u0_n_0, D => u0_n_4, Q => count_out(1));
  u0_g228 : MOAI22D0BWP7T port map(A1 => u0_n_3, A2 => count_out(2), B1 => u0_n_3, B2 => count_out(2), ZN => u0_n_6);
  u0_g229 : IND2D0BWP7T port map(A1 => u0_n_3, B1 => count_out(2), ZN => u0_n_5);
  u0_count_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => u0_n_0, D => u0_n_2, Q => count_out(0));
  u0_g231 : MOAI22D0BWP7T port map(A1 => u0_n_1, A2 => count_out(1), B1 => u0_n_1, B2 => count_out(1), ZN => u0_n_4);
  u0_g232 : IND2D0BWP7T port map(A1 => u0_n_1, B1 => count_out(1), ZN => u0_n_3);
  u0_g233 : CKXOR2D0BWP7T port map(A1 => count_out(0), A2 => count_en, Z => u0_n_2);
  u0_g234 : ND2D0BWP7T port map(A1 => count_en, A2 => count_out(0), ZN => u0_n_1);
  u0_g235 : INVD1BWP7T port map(I => count_reset, ZN => u0_n_0);

end synthesised;
