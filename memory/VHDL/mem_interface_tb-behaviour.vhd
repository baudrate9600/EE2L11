library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of mem_interface_tb is
   component mem_interface
   	port (
   		reset    	: in  std_logic;
   		clk      	: in  std_logic;
   	
   		
   		
    		x            	: in  std_logic_vector(4 downto 0);
    		y            	: in  std_logic_vector(7 downto 0);
    		rw           	: in  std_logic;
    		ce           	: in  std_logic;
   		mode  	     	: in  std_logic;
   		edit 		: in  std_logic;
   		grid	     	: in  std_logic;
    		calc_buf_in  	: in  std_logic_vector(5 downto 0);
   		edit_buf_in	: in  std_logic_vector(7 downto 0);
   		calc_buf_out 	: out std_logic_vector(23 downto 0);
   		framebuffer_buf : out std_logic_vector(157 downto 0);
    		ready        	: out std_logic;
   		high_z   	: out std_logic;
   		sck      	: out std_logic;
   		mosi     	: out std_logic_vector(3 downto 0);
   		miso     	: in  std_logic_vector(3 downto 0);
   		cs       	: out std_logic
   	
   	);
   end component;
   signal reset    	: std_logic;
   signal clk      	: std_logic;
   signal x            	: std_logic_vector(4 downto 0);
   signal y            	: std_logic_vector(7 downto 0);
   signal rw           	: std_logic;
   signal ce           	: std_logic;
   signal mode  	     	: std_logic;
   signal edit 		: std_logic;
   signal grid	     	: std_logic;
   signal calc_buf_in  	: std_logic_vector(5 downto 0);
   signal edit_buf_in	: std_logic_vector(7 downto 0);
   signal calc_buf_out 	: std_logic_vector(23 downto 0);
   signal framebuffer_buf : std_logic_vector(157 downto 0);
   signal ready        	: std_logic;
   signal high_z   	: std_logic;
   signal sck      	: std_logic;
   signal mosi     	: std_logic_vector(3 downto 0);
   signal miso     	: std_logic_vector(3 downto 0);
   signal cs       	: std_logic;
begin
   test: mem_interface port map (reset, clk, x, y, rw, ce, mode, edit, grid, calc_buf_in, edit_buf_in, calc_buf_out, framebuffer_buf, ready, high_z, sck, mosi, miso, cs);
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   x(0) <= '0' after 0 ns;
   x(1) <= '0' after 0 ns;
   x(2) <= '0' after 0 ns;
   x(3) <= '0' after 0 ns;
   x(4) <= '0' after 0 ns;
   y(0) <= '0' after 0 ns;
   y(1) <= '0' after 0 ns;
   y(2) <= '0' after 0 ns;
   y(3) <= '0' after 0 ns;
   y(4) <= '0' after 0 ns;
   y(5) <= '0' after 0 ns;
   y(6) <= '0' after 0 ns;
   y(7) <= '0' after 0 ns;
   rw <= '1' after 0 ns;
   ce <= '0' after 0 ns, '1' after 10 ns;
   mode <= '0' after 0 ns;
   edit <= '0' after 0 ns;
   grid <= '0' after 0 ns;
   calc_buf_in(0) <= '0' after 0 ns;
   calc_buf_in(1) <= '0' after 0 ns;
   calc_buf_in(2) <= '0' after 0 ns;
   calc_buf_in(3) <= '0' after 0 ns;
   calc_buf_in(4) <= '0' after 0 ns;
   calc_buf_in(5) <= '0' after 0 ns;
   edit_buf_in(0) <= '0' after 0 ns;
   edit_buf_in(1) <= '0' after 0 ns;
   edit_buf_in(2) <= '0' after 0 ns;
   edit_buf_in(3) <= '0' after 0 ns;
   edit_buf_in(4) <= '0' after 0 ns;
   edit_buf_in(5) <= '0' after 0 ns;
   edit_buf_in(6) <= '0' after 0 ns;
   edit_buf_in(7) <= '0' after 0 ns;
   miso(0) <= '1' after 0 ns;
   miso(1) <= '1' after 0 ns;
   miso(2) <= '0' after 0 ns;
   miso(3) <= '0' after 0 ns;

	
end behaviour;

