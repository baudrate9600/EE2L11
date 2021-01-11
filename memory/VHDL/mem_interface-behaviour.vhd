library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of mem_interface is
component memory is
   port(clk          : in  std_logic;
   	reset	     : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        x            : in  std_logic_vector(4 downto 0);
        y            : in  std_logic_vector(7 downto 0);
        rw           : in  std_logic;
        ce           : in  std_logic;
        mode  	     : in  std_logic;
	grid	     : in  std_logic;
        calc_buf_in  : in  std_logic_vector(5 downto 0);
        calc_buf_out : out std_logic_vector(23 downto 0);
	framebuffer_buf : out std_logic_vector(157 downto 0);
        ready        : out std_logic;
	cs	     : out std_logic;
	en	     : out std_logic;
   	-- TEMPORARY FOR TESTING
   	sqi_finished : in std_logic;
   	sqi_data_in  : in std_logic_vector(7 downto 0);
	sqi_data_out : out std_logic_vector(7 downto 0));
end component;

component sqi is
	port (
		reset    : in std_logic;
		clk      : in std_logic;
		en       : in std_logic;

		high_z   : out std_logic;
		single   : in std_logic;
		new_data : out std_logic;
		rw       : in std_logic;
		address  : in std_logic_vector (14 downto 0);
		data_in  : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		sck      : out std_logic;
		mosi     : out std_logic_vector(3 downto 0);
		miso     : in std_logic_vector(3 downto 0);
		cs       : out std_logic;

		done     : out std_logic
	);
end component;
signal i_single, i_new_data,i_data_in, i_data_out, i_done : std_logic; 
signal i_address 
begin 
	u0: sqi port map (reset, clk, en, high_z, i_single, i_new_data, i_rw,i_address, i_data_in, i_data_out, sck, mosi, miso, cs,i_done); 
	u1: memory port map(clk, reset, data_in, x,y,rw,ce,mode,grid,calc_buf_in, calc_buf_out,framebuffer_buf,ready,cs_1,en_1,i_done, i_data_in, i_data_out); 
end behaviour;
