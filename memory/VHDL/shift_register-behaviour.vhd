library IEEE;
use IEEE.std_logic_1164.all;

architecture behaviour of shift_register is
	signal reg : std_logic_vector(7 downto 0);
begin
	--Shift register
	process (clk, reg)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				reg <= "00000000";
			else
				if (load = '1') then
					reg(0) <= data_in(0);
					reg(1) <= data_in(4);
					reg(2) <= data_in(1);
					reg(3) <= data_in(5);
					reg(4) <= data_in(2);
					reg(5) <= data_in(6);
					reg(6) <= data_in(3);
					reg(7) <= data_in(7);
				elsif (shift = '1') then
					reg(1 downto 0) <= shift_in(0) & reg(1);
					reg(3 downto 2) <= shift_in(1) & reg(3);
					reg(5 downto 4) <= shift_in(2) & reg(5);
					reg(7 downto 6) <= shift_in(3) & reg(7);
				else
					reg <= reg;
				end if;
			end if;
		end if;
		shift_out(0) <= reg(0);
		shift_out(1) <= reg(2);
		shift_out(2) <= reg(4);
		shift_out(3) <= reg(6);

		data_out     <= reg;
	end process;
end behaviour;
