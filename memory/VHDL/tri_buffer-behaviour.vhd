library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of tri_buffer is
begin
	process(EN,input) begin
		if(EN = '1')then 
				output <= input;
		else 
				output <= "ZZZZ";
		end if;
	end process; 
end behaviour;

