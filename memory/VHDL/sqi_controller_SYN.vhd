
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of sqi_controller is

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component LND1BWP7T
    port(EN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LHQD1BWP7T
    port(E, D : in std_logic; Q : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OR3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component LNQD1BWP7T
    port(EN, D : in std_logic; Q : out std_logic);
  end component;

  component DFKSND1BWP7T
    port(CP, D, SN : in std_logic; Q, QN : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DFSND1BWP7T
    port(SDN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal state : std_logic_vector(2 downto 0);
  signal new_state : std_logic_vector(2 downto 0);
  signal SHIFT_nLOAD, UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2 : std_logic;
  signal UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7 : std_logic;
  signal UNCONNECTED8, UNCONNECTED9, UNCONNECTED10, UNCONNECTED11, UNCONNECTED12 : std_logic;
  signal UNCONNECTED13, UNCONNECTED14, UNCONNECTED15, UNCONNECTED16, UNCONNECTED17 : std_logic;
  signal UNCONNECTED18, UNCONNECTED19, UNCONNECTED20, done_read, n_0 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_7, n_8, n_10, n_11, n_12 : std_logic;
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
  signal n_68, n_69, n_70, n_71, n_72 : std_logic;
  signal n_73, n_74, n_75, n_76, n_77 : std_logic;
  signal n_78, n_79, n_80, n_81, n_82 : std_logic;
  signal n_83, n_84, n_85, n_86, n_87 : std_logic;
  signal n_88, n_89, n_90, n_91, n_92 : std_logic;
  signal n_93, n_94, n_95, n_96, n_97 : std_logic;
  signal n_98, n_99, n_100, n_101, n_102 : std_logic;
  signal n_103, n_104, n_105, n_106, n_113 : std_logic;
  signal n_140, n_141, spi : std_logic;

begin

  g1009 : INR2XD0BWP7T port map(A1 => n_113, B1 => reset, ZN => n_103);
  g1010 : ND2D1BWP7T port map(A1 => n_101, A2 => state(1), ZN => n_113);
  g1011 : NR2D0BWP7T port map(A1 => state(0), A2 => state(2), ZN => n_101);
  data_out_reg_0 : LND1BWP7T port map(EN => n_99, D => n_65, Q => UNCONNECTED, QN => n_100);
  g2612 : INVD4BWP7T port map(I => n_100, ZN => data_out(0));
  data_out_reg_6 : LND1BWP7T port map(EN => n_99, D => n_67, Q => UNCONNECTED0, QN => n_98);
  g2614 : INVD4BWP7T port map(I => n_98, ZN => data_out(6));
  data_out_reg_7 : LND1BWP7T port map(EN => n_99, D => n_70, Q => UNCONNECTED1, QN => n_97);
  g2616 : INVD4BWP7T port map(I => n_97, ZN => data_out(7));
  data_out_reg_3 : LND1BWP7T port map(EN => n_99, D => n_54, Q => UNCONNECTED2, QN => n_96);
  g2618 : INVD4BWP7T port map(I => n_96, ZN => data_out(3));
  data_out_reg_2 : LND1BWP7T port map(EN => n_99, D => n_63, Q => UNCONNECTED3, QN => n_95);
  g2620 : INVD4BWP7T port map(I => n_95, ZN => data_out(2));
  data_out_reg_4 : LND1BWP7T port map(EN => n_99, D => n_71, Q => UNCONNECTED4, QN => n_94);
  g2622 : INVD4BWP7T port map(I => n_94, ZN => data_out(4));
  reg_shift_reg : LND1BWP7T port map(EN => n_90, D => n_60, Q => UNCONNECTED5, QN => n_93);
  g2624 : INVD4BWP7T port map(I => n_93, ZN => reg_shift);
  data_out_reg_1 : LND1BWP7T port map(EN => n_99, D => n_64, Q => UNCONNECTED6, QN => n_92);
  g2626 : INVD4BWP7T port map(I => n_92, ZN => data_out(1));
  data_out_reg_5 : LND1BWP7T port map(EN => n_99, D => n_82, Q => UNCONNECTED7, QN => n_91);
  g2628 : INVD4BWP7T port map(I => n_91, ZN => data_out(5));
  reg_load_reg : LND1BWP7T port map(EN => n_90, D => n_39, Q => UNCONNECTED8, QN => n_89);
  g2630 : INVD4BWP7T port map(I => n_89, ZN => reg_load);
  new_state_reg_0 : LHQD1BWP7T port map(E => n_87, D => n_86, Q => new_state(0));
  g2632 : ND2D0BWP7T port map(A1 => n_85, A2 => n_0, ZN => n_90);
  g2633 : OAI21D0BWP7T port map(A1 => n_81, A2 => n_44, B => n_0, ZN => n_99);
  count_en_reg : LND1BWP7T port map(EN => n_80, D => n_31, Q => UNCONNECTED9, QN => n_88);
  g2635 : INVD4BWP7T port map(I => n_88, ZN => count_en);
  new_state_reg_1 : LHQD1BWP7T port map(E => n_87, D => n_66, Q => new_state(1));
  new_state_reg_2 : LHQD1BWP7T port map(E => n_87, D => n_59, Q => new_state(2));
  g2638 : AO211D0BWP7T port map(A1 => n_23, A2 => en, B => n_69, C => n_33, Z => n_86);
  g2639 : OAI21D0BWP7T port map(A1 => n_74, A2 => state(1), B => n_62, ZN => n_85);
  g2640 : ND2D4BWP7T port map(A1 => n_43, A2 => n_79, ZN => MOSI(0));
  count_reset_reg : LND1BWP7T port map(EN => n_73, D => n_27, Q => UNCONNECTED10, QN => n_84);
  g2642 : INVD4BWP7T port map(I => n_84, ZN => count_reset);
  done_reg : LHD1BWP7T port map(E => n_75, D => n_41, Q => UNCONNECTED11, QN => n_83);
  g2644 : INVD4BWP7T port map(I => n_83, ZN => done);
  g2645 : IND2D0BWP7T port map(A1 => n_23, B1 => n_68, ZN => n_82);
  g2646 : NR3D0BWP7T port map(A1 => n_56, A2 => count_in(3), A3 => count_in(0), ZN => n_81);
  g2647 : ND2D0BWP7T port map(A1 => n_78, A2 => n_0, ZN => n_80);
  g2648 : ND2D1BWP7T port map(A1 => n_35, A2 => spi, ZN => n_79);
  g2649 : OAI21D0BWP7T port map(A1 => n_58, A2 => state(1), B => n_77, ZN => n_87);
  g2650 : CKND1BWP7T port map(I => n_77, ZN => n_78);
  g2651 : NR2D0BWP7T port map(A1 => n_26, A2 => n_58, ZN => n_105);
  shift_reset_reg : LHD1BWP7T port map(E => n_72, D => reset, Q => UNCONNECTED12, QN => n_76);
  g2653 : INVD4BWP7T port map(I => n_76, ZN => shift_reset);
  g2654 : ND2D0BWP7T port map(A1 => n_62, A2 => n_0, ZN => n_75);
  g2655 : IND4D0BWP7T port map(A1 => count_in(2), B1 => count_in(3), B2 => n_6, B3 => state(2), ZN => n_74);
  spi_reg : LHQD1BWP7T port map(E => n_42, D => n_61, Q => spi);
  g2657 : NR2D0BWP7T port map(A1 => n_72, A2 => n_35, ZN => n_73);
  g2658 : ND2D0BWP7T port map(A1 => n_57, A2 => n_55, ZN => n_71);
  g2659 : INR2D0BWP7T port map(A1 => n_62, B1 => n_35, ZN => n_77);
  g2660 : AO222D0BWP7T port map(A1 => n_32, A2 => address(3), B1 => n_33, B2 => address(11), C1 => n_22, C2 => data_in(3), Z => n_70);
  g2661 : OAI22D0BWP7T port map(A1 => n_34, A2 => n_36, B1 => n_24, B2 => n_40, ZN => n_69);
  g2662 : AOI222D0BWP7T port map(A1 => n_33, A2 => address(9), B1 => n_8, B2 => data_in(1), C1 => n_32, C2 => address(1), ZN => n_68);
  g2663 : AO222D0BWP7T port map(A1 => n_32, A2 => address(2), B1 => n_33, B2 => address(10), C1 => n_22, C2 => data_in(2), Z => n_67);
  g2664 : OAI21D0BWP7T port map(A1 => n_7, A2 => n_35, B => n_37, ZN => n_66);
  g2665 : AO222D0BWP7T port map(A1 => n_32, A2 => address(4), B1 => n_33, B2 => address(12), C1 => n_22, C2 => data_in(4), Z => n_65);
  g2666 : AO222D0BWP7T port map(A1 => n_32, A2 => address(5), B1 => n_33, B2 => address(13), C1 => n_22, C2 => data_in(5), Z => n_64);
  g2667 : AO222D0BWP7T port map(A1 => n_32, A2 => address(6), B1 => n_33, B2 => address(14), C1 => n_22, C2 => data_in(6), Z => n_63);
  g2668 : AOI21D0BWP7T port map(A1 => n_30, A2 => n_18, B => count_in(3), ZN => n_61);
  g2669 : MOAI22D0BWP7T port map(A1 => n_29, A2 => n_102, B1 => state(2), B2 => state(0), ZN => n_60);
  g2670 : INR2D0BWP7T port map(A1 => n_7, B1 => count_in(1), ZN => n_59);
  g2671 : IND3D0BWP7T port map(A1 => n_141, B1 => n_0, B2 => n_113, ZN => n_72);
  g2672 : NR2D0BWP7T port map(A1 => n_44, A2 => n_141, ZN => n_62);
  g2673 : AOI22D0BWP7T port map(A1 => n_32, A2 => address(0), B1 => n_22, B2 => data_in(0), ZN => n_57);
  g2674 : AOI21D0BWP7T port map(A1 => n_141, A2 => n_17, B => n_38, ZN => n_56);
  g2675 : AOI22D0BWP7T port map(A1 => n_33, A2 => address(8), B1 => n_23, B2 => RW, ZN => n_55);
  g2676 : AO22D0BWP7T port map(A1 => n_32, A2 => address(7), B1 => data_in(7), B2 => n_22, Z => n_54);
  g2677 : IND4D0BWP7T port map(A1 => n_18, B1 => count_in(3), B2 => count_in(0), B3 => state(2), ZN => n_58);
  data_read_reg_3 : LND1BWP7T port map(EN => n_52, D => n_12, Q => UNCONNECTED13, QN => n_53);
  g2679 : INVD4BWP7T port map(I => n_53, ZN => data_read(3));
  data_read_reg_7 : LND1BWP7T port map(EN => n_52, D => n_19, Q => UNCONNECTED14, QN => n_51);
  g2681 : INVD4BWP7T port map(I => n_51, ZN => data_read(7));
  data_read_reg_6 : LND1BWP7T port map(EN => n_52, D => n_16, Q => UNCONNECTED15, QN => n_50);
  g2683 : INVD4BWP7T port map(I => n_50, ZN => data_read(6));
  data_read_reg_4 : LND1BWP7T port map(EN => n_52, D => n_13, Q => UNCONNECTED16, QN => n_49);
  g2685 : INVD4BWP7T port map(I => n_49, ZN => data_read(4));
  data_read_reg_0 : LND1BWP7T port map(EN => n_52, D => n_14, Q => UNCONNECTED17, QN => n_48);
  g2687 : INVD4BWP7T port map(I => n_48, ZN => data_read(0));
  data_read_reg_2 : LND1BWP7T port map(EN => n_52, D => n_20, Q => UNCONNECTED18, QN => n_47);
  g2689 : INVD4BWP7T port map(I => n_47, ZN => data_read(2));
  data_read_reg_5 : LND1BWP7T port map(EN => n_52, D => n_15, Q => UNCONNECTED19, QN => n_46);
  g2691 : INVD4BWP7T port map(I => n_46, ZN => data_read(5));
  data_read_reg_1 : LND1BWP7T port map(EN => n_52, D => n_21, Q => UNCONNECTED20, QN => n_45);
  g2693 : INVD4BWP7T port map(I => n_45, ZN => data_read(1));
  g2694 : ND2D1BWP7T port map(A1 => n_34, A2 => shift_in(0), ZN => n_43);
  g2695 : NR2D0BWP7T port map(A1 => n_34, A2 => reset, ZN => n_42);
  g2696 : NR2D0BWP7T port map(A1 => n_28, A2 => reset, ZN => n_41);
  g2697 : NR3D0BWP7T port map(A1 => n_25, A2 => n_11, A3 => RW, ZN => n_40);
  g2698 : AO21D0BWP7T port map(A1 => n_26, A2 => n_102, B => n_23, Z => n_39);
  g2699 : NR3D0BWP7T port map(A1 => n_10, A2 => state(1), A3 => n_17, ZN => n_38);
  g2700 : IND2D0BWP7T port map(A1 => n_140, B1 => n_113, ZN => n_44);
  g2702 : CKND1BWP7T port map(I => n_36, ZN => n_37);
  g2703 : INVD0BWP7T port map(I => n_35, ZN => n_34);
  g2705 : NR2D0BWP7T port map(A1 => n_17, A2 => n_25, ZN => n_36);
  g2706 : CKAN2D1BWP7T port map(A1 => n_22, A2 => state(2), Z => n_140);
  g2707 : NR2XD0BWP7T port map(A1 => n_24, A2 => state(2), ZN => n_141);
  g2708 : NR2XD0BWP7T port map(A1 => n_26, A2 => state(2), ZN => n_35);
  g2709 : INR2D0BWP7T port map(A1 => count_in(1), B1 => n_24, ZN => n_33);
  g2710 : NR2D0BWP7T port map(A1 => n_24, A2 => n_11, ZN => n_32);
  g2711 : OAI21D0BWP7T port map(A1 => n_10, A2 => n_102, B => n_8, ZN => n_31);
  g2712 : OR3D0BWP7T port map(A1 => count_in(0), A2 => n_11, A3 => count_in(1), Z => n_30);
  g2713 : INR2D0BWP7T port map(A1 => n_24, B1 => n_22, ZN => n_29);
  g2714 : IAO21D0BWP7T port map(A1 => n_102, A2 => state(1), B => n_23, ZN => n_28);
  g2716 : NR2D0BWP7T port map(A1 => n_106, A2 => reset, ZN => n_52);
  g2717 : CKND1BWP7T port map(I => n_104, ZN => n_27);
  g2718 : INR2D0BWP7T port map(A1 => data_in(1), B1 => reset, ZN => n_21);
  g2719 : INR2D0BWP7T port map(A1 => data_in(2), B1 => reset, ZN => n_20);
  g2720 : INR2D0BWP7T port map(A1 => data_in(7), B1 => reset, ZN => n_19);
  g2721 : NR2D0BWP7T port map(A1 => n_8, A2 => reset, ZN => n_104);
  g2722 : IND2D1BWP7T port map(A1 => state(1), B1 => state(0), ZN => n_26);
  g2723 : IND2D0BWP7T port map(A1 => count_in(3), B1 => count_in(0), ZN => n_25);
  g2724 : CKND2D1BWP7T port map(A1 => state(0), A2 => state(1), ZN => n_24);
  g2725 : INR2D0BWP7T port map(A1 => state(1), B1 => state(0), ZN => n_23);
  g2726 : NR2XD0BWP7T port map(A1 => state(1), A2 => state(0), ZN => n_22);
  g2727 : INR2D0BWP7T port map(A1 => data_in(6), B1 => reset, ZN => n_16);
  g2728 : INR2D0BWP7T port map(A1 => data_in(5), B1 => reset, ZN => n_15);
  g2729 : INR2D0BWP7T port map(A1 => data_in(0), B1 => reset, ZN => n_14);
  g2730 : ND2D4BWP7T port map(A1 => clk, A2 => n_103, ZN => sck);
  g2731 : INR2D0BWP7T port map(A1 => data_in(4), B1 => reset, ZN => n_13);
  g2732 : INR2D0BWP7T port map(A1 => data_in(3), B1 => reset, ZN => n_12);
  g2733 : ND2D0BWP7T port map(A1 => count_in(1), A2 => n_11, ZN => n_18);
  g2734 : INR2D0BWP7T port map(A1 => done_read, B1 => n_113, ZN => n_106);
  g2735 : ND2D0BWP7T port map(A1 => count_in(1), A2 => count_in(2), ZN => n_17);
  g2737 : INVD1BWP7T port map(I => count_in(2), ZN => n_11);
  g2739 : INVD1BWP7T port map(I => reset, ZN => n_0);
  g2740 : INVD4BWP7T port map(I => n_103, ZN => cs);
  g2 : INR2D1BWP7T port map(A1 => n_32, B1 => n_25, ZN => n_7);
  g2744 : CKXOR2D1BWP7T port map(A1 => count_in(1), A2 => count_in(0), Z => n_6);
  done_read_reg : LNQD1BWP7T port map(EN => n_3, D => n_4, Q => done_read);
  state_reg_0 : DFKSND1BWP7T port map(CP => clk, D => new_state(0), SN => n_0, Q => state(0), QN => n_8);
  g1018 : OAI21D0BWP7T port map(A1 => n_140, A2 => n_141, B => SHIFT_nLOAD, ZN => n_5);
  g1019 : AN3D0BWP7T port map(A1 => n_104, A2 => n_2, A3 => state(2), Z => n_4);
  g1020 : NR3D0BWP7T port map(A1 => n_105, A2 => n_106, A3 => reset, ZN => n_3);
  drc_bufs : BUFFD4BWP7T port map(I => shift_in(3), Z => MOSI(3));
  drc_bufs2747 : BUFFD4BWP7T port map(I => shift_in(1), Z => MOSI(1));
  drc_bufs2750 : BUFFD4BWP7T port map(I => shift_in(2), Z => MOSI(2));
  SHIFT_nLOAD_reg : DFSND1BWP7T port map(SDN => n_0, CP => clk, D => n_5, Q => SHIFT_nLOAD, QN => n_102);
  state_reg_2 : DFKCND1BWP7T port map(CP => clk, CN => new_state(2), D => n_0, Q => state(2), QN => n_10);
  state_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => new_state(1), D => n_0, Q => state(1), QN => n_2);

end synthesised;
