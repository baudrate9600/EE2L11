
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shift_register is

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INVD8BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal reg : std_logic_vector(7 downto 0);
  signal n_0, n_1, n_3, n_5, n_9 : std_logic;
  signal n_11, n_12, n_13, n_14, n_16 : std_logic;
  signal n_17, n_18, n_19, n_20, n_22 : std_logic;
  signal n_41, n_47, n_53, n_59 : std_logic;

begin

  shift_out(0) <= data_out(0);
  shift_out(1) <= data_out(2);
  shift_out(2) <= data_out(4);
  shift_out(3) <= data_out(6);
  g498 : AO222D0BWP7T port map(A1 => data_out(7), A2 => n_18, B1 => data_out(6), B2 => n_19, C1 => n_17, C2 => data_in(3), Z => n_22);
  g502 : AO222D0BWP7T port map(A1 => data_out(3), A2 => n_19, B1 => n_18, B2 => shift_in(1), C1 => n_17, C2 => data_in(5), Z => n_20);
  g501 : AO222D0BWP7T port map(A1 => data_out(5), A2 => n_18, B1 => data_out(4), B2 => n_19, C1 => n_17, C2 => data_in(2), Z => n_16);
  g499 : AO222D0BWP7T port map(A1 => data_out(1), A2 => n_19, B1 => n_18, B2 => shift_in(0), C1 => n_17, C2 => data_in(4), Z => n_14);
  g504 : AO222D0BWP7T port map(A1 => reg(5), A2 => n_19, B1 => n_18, B2 => shift_in(2), C1 => n_17, C2 => data_in(6), Z => n_13);
  g497 : AO222D0BWP7T port map(A1 => reg(7), A2 => n_19, B1 => n_18, B2 => shift_in(3), C1 => n_17, C2 => data_in(7), Z => n_12);
  g503 : AO222D0BWP7T port map(A1 => reg(3), A2 => n_18, B1 => data_out(2), B2 => n_19, C1 => n_17, C2 => data_in(1), Z => n_11);
  g500 : AO222D0BWP7T port map(A1 => reg(1), A2 => n_18, B1 => data_out(0), B2 => n_19, C1 => n_17, C2 => data_in(0), Z => n_9);
  g505 : INR3D0BWP7T port map(A1 => shift, B1 => reset, B2 => load, ZN => n_18);
  g506 : NR3D0BWP7T port map(A1 => load, A2 => shift, A3 => reset, ZN => n_19);
  g512 : INVD8BWP7T port map(I => n_3, ZN => data_out(4));
  g518 : INVD8BWP7T port map(I => n_5, ZN => data_out(6));
  g515 : INVD8BWP7T port map(I => n_1, ZN => data_out(0));
  g509 : INVD8BWP7T port map(I => n_0, ZN => data_out(2));
  g507 : INR2D1BWP7T port map(A1 => load, B1 => reset, ZN => n_17);
  drc_bufs : INVD4BWP7T port map(I => n_41, ZN => data_out(1));
  drc_bufs533 : INVD4BWP7T port map(I => n_47, ZN => data_out(7));
  drc_bufs539 : INVD4BWP7T port map(I => n_53, ZN => data_out(5));
  drc_bufs545 : INVD4BWP7T port map(I => n_59, ZN => data_out(3));
  reg_reg_0 : DFD1BWP7T port map(CP => clk, D => n_9, Q => reg(0), QN => n_1);
  reg_reg_6 : DFD1BWP7T port map(CP => clk, D => n_22, Q => reg(6), QN => n_5);
  reg_reg_4 : DFD1BWP7T port map(CP => clk, D => n_16, Q => reg(4), QN => n_3);
  reg_reg_2 : DFD1BWP7T port map(CP => clk, D => n_11, Q => reg(2), QN => n_0);
  reg_reg_1 : DFD0BWP7T port map(CP => clk, D => n_14, Q => reg(1), QN => n_41);
  reg_reg_7 : DFD0BWP7T port map(CP => clk, D => n_12, Q => reg(7), QN => n_47);
  reg_reg_5 : DFD0BWP7T port map(CP => clk, D => n_13, Q => reg(5), QN => n_53);
  reg_reg_3 : DFD0BWP7T port map(CP => clk, D => n_20, Q => reg(3), QN => n_59);

end synthesised;
