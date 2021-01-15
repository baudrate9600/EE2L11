library IEEE;
use IEEE.std_logic_1164.ALL;

entity address_alu is
	port(x : in std_logic_vector(4 downto 0); 
			 y : in std_logic_vector(7 downto 0); 
			 grid : in std_logic; 
			 x_min_one : in std_logic; 
			 y_min_one : in std_logic; 	
			 address_out : out std_logic_vector(15 downto 0)
	     ); 
end address_alu;

