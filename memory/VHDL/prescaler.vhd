library IEEE;
use IEEE.std_logic_1164.ALL;

entity prescaler is
   port(CLK_IN   : in  std_logic;
        divide_2 : in  std_logic;
				CLK_OUT 	: out std_logic);
end prescaler;

