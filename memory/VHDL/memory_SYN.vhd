
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of memory is

  component DFQD0BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component LHQD1BWP7T
    port(E, D : in std_logic; Q : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component DFKSND0BWP7T
    port(CP, D, SN : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFXD0BWP7T
    port(CP, DA, DB, SA : in std_logic; Q, QN : out std_logic);
  end component;

  component INR4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  signal state : std_logic_vector(2 downto 0);
  signal new_calc_buf_out : std_logic_vector(23 downto 0);
  signal new_State : std_logic_vector(2 downto 0);
  signal new_row_counter : std_logic_vector(1 downto 0);
  signal row_counter : std_logic_vector(1 downto 0);
  signal UNCONNECTED, UNCONNECTED0, calc_buf_out_0_407, calc_buf_out_1_408, calc_buf_out_2_409 : std_logic;
  signal calc_buf_out_3_410, calc_buf_out_4_411, calc_buf_out_5_412, calc_buf_out_6_413, calc_buf_out_7_414 : std_logic;
  signal calc_buf_out_8_415, calc_buf_out_9_416, calc_buf_out_10_417, calc_buf_out_11_418, calc_buf_out_12_419 : std_logic;
  signal calc_buf_out_13_420, calc_buf_out_14_421, calc_buf_out_15_422, calc_buf_out_16_423, calc_buf_out_17_424 : std_logic;
  signal calc_buf_out_18_425, calc_buf_out_19_426, calc_buf_out_20_427, calc_buf_out_21_428, calc_buf_out_22_429 : std_logic;
  signal calc_buf_out_23_430, n_0, n_1, n_2, n_3 : std_logic;
  signal n_4, n_5, n_7, n_8, n_9 : std_logic;
  signal n_10, n_11, n_12, n_14, n_15 : std_logic;
  signal n_16, n_17, n_18, n_19, n_20 : std_logic;
  signal n_21, n_22, n_23, n_24, n_25 : std_logic;
  signal n_26, n_27, n_28, n_29, n_30 : std_logic;
  signal n_31, n_32, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_43, n_44, n_45, n_46 : std_logic;
  signal n_47, n_48, n_49, n_50, n_51 : std_logic;
  signal n_52, n_53, n_54, n_55, n_56 : std_logic;
  signal n_57, n_58, n_59, n_60, n_61 : std_logic;
  signal n_62, n_63, n_64, n_65, n_66 : std_logic;
  signal n_67, n_68, n_69, n_70, n_71 : std_logic;
  signal n_73, n_74, n_75, n_95, n_99 : std_logic;
  signal n_105, n_111, n_117, n_123, n_129 : std_logic;
  signal n_135, n_141, n_147, n_153, n_159 : std_logic;
  signal n_165, n_171, n_177, n_183, n_189 : std_logic;
  signal n_195, n_201, n_207, n_213, n_219 : std_logic;
  signal n_225, n_231, n_237, n_241 : std_logic;

begin

  state_reg_2 : DFQD0BWP7T port map(CP => clk, D => n_74, Q => state(2));
  new_calc_buf_out_reg_17 : LHQD1BWP7T port map(E => n_73, D => n_66, Q => new_calc_buf_out(17));
  g2655 : IND2D0BWP7T port map(A1 => new_State(2), B1 => n_0, ZN => n_74);
  new_calc_buf_out_reg_16 : LHQD1BWP7T port map(E => n_73, D => n_64, Q => new_calc_buf_out(16));
  state_reg_1 : DFKSND0BWP7T port map(CP => clk, D => new_State(1), SN => n_0, Q => state(1), QN => UNCONNECTED);
  row_counter_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_counter(1), D => n_0, Q => row_counter(1));
  new_calc_buf_out_reg_18 : LHQD1BWP7T port map(E => n_73, D => n_65, Q => new_calc_buf_out(18));
  new_calc_buf_out_reg_22 : LHQD1BWP7T port map(E => n_73, D => n_71, Q => new_calc_buf_out(22));
  new_calc_buf_out_reg_19 : LHQD1BWP7T port map(E => n_73, D => n_63, Q => new_calc_buf_out(19));
  new_calc_buf_out_reg_20 : LHQD1BWP7T port map(E => n_73, D => n_62, Q => new_calc_buf_out(20));
  new_calc_buf_out_reg_21 : LHQD1BWP7T port map(E => n_73, D => n_61, Q => new_calc_buf_out(21));
  new_calc_buf_out_reg_23 : LHQD1BWP7T port map(E => n_73, D => n_69, Q => new_calc_buf_out(23));
  new_calc_buf_out_reg_10 : LHQD1BWP7T port map(E => n_73, D => n_55, Q => new_calc_buf_out(10));
  new_calc_buf_out_reg_9 : LHQD1BWP7T port map(E => n_73, D => n_58, Q => new_calc_buf_out(9));
  new_calc_buf_out_reg_8 : LHQD1BWP7T port map(E => n_73, D => n_59, Q => new_calc_buf_out(8));
  new_calc_buf_out_reg_11 : LHQD1BWP7T port map(E => n_73, D => n_54, Q => new_calc_buf_out(11));
  new_calc_buf_out_reg_14 : LHQD1BWP7T port map(E => n_73, D => n_51, Q => new_calc_buf_out(14));
  new_calc_buf_out_reg_13 : LHQD1BWP7T port map(E => n_73, D => n_52, Q => new_calc_buf_out(13));
  new_calc_buf_out_reg_12 : LHQD1BWP7T port map(E => n_73, D => n_53, Q => new_calc_buf_out(12));
  new_calc_buf_out_reg_15 : LHQD1BWP7T port map(E => n_73, D => n_50, Q => new_calc_buf_out(15));
  row_counter_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_counter(0), D => n_0, Q => row_counter(0));
  new_calc_buf_out_reg_0 : LHQD1BWP7T port map(E => n_70, D => n_45, Q => new_calc_buf_out(0));
  g2674 : AO22D0BWP7T port map(A1 => calc_buf_out(22), A2 => n_68, B1 => sqi_data_in(6), B2 => n_67, Z => n_71);
  new_calc_buf_out_reg_3 : LHQD1BWP7T port map(E => n_70, D => n_44, Q => new_calc_buf_out(3));
  g2675 : AO22D0BWP7T port map(A1 => calc_buf_out(23), A2 => n_68, B1 => sqi_data_in(7), B2 => n_67, Z => n_69);
  new_calc_buf_out_reg_7 : LHQD1BWP7T port map(E => n_70, D => n_38, Q => new_calc_buf_out(7));
  new_calc_buf_out_reg_1 : LHQD1BWP7T port map(E => n_70, D => n_48, Q => new_calc_buf_out(1));
  g2656 : AO22D0BWP7T port map(A1 => calc_buf_out(17), A2 => n_68, B1 => sqi_data_in(1), B2 => n_67, Z => n_66);
  g2683 : AO22D0BWP7T port map(A1 => calc_buf_out(18), A2 => n_68, B1 => sqi_data_in(2), B2 => n_67, Z => n_65);
  new_calc_buf_out_reg_6 : LHQD1BWP7T port map(E => n_70, D => n_41, Q => new_calc_buf_out(6));
  new_calc_buf_out_reg_2 : LHQD1BWP7T port map(E => n_70, D => n_49, Q => new_calc_buf_out(2));
  new_calc_buf_out_reg_4 : LHQD1BWP7T port map(E => n_70, D => n_43, Q => new_calc_buf_out(4));
  g2668 : AO22D0BWP7T port map(A1 => calc_buf_out(16), A2 => n_68, B1 => sqi_data_in(0), B2 => n_67, Z => n_64);
  new_calc_buf_out_reg_5 : LHQD1BWP7T port map(E => n_70, D => n_40, Q => new_calc_buf_out(5));
  g2671 : AO22D0BWP7T port map(A1 => calc_buf_out(19), A2 => n_68, B1 => sqi_data_in(3), B2 => n_67, Z => n_63);
  g2672 : AO22D0BWP7T port map(A1 => calc_buf_out(20), A2 => n_68, B1 => sqi_data_in(4), B2 => n_67, Z => n_62);
  g2673 : AO22D0BWP7T port map(A1 => calc_buf_out(21), A2 => n_68, B1 => sqi_data_in(5), B2 => n_67, Z => n_61);
  new_State_reg_2 : LHQD1BWP7T port map(E => n_60, D => n_39, Q => new_State(2));
  new_State_reg_0 : LHQD1BWP7T port map(E => n_60, D => n_37, Q => new_State(0));
  g2660 : AO22D0BWP7T port map(A1 => calc_buf_out(8), A2 => n_57, B1 => sqi_data_in(0), B2 => n_56, Z => n_59);
  new_State_reg_1 : LHQD1BWP7T port map(E => n_60, D => n_32, Q => new_State(1));
  g2661 : AO22D0BWP7T port map(A1 => calc_buf_out(9), A2 => n_57, B1 => sqi_data_in(1), B2 => n_56, Z => n_58);
  g2662 : AO22D0BWP7T port map(A1 => calc_buf_out(10), A2 => n_57, B1 => sqi_data_in(2), B2 => n_56, Z => n_55);
  g2663 : AO22D0BWP7T port map(A1 => calc_buf_out(11), A2 => n_57, B1 => sqi_data_in(3), B2 => n_56, Z => n_54);
  g2664 : AO22D0BWP7T port map(A1 => calc_buf_out(12), A2 => n_57, B1 => sqi_data_in(4), B2 => n_56, Z => n_53);
  g2665 : AO22D0BWP7T port map(A1 => calc_buf_out(13), A2 => n_57, B1 => sqi_data_in(5), B2 => n_56, Z => n_52);
  g2666 : AO22D0BWP7T port map(A1 => calc_buf_out(14), A2 => n_57, B1 => sqi_data_in(6), B2 => n_56, Z => n_51);
  g2667 : AO22D0BWP7T port map(A1 => calc_buf_out(15), A2 => n_57, B1 => sqi_data_in(7), B2 => n_56, Z => n_50);
  new_row_counter_reg_1 : LHQD1BWP7T port map(E => n_42, D => n_35, Q => new_row_counter(1));
  g2678 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(2), B1 => sqi_data_in(2), B2 => n_46, Z => n_49);
  g2677 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(1), B1 => sqi_data_in(1), B2 => n_46, Z => n_48);
  g2676 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(0), B1 => sqi_data_in(0), B2 => n_46, Z => n_45);
  g2679 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(3), B1 => sqi_data_in(3), B2 => n_46, Z => n_44);
  g2680 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(4), B1 => sqi_data_in(4), B2 => n_46, Z => n_43);
  new_row_counter_reg_0 : LHQD1BWP7T port map(E => n_42, D => n_30, Q => new_row_counter(0));
  g2682 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(6), B1 => sqi_data_in(6), B2 => n_46, Z => n_41);
  g2681 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(5), B1 => sqi_data_in(5), B2 => n_46, Z => n_40);
  g2685 : NR3D0BWP7T port map(A1 => n_28, A2 => n_36, A3 => n_34, ZN => n_39);
  g2670 : AO22D0BWP7T port map(A1 => n_47, A2 => calc_buf_out(7), B1 => sqi_data_in(7), B2 => n_46, Z => n_38);
  g2686 : NR4D0BWP7T port map(A1 => n_16, A2 => n_21, A3 => n_36, A4 => n_31, ZN => n_37);
  g2687 : AO221D0BWP7T port map(A1 => n_29, A2 => row_counter(1), B1 => n_34, B2 => n_24, C => n_56, Z => n_35);
  g2690 : CKND4BWP7T port map(I => n_75, ZN => ready);
  g2692 : IND3D0BWP7T port map(A1 => n_31, B1 => n_18, B2 => n_26, ZN => n_32);
  g2693 : ND2D0BWP7T port map(A1 => n_25, A2 => n_27, ZN => n_68);
  g2688 : MOAI22D0BWP7T port map(A1 => n_19, A2 => row_counter(0), B1 => n_29, B2 => row_counter(0), ZN => n_30);
  ready_reg : LHD1BWP7T port map(E => n_60, D => n_8, Q => UNCONNECTED0, QN => n_75);
  g2699 : OAI21D0BWP7T port map(A1 => n_27, A2 => sqi_finished, B => n_26, ZN => n_28);
  g2694 : AO211D0BWP7T port map(A1 => n_34, A2 => n_14, B => n_29, C => n_12, Z => n_57);
  g2691 : NR3D0BWP7T port map(A1 => n_46, A2 => n_17, A3 => n_23, ZN => n_47);
  g2698 : IAO21D0BWP7T port map(A1 => n_15, A2 => n_24, B => n_29, ZN => n_25);
  g2700 : IND3D0BWP7T port map(A1 => n_23, B1 => n_27, B2 => n_22, ZN => n_70);
  g2703 : ND2D0BWP7T port map(A1 => n_22, A2 => n_10, ZN => n_42);
  g2696 : ND2D0BWP7T port map(A1 => n_241, A2 => n_7, ZN => n_60);
  g2701 : INR2D0BWP7T port map(A1 => n_20, B1 => rw, ZN => n_21);
  g2702 : ND2D0BWP7T port map(A1 => n_20, A2 => rw, ZN => n_26);
  g2695 : INR2D0BWP7T port map(A1 => n_18, B1 => n_17, ZN => n_19);
  g2704 : INR2D0BWP7T port map(A1 => n_24, B1 => n_18, ZN => n_67);
  g2697 : NR3D0BWP7T port map(A1 => n_18, A2 => row_counter(0), A3 => row_counter(1), ZN => n_46);
  g2706 : MAOI22D0BWP7T port map(A1 => n_27, A2 => sqi_finished, B1 => n_34, B2 => sqi_finished, ZN => n_16);
  g2708 : OAI21D0BWP7T port map(A1 => n_15, A2 => sqi_finished, B => n_9, ZN => n_29);
  g2709 : NR2D0BWP7T port map(A1 => n_18, A2 => n_14, ZN => n_56);
  g2705 : INVD0BWP7T port map(I => n_241, ZN => n_73);
  g2711 : NR2D0BWP7T port map(A1 => n_34, A2 => n_11, ZN => n_22);
  g2713 : INR2D0BWP7T port map(A1 => n_11, B1 => state(2), ZN => n_36);
  g2714 : NR2D0BWP7T port map(A1 => n_10, A2 => state(1), ZN => n_20);
  g2707 : NR4D0BWP7T port map(A1 => n_9, A2 => n_4, A3 => row_counter(0), A4 => row_counter(1), ZN => n_17);
  g2712 : ND2D0BWP7T port map(A1 => n_34, A2 => sqi_finished, ZN => n_18);
  g2716 : IND2D0BWP7T port map(A1 => n_23, B1 => n_7, ZN => n_8);
  g2715 : INVD0BWP7T port map(I => n_34, ZN => n_15);
  g2717 : IND2D0BWP7T port map(A1 => n_7, B1 => ce, ZN => n_10);
  g2721 : AOI21D0BWP7T port map(A1 => row_counter(0), A2 => row_counter(1), B => n_9, ZN => n_11);
  g2719 : INVD0BWP7T port map(I => n_12, ZN => n_27);
  g2720 : NR3D0BWP7T port map(A1 => n_1, A2 => n_0, A3 => state(0), ZN => n_31);
  g2718 : NR3D0BWP7T port map(A1 => state(1), A2 => state(2), A3 => state(0), ZN => n_34);
  g2722 : NR3D0BWP7T port map(A1 => n_5, A2 => state(2), A3 => state(1), ZN => n_12);
  g2726 : ND2D0BWP7T port map(A1 => state(0), A2 => state(2), ZN => n_7);
  g2724 : ND2D0BWP7T port map(A1 => state(0), A2 => state(1), ZN => n_9);
  g2725 : ND2D0BWP7T port map(A1 => n_3, A2 => n_2, ZN => n_4);
  g2729 : NR4D0BWP7T port map(A1 => y(5), A2 => y(4), A3 => y(6), A4 => y(7), ZN => n_3);
  g2730 : NR4D0BWP7T port map(A1 => y(1), A2 => y(0), A3 => y(2), A4 => y(3), ZN => n_2);
  g2732 : INVD0BWP7T port map(I => n_1, ZN => n_23);
  g2731 : IND2D0BWP7T port map(A1 => row_counter(1), B1 => row_counter(0), ZN => n_14);
  g2734 : ND2D0BWP7T port map(A1 => state(2), A2 => state(1), ZN => n_1);
  g2733 : INR2D0BWP7T port map(A1 => row_counter(1), B1 => row_counter(0), ZN => n_24);
  drc_bufs2801 : INVD1BWP7T port map(I => n_0, ZN => n_95);
  drc_bufs2802 : INVD1BWP7T port map(I => reset, ZN => n_0);
  drc_bufs2803 : INVD4BWP7T port map(I => n_99, ZN => calc_buf_out(1));
  drc_bufs2809 : INVD4BWP7T port map(I => n_105, ZN => calc_buf_out(3));
  drc_bufs2815 : INVD4BWP7T port map(I => n_111, ZN => calc_buf_out(7));
  drc_bufs2821 : INVD4BWP7T port map(I => n_117, ZN => calc_buf_out(4));
  drc_bufs2827 : INVD4BWP7T port map(I => n_123, ZN => calc_buf_out(0));
  drc_bufs2833 : INVD4BWP7T port map(I => n_129, ZN => calc_buf_out(2));
  drc_bufs2839 : INVD4BWP7T port map(I => n_135, ZN => calc_buf_out(5));
  drc_bufs2845 : INVD4BWP7T port map(I => n_141, ZN => calc_buf_out(6));
  drc_bufs2851 : INVD4BWP7T port map(I => n_147, ZN => calc_buf_out(16));
  drc_bufs2857 : INVD4BWP7T port map(I => n_153, ZN => calc_buf_out(15));
  drc_bufs2863 : INVD4BWP7T port map(I => n_159, ZN => calc_buf_out(14));
  drc_bufs2869 : INVD4BWP7T port map(I => n_165, ZN => calc_buf_out(13));
  drc_bufs2875 : INVD4BWP7T port map(I => n_171, ZN => calc_buf_out(12));
  drc_bufs2881 : INVD4BWP7T port map(I => n_177, ZN => calc_buf_out(20));
  drc_bufs2887 : INVD4BWP7T port map(I => n_183, ZN => calc_buf_out(10));
  drc_bufs2893 : INVD4BWP7T port map(I => n_189, ZN => calc_buf_out(9));
  drc_bufs2899 : INVD4BWP7T port map(I => n_195, ZN => calc_buf_out(8));
  drc_bufs2905 : INVD4BWP7T port map(I => n_201, ZN => calc_buf_out(11));
  drc_bufs2911 : INVD4BWP7T port map(I => n_207, ZN => calc_buf_out(18));
  drc_bufs2917 : INVD4BWP7T port map(I => n_213, ZN => calc_buf_out(19));
  drc_bufs2923 : INVD4BWP7T port map(I => n_219, ZN => calc_buf_out(22));
  drc_bufs2929 : INVD4BWP7T port map(I => n_225, ZN => calc_buf_out(23));
  drc_bufs2935 : INVD4BWP7T port map(I => n_231, ZN => calc_buf_out(17));
  drc_bufs2941 : INVD4BWP7T port map(I => n_237, ZN => calc_buf_out(21));
  state_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => new_State(0), D => n_0, Q => state(0), QN => n_5);
  calc_buf_out_reg_1 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_1_408, DB => new_calc_buf_out(1), SA => n_95, Q => calc_buf_out_1_408, QN => n_99);
  calc_buf_out_reg_3 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_3_410, DB => new_calc_buf_out(3), SA => n_95, Q => calc_buf_out_3_410, QN => n_105);
  calc_buf_out_reg_7 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_7_414, DB => new_calc_buf_out(7), SA => reset, Q => calc_buf_out_7_414, QN => n_111);
  calc_buf_out_reg_4 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_4_411, DB => new_calc_buf_out(4), SA => reset, Q => calc_buf_out_4_411, QN => n_117);
  calc_buf_out_reg_0 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_0_407, DB => new_calc_buf_out(0), SA => reset, Q => calc_buf_out_0_407, QN => n_123);
  calc_buf_out_reg_2 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_2_409, DB => new_calc_buf_out(2), SA => n_95, Q => calc_buf_out_2_409, QN => n_129);
  calc_buf_out_reg_5 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_5_412, DB => new_calc_buf_out(5), SA => reset, Q => calc_buf_out_5_412, QN => n_135);
  calc_buf_out_reg_6 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_6_413, DB => new_calc_buf_out(6), SA => n_95, Q => calc_buf_out_6_413, QN => n_141);
  calc_buf_out_reg_16 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_16_423, DB => new_calc_buf_out(16), SA => n_95, Q => calc_buf_out_16_423, QN => n_147);
  calc_buf_out_reg_15 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_15_422, DB => new_calc_buf_out(15), SA => n_95, Q => calc_buf_out_15_422, QN => n_153);
  calc_buf_out_reg_14 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_14_421, DB => new_calc_buf_out(14), SA => reset, Q => calc_buf_out_14_421, QN => n_159);
  calc_buf_out_reg_13 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_13_420, DB => new_calc_buf_out(13), SA => n_95, Q => calc_buf_out_13_420, QN => n_165);
  calc_buf_out_reg_12 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_12_419, DB => new_calc_buf_out(12), SA => reset, Q => calc_buf_out_12_419, QN => n_171);
  calc_buf_out_reg_20 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_20_427, DB => new_calc_buf_out(20), SA => reset, Q => calc_buf_out_20_427, QN => n_177);
  calc_buf_out_reg_10 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_10_417, DB => new_calc_buf_out(10), SA => reset, Q => calc_buf_out_10_417, QN => n_183);
  calc_buf_out_reg_9 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_9_416, DB => new_calc_buf_out(9), SA => n_95, Q => calc_buf_out_9_416, QN => n_189);
  calc_buf_out_reg_8 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_8_415, DB => new_calc_buf_out(8), SA => reset, Q => calc_buf_out_8_415, QN => n_195);
  calc_buf_out_reg_11 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_11_418, DB => new_calc_buf_out(11), SA => reset, Q => calc_buf_out_11_418, QN => n_201);
  calc_buf_out_reg_18 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_18_425, DB => new_calc_buf_out(18), SA => n_95, Q => calc_buf_out_18_425, QN => n_207);
  calc_buf_out_reg_19 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_19_426, DB => new_calc_buf_out(19), SA => n_95, Q => calc_buf_out_19_426, QN => n_213);
  calc_buf_out_reg_22 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_22_429, DB => new_calc_buf_out(22), SA => n_95, Q => calc_buf_out_22_429, QN => n_219);
  calc_buf_out_reg_23 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_23_430, DB => new_calc_buf_out(23), SA => reset, Q => calc_buf_out_23_430, QN => n_225);
  calc_buf_out_reg_17 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_17_424, DB => new_calc_buf_out(17), SA => reset, Q => calc_buf_out_17_424, QN => n_231);
  calc_buf_out_reg_21 : DFXD0BWP7T port map(CP => clk, DA => calc_buf_out_21_428, DB => new_calc_buf_out(21), SA => n_95, Q => calc_buf_out_21_428, QN => n_237);
  g2 : INR4D0BWP7T port map(A1 => n_9, B1 => n_34, B2 => n_12, B3 => n_23, ZN => n_241);

end synthesised;
