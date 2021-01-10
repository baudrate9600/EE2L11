library IEEE;
use IEEE.std_logic_1164.ALL;

entity sram_test is
   port(CLK 				: in std_logic; 
				RESET    : in std_logic; 
				SCK 				 : out std_logic; 
				CS 				 : out std_logic; 
				high_z   : out std_logic; 
				MISO     : in std_logic_vector(3 downto 0);  
				MOSI 			 : OUT std_logic_vector(3 downto 0);
				data_out : out std_logic_vector(7 downto 0));
end sram_test;

