library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behaviour of counter16 is
	signal count : unsigned(3 downto 0);
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				count <= "0000";
			else
				if (load = '1') then
					count <= unsigned(count_in);
				elsif (enable = '1') then
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
	count_out <= std_logic_vector(count);
end behaviour;
