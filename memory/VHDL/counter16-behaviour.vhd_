LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ARCHITECTURE behaviour OF counter16 IS
	SIGNAL count : unsigned(3 DOWNTO 0);
BEGIN
	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF reset = '1' THEN
				count <= "0000";
			ELSE
				IF (load = '1') THEN
					count <= unsigned(count_in);
				ELSIF (enable = '1') THEN
					count <= count + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	count_out <= std_logic_vector(count);
END behaviour;