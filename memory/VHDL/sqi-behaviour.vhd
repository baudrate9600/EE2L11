library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
architecture behaviour of sqi is
	signal count_reset  : std_logic;
	signal count_en     : std_logic;
	signal count_load   : std_logic;
	signal count_in     : std_logic_vector(3 downto 0);
	signal count_out    : std_logic_vector(3 downto 0);
	signal data_wire    : std_logic_vector(7 downto 0);
	signal data_read    : std_logic_vector(7 downto 0);
	signal data_read_in : std_logic_vector (7 downto 0);

	signal load_reg     : std_logic;
	signal shift_reg    : std_logic;
	signal shift_in     : std_logic_vector(3 downto 0);
	signal shift_out    : std_logic_vector(3 downto 0);
	signal shift_reset  : std_logic;



	signal spi_wire   : std_logic;
	signal shift_clk  : std_logic;

	--All the components
	component counter16 is
		port (
			clk       : in std_logic;
			reset     : in std_logic;
			load      : in std_logic;
			enable    : in std_logic;
			count_in  : in std_logic_vector(3 downto 0);
			count_out : out std_logic_vector(3 downto 0)
		);
	end component;

	component shift_register is
		port (
			clk       : in std_logic;
			reset     : in std_logic;
			load      : in std_logic;
			shift     : in std_logic;
			data_in   : in std_logic_vector(7 downto 0);
			data_out  : out std_logic_vector(7 downto 0);
			shift_in  : in std_logic_vector(3 downto 0);
			shift_out : out std_logic_vector(3 downto 0)
		);
	end component;
	component sqi_controller is
	port (
		clk           : in std_logic;
		reset         : in std_logic;
		en            : in std_logic;
		clear							: in std_logic; 
		RW            : in std_logic;
		high_z        : out std_logic;
		new_data      : out std_logic;
		single        : in std_logic;
		data_in       : in std_logic_vector(7 downto 0);
		shift_data_in : in std_logic_vector(7 downto 0);
		data_read     : out std_logic_vector(7 downto 0);
		data_out      : out std_logic_vector(7 downto 0);
		address       : in std_logic_vector(23 downto 0);
		--counter interface
		count_reset : out std_logic;
		count_en    : out std_logic;
		count_load  : out std_logic;
		count_in    : in std_logic_vector(3 downto 0);
		count_out   : out std_logic_vector(3 downto 0);
		--shift register interface
		shift_clk   : out std_logic;
		reg_shift   : out std_logic;
		reg_load    : out std_logic;
		done        : out std_logic;
		shift_in    : in std_logic_vector(3 downto 0);
		shift_reset : out std_logic;
		--SQI wires
		sck  : out std_logic;
		cs   : out std_logic;
		MOSI : out std_logic_vector (3 downto 0)
	);
end component;

begin
	u0 : counter16
	port map(clk, count_reset, count_load, count_en, count_in, count_out);
	u1 : shift_register
	port map(shift_clk, shift_reset, load_reg, shift_reg, data_wire, data_read_in, miso, shift_out);
	u2 : sqi_controller
	port map
	(clk,reset,en,clear,rw,high_z,new_data,single,data_in,data_read_in, data_out,data_wire,address,count_reset,count_en,count_load,count_out,count_in, shift_clk,
		shift_reg,load_reg,done,shift_out,shift_reset,sck,cs,mosi);

 
 
 
end behaviour;

