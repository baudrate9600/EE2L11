
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of sqi is

  component counter16
    port(clk       : in  std_logic;
         reset     : in  std_logic;
         load      : in  std_logic;
         enable    : in  std_logic;
         count_in  : in  std_logic_vector(3 downto 0);
         count_out : out std_logic_vector(3 downto 0));
  end component;

  component shift_register
    port(clk       : in  std_logic;
         reset     : in  std_logic;
         load      : in  std_logic;
         shift     : in  std_logic;
         data_in   : in  std_logic_vector(7 downto 0);
         data_out  : out std_logic_vector(7 downto 0);
         shift_in  : in  std_logic_vector(3 downto 0);
         shift_out : out std_logic_vector(3 downto 0));
  end component;

  component sqi_controller
    port(clk         : in  std_logic;
         reset       : in  std_logic;
         en          : in  std_logic;
         RW          : in  std_logic;
         data_in     : in  std_logic_vector(7 downto 0);
         data_read   : out std_logic_vector(7 downto 0);
         data_out    : out std_logic_vector(7 downto 0);
         address     : in  std_logic_vector(14 downto 0);
         count_reset : out std_logic;
         count_en    : out std_logic;
         count_load  : out std_logic;
         count_in    : in  std_logic_vector(3 downto 0);
         count_out   : out std_logic_vector(3 downto 0);
         reg_shift   : out std_logic;
         reg_load    : out std_logic;
         done        : out std_logic;
         shift_in    : in  std_logic_vector(3 downto 0);
         shift_reset : out std_logic;
         sck         : out std_logic;
         cs          : out std_logic;
         MOSI        : out std_logic_vector(3 downto 0));
  end component;

  signal count_in : std_logic_vector(3 downto 0);
  signal count_out : std_logic_vector(3 downto 0);
  signal data_wire : std_logic_vector(7 downto 0);
  signal data_read_in : std_logic_vector(7 downto 0);
  signal shift_out : std_logic_vector(3 downto 0);
  signal count_en, count_load, count_reset, load_reg, shift_reg : std_logic;
  signal shift_reset : std_logic;

begin

  u0 : counter16 port map(clk => clk, reset => count_reset, load => count_load, enable => count_en, count_in => count_in, count_out => count_out);
  u1 : shift_register port map(clk => clk, reset => shift_reset, load => load_reg, shift => shift_reg, data_in => data_wire, data_out => data_read_in, shift_in => MISO, shift_out => shift_out);
  u2 : sqi_controller port map(clk => clk, reset => reset, en => en, RW => RW, data_in => data_read_in, data_read => data_out, data_out => data_wire, address => address, count_reset => count_reset, count_en => count_en, count_load => count_load, count_in => count_out, count_out => count_in, reg_shift => shift_reg, reg_load => load_reg, done => done, shift_in => shift_out, shift_reset => shift_reset, sck => SCK, cs => CS, MOSI => MOSI);

end synthesised;
