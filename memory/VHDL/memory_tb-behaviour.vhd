library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of memory_tb is
   component memory
      port(clk          : in  std_logic;
      	reset	     : in  std_logic;
           data_in      : in  std_logic_vector(7 downto 0);
           x            : in  std_logic_vector(4 downto 0);
           y            : in  std_logic_vector(7 downto 0);
           rw           : in  std_logic;
           ce           : in  std_logic;
           mode  	     : in  std_logic;
           calc_buf_in  : in  std_logic_vector(5 downto 0);
           calc_buf_out : out std_logic_vector(23 downto 0);
      	framebuffer_buf     : out std_logic_vector(157 downto 0);
           ready        : out std_logic;
   	cs	     : out std_logic;
   	en	     : out std_logic;
      	sqi_finished : in std_logic;
      	sqi_data_in  : in std_logic_vector(7 downto 0);
	sqi_data_out : out std_logic_vector(7 downto 0));
   end component;
   signal clk          : std_logic;
   signal reset	     : std_logic;
   signal data_in      : std_logic_vector(7 downto 0);
   signal x            : std_logic_vector(4 downto 0);
   signal y            : std_logic_vector(7 downto 0);
   signal rw           : std_logic;
   signal ce           : std_logic;
   signal mode  	     : std_logic;
   signal calc_buf_in  : std_logic_vector(5 downto 0);
   signal calc_buf_out : std_logic_vector(23 downto 0);
   signal framebuffer_buf     :  std_logic_vector(157 downto 0);
   signal ready        : std_logic;
   signal cs	     : std_logic;
   signal en	     : std_logic;
   signal sqi_finished : std_logic;
   signal sqi_data_in  : std_logic_vector(7 downto 0);
   signal sqi_data_out : std_logic_vector(7 downto 0);
begin
   test: memory port map (clk, reset, data_in, x, y, rw, ce, mode, calc_buf_in, calc_buf_out, framebuffer_buf, ready, cs, en, sqi_finished, sqi_data_in,
	sqi_data_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 30 ns;
   data_in <= (others => '0') after 0 ns;

   x <= (others => '0') after 0 ns,
	"00010" after 2800 ns;
   y <= (7 => '1', others => '0') after 0 ns,
	(others => '0') after 400 ns;

   rw <= '1' after 0 ns,
	 '0' after 880 ns,
	 '1' after 1000 ns,
	 '0' after 2800 ns;
   ce <= '1' after 0 ns,
	 '0' after 120 ns,
	 '1' after 400 ns,
	 '0' after 760 ns,
	 '1' after 880 ns,
	 '0' after 960 ns,
	 '1' after 1000 ns,
	 '0' after 2680 ns,
	 '1' after 2800 ns,
	 '0' after 2900 ns;
   mode <= '0' after 0 ns,
	   '1' after 1000 ns,
	   '0' after 2800 ns;

   calc_buf_in <= (others => '0') after 0 ns;

   sqi_finished <= '0' after 0 ns,
		   '1' after 160 ns,
		   '0' after 200 ns,
		   '1' after 270 ns,
		   '0' after 320 ns,
		   '1' after 360 ns,
		   '0' after 400 ns,
		   '1' after 560 ns,
		   '0' after 600 ns,
		   '1' after 680 ns,
		   '0' after 760 ns,
		   '1' after 960 ns;

   sqi_data_in <= (0 => '1', others => '0') after 0 ns,
		  (7 => '1', others => '0') after 400 ns,
		  (others => '1') after 1000 ns;
end behaviour;

