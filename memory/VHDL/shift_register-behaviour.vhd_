LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ARCHITECTURE behaviour OF shift_register IS
	SIGNAL reg : std_logic_vector(7 DOWNTO 0);
BEGIN
	--Shift register
	PROCESS (clk, reg)
	BEGIN
		IF rising_edge(clk) THEN 
			IF reset = '1' THEN
				reg <= "00000000";
			ELSE
				IF (load = '1') THEN
					reg(0) <= data_in(0);
					reg(1) <= data_in(4);
					reg(2) <= data_in(1);
					reg(3) <= data_in(5);
					reg(4) <= data_in(2);
					reg(5) <= data_in(6);
					reg(6) <= data_in(3);
					reg(7) <= data_in(7);
				ELSIF (shift = '1') THEN
					reg(1 DOWNTO 0) <= shift_in(0) & reg(1);
					reg(3 DOWNTO 2) <= shift_in(1) & reg(3);
					reg(5 DOWNTO 4) <= shift_in(2) & reg(5);
					reg(7 DOWNTO 6) <= shift_in(3) & reg(7);
				ELSE
					reg <= reg;
				END IF;
			END IF;
		END IF;
		shift_out(0) <= reg(0);
		shift_out(1) <= reg(2);
		shift_out(2) <= reg(4);
		shift_out(3) <= reg(6);

		data_out     <= reg;
	END PROCESS;
END behaviour;