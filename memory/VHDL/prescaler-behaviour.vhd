library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of prescaler is
signal clock_divider : std_logic;  
begin
	 process(CLK_IN,divide_2) begin
			if divide_2 = '1' then
				if rising_edge(CLK_IN) then 
						clock_divider <= not clock_divider;
				end if; 
				CLK_OUT <= clock_divider; 
			else 
				CLK_OUT <= CLK_IN;
			end if;  
  	end process; 
end behaviour;

