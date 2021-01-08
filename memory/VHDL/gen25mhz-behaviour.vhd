library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
architecture behaviour of gen25mhz is


begin
   lbl1: process (clk50mhz)
 		variable clock_divider : std_logic := '0'; 
		 
   begin
      if rising_edge(clk50mhz) then 
						clock_divider := not clock_divider;
				end if; 
				clk25mhz <= clock_divider; 
   end process;

end behaviour;

