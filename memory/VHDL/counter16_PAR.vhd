
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of counter16 is

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD5BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal FE_OFN0_count_out_0 : std_logic;
  signal count : std_logic_vector(3 downto 0);
  signal n_1, n_2, n_4, n_5, n_7 : std_logic;
  signal n_8, n_10, n_11, n_12, n_13 : std_logic;
  signal n_22, n_23, n_24, n_27, n_33 : std_logic;
  signal n_39 : std_logic;

begin

  FE_OFC0_count_out_0 : BUFFD5BWP7T port map(I => FE_OFN0_count_out_0, Z => count_out(0));
  g262 : AO22D0BWP7T port map(A1 => n_22, A2 => n_11, B1 => count_in(3), B2 => n_10, Z => n_13);
  g264 : AO22D0BWP7T port map(A1 => n_23, A2 => n_11, B1 => count_in(2), B2 => n_10, Z => n_12);
  g267 : AO22D0BWP7T port map(A1 => n_24, A2 => n_11, B1 => count_in(1), B2 => n_10, Z => n_7);
  count_reg_0 : DFQD1BWP7T port map(CP => clk, D => n_4, Q => FE_OFN0_count_out_0);
  g269 : IND2D1BWP7T port map(A1 => n_5, B1 => count_out(2), ZN => n_8);
  g271 : AO22D0BWP7T port map(A1 => n_1, A2 => n_11, B1 => count_in(0), B2 => n_10, Z => n_4);
  g273 : IND2D1BWP7T port map(A1 => n_2, B1 => count_out(1), ZN => n_5);
  g274 : CKXOR2D0BWP7T port map(A1 => count_out(0), A2 => enable, Z => n_1);
  g276 : INR2D1BWP7T port map(A1 => load, B1 => reset, ZN => n_10);
  g275 : ND2D1BWP7T port map(A1 => count_out(0), A2 => enable, ZN => n_2);
  g277 : NR2D1BWP7T port map(A1 => load, A2 => reset, ZN => n_11);
  g2 : XNR2D1BWP7T port map(A1 => n_8, A2 => count(3), ZN => n_22);
  g283 : XNR2D1BWP7T port map(A1 => n_5, A2 => count(2), ZN => n_23);
  g284 : XNR2D1BWP7T port map(A1 => n_2, A2 => count(1), ZN => n_24);
  drc_bufs285 : INVD5BWP7T port map(I => n_27, ZN => count_out(1));
  drc_bufs291 : INVD5BWP7T port map(I => n_33, ZN => count_out(2));
  drc_bufs297 : INVD5BWP7T port map(I => n_39, ZN => count_out(3));
  count_reg_1 : DFD0BWP7T port map(CP => clk, D => n_7, Q => count(1), QN => n_27);
  count_reg_2 : DFD0BWP7T port map(CP => clk, D => n_12, Q => count(2), QN => n_33);
  count_reg_3 : DFD0BWP7T port map(CP => clk, D => n_13, Q => count(3), QN => n_39);

end routed;
