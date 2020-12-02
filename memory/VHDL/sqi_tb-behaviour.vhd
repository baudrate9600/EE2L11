library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of sqi_tb is
   component sqi
      port(reset    	: in std_logic;
        clk      	: in std_logic;
        en       	: in  std_logic;
				
				RW	 				: in std_logic;
				address  	: in std_logic_vector (14 downto 0); 
   				data_in  	: in std_logic_vector(7 downto 0);
				data_out 	: out std_logic_vector(7 downto 0);
		
				SCK	 				: out std_logic;
				MOSI     	: out std_logic_vector(3 downto 0);	
				MISO     	: in  std_logic_vector(3 downto 0); 
				CS       	: out std_logic;
   				
			  --busy     	: out std_logic;
   				done     	: out std_logic
				);
   end component;
   signal reset    : std_logic;
   signal clk      : std_logic;
   signal en       : std_logic;

   signal RW	 					:	std_logic;
	 signal data_out : std_logic_vector(7 downto 0); 

   signal data_in  : std_logic_vector(7 downto 0);
   signal address  : std_logic_vector(14 downto 0);	
		
   signal SCK	 				: std_logic;
   signal MOSI     : std_logic_vector(3 downto 0);
	 signal MISO     : std_logic_vector(3 downto 0); 
	 signal cs       : std_logic;

	 
	 signal done : std_logic;
begin
   test: sqi port map (reset, clk, en, RW, address, data_in, data_out, SCK, MOSI,MISO, CS,done );
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
	 reset <= '0' after 0 ns, '1' after 10 ns, '0' after 50 ns;
   RW <= '0' after 0 ns, '1' after 1000 ns;
	 en <= '0' after 0 ns,
				 '1' after 480 ns,
				 '0' after 529 ns,
				 '1' after 1000 ns,
				 '0' after 1040 ns; 
   data_in(0) <= '0' after 0 ns, '1' after 1 ns;
   data_in(1) <= '0' after 0 ns, '1' after 1 ns;
   data_in(2) <= '0' after 0 ns, '0' after 1 ns;
   data_in(3) <= '0' after 0 ns, '1' after 1 ns;
   data_in(4) <= '0' after 0 ns, '0' after 1 ns;
   data_in(5) <= '0' after 0 ns, '1' after 1 ns;
   data_in(6) <= '0' after 0 ns, '1' after 1 ns;
   data_in(7) <= '0' after 0 ns, '0' after 1 ns;
	 address <= "111"&"1111"&"1111"& "1111";
	 miso <= "0001";

end behaviour;

