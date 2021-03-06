library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of sram_test_tb is
   component sram_test
      port(CLK 				: in std_logic; 
   				RESET    : in std_logic; 
   				SCK 				 : out std_logic; 
   				CS 				 : out std_logic; 
   				SO 				 : inout std_logic_vector (3 downto 0); 
   				data_out : out std_logic_vector(7 downto 0));
   end component;
   signal CLK 				: std_logic;
   signal RESET    : std_logic;
   signal SCK 				 : std_logic;
   signal CS 				 : std_logic;
   signal SO 				 : std_logic_vector (3 downto 0);
   signal data_out : std_logic_vector(7 downto 0);
begin
   test: sram_test port map (CLK, RESET, SCK, CS, SO, data_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   RESET <= '1' after 0 ns, '0' after 60 ns;
end behaviour;

