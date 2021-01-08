library IEEE;
use IEEE.std_logic_1164.ALL;

entity abs_address is
   port(reg     : in  std_logic_vector(7 downto 0);
        address : out std_logic_vector(4 downto 0));
end abs_address;

