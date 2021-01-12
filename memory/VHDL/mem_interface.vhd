library IEEE;
use IEEE.std_logic_1164.ALL;

entity mem_interface is
	port (
		reset    	: in  std_logic;
		clk      	: in  std_logic;
		en       	: in  std_logic;
		high_z   	: out std_logic;
		sck      	: out std_logic;
		mosi     	: out std_logic_vector(3 downto 0);
		miso     	: in  std_logic_vector(3 downto 0);
		cs       	: out std_logic;
		done     	: out std_logic;
		data_in      	: in  std_logic_vector(7 downto 0);
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
		cs_1	     	: out std_logic;
		en_1	     	: out std_logic
	);
end mem_interface;

