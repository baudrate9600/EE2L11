library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of sqi_tb is
   component sqi
      port(reset    : in std_logic;
           clk      : in std_logic;
           cs       : out std_logic;
           en       : in std_logic;
   					 SCK	 : out std_logic;
   					 MOSI     : out std_logic_vector(3 downto 0);	
      	    RW	 : in std_logic;
      	    data_in  : in std_logic_vector(7 downto 0);
					 address  : in std_logic_vector(14 downto 0)
   	);
   end component;
   signal reset    : std_logic;
   signal clk      : std_logic;
   signal cs       : std_logic;
   signal en       : std_logic;
   signal SCK	 : std_logic;
   signal MOSI     : std_logic_vector(3 downto 0);
   signal RW	 : std_logic;
   signal data_in  : std_logic_vector(7 downto 0);
   signal address  : std_logic_vector(14 downto 0);
begin
   test: sqi port map (reset, clk, cs, en, SCK, MOSI, RW, data_in,address);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
	 reset <= '0' after 0 ns, '1' after 10 ns, '0' after 50 ns;
   RW <= '0' after 0 ns;
	 en <= '0' after 0 ns,
				 '1' after 55 ns,
				 '0' after 70 ns; 
   data_in(0) <= '0' after 0 ns, '1' after 1 ns;
   data_in(1) <= '0' after 0 ns, '1' after 1 ns;
   data_in(2) <= '0' after 0 ns, '1' after 1 ns;
   data_in(3) <= '0' after 0 ns, '1' after 1 ns;
   data_in(4) <= '0' after 0 ns, '0' after 1 ns;
   data_in(5) <= '0' after 0 ns, '0' after 1 ns;
   data_in(6) <= '0' after 0 ns, '0' after 1 ns;
   data_in(7) <= '0' after 0 ns, '0' after 1 ns;
	 address <= "1"&"1001"&"1001"&"0000"& "11";

end behaviour;

