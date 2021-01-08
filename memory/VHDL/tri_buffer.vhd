library IEEE;
use IEEE.std_logic_1164.ALL;

entity tri_buffer is
   port(INPUT  : IN  std_logic_vector(3 downto 0);
				EN			 : IN  std_logic; 
        OUTPUT : OUT std_logic_vector(3 downto 0));
end tri_buffer;

