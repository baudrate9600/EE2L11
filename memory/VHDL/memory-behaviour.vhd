library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of memory is
signal sqi_address : std_logic_vector(14 downto 0);
signal sqi_enabled : std_logic;
signal counter, new_counter : unsigned(7 downto 0);

type memory_state is (READING, WRITING_0, WRITING_1, WRITING_2, READ_FRAMEBUFFER, READING_FRAMEBUFFER, READ_ROW, WRITE_ROW_1,
	WRITE_ROW_2, WRITE_ROW_3, FETCH_PREVIOUS_ROW, IDLE, RESET_STATE);
signal state, new_state : memory_state;
signal new_calc_buf_out : std_logic_vector(23 downto 0);
signal row_buf, new_row_buf : std_logic_vector(5 downto 0);
signal new_framebuffer_buf : std_logic_vector(157 downto 0);
begin
	-- New state  generation
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				counter <= to_unsigned(0, counter'length);
				calc_buf_out <= (others => '0');
				row_buf <= (others => '0');
				framebuffer_buf <= (others => '0');
				state <= RESET_STATE;
			else
				framebuffer_buf <= new_framebuffer_buf;
				calc_buf_out <= new_calc_buf_out;
				row_buf <= new_row_buf;
				counter <= new_counter;
				state <= new_state;
			end if;
		end if;
	end process;

	-- FSM
FSM:	process(state, ce, sqi_finished, reset, sqi_data_in, counter, x, y, rw, calc_buf_out, framebuffer_buf, row_buf, mode, calc_buf_in, grid)
	variable row : unsigned(7 downto 0);
	variable column : unsigned(4 downto 0);
	begin
		case state is
			when RESET_STATE =>
				new_calc_buf_out <= (others => '0');
				new_framebuffer_buf <= (others => '0');
				new_row_buf <= (others => '0');
				new_counter <= to_unsigned(0, counter'length);
				ready <= '1';
				sqi_enabled <= '0';
				single <= '0';
				sqi_rw <= '0';
				sqi_data_out <= (others => '0');
				if (reset = '1') then
					new_state <= RESET_STATE;
				else
					new_state <= IDLE;
				end if;
			when IDLE =>
				ready <= '1';
				sqi_enabled <= '0';
				single <= '0';
				sqi_rw <= '0';
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out <= (others => '0');
				if (ce = '1') then
					new_counter <= to_unsigned(0, counter'length);
					if (rw = '1') then
						if (mode = '0') then
							new_state <= READ_ROW;
						else
							new_state <= READ_FRAMEBUFFER;
						end if;
					else
						new_state <= WRITE_ROW_1;
					end if;
				else
					new_state <= IDLE;
				end if;	
			when READING =>
				ready <= '0';
				sqi_enabled <= '1';
				single <= '0';
				sqi_rw <= '1';
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out <= (others => '0');
				if (sqi_finished = '1') then
					case counter is
						when to_unsigned(0, counter'length) =>
							new_calc_buf_out(23 downto 8) <= calc_buf_out(23 downto 8);
							new_calc_buf_out(7 downto 0) <= sqi_data_in;
						when to_unsigned(1, counter'length) =>
							new_calc_buf_out(23 downto 16) <= calc_buf_out(23 downto 16);
							new_calc_buf_out(15 downto 8) <= sqi_data_in;
							new_calc_buf_out(7 downto 0) <= calc_buf_out(7 downto 0);
						when to_unsigned(2, counter'length) =>
							new_calc_buf_out(15 downto 0) <= calc_buf_out(15 downto 0);
							new_calc_buf_out(23 downto 16) <= sqi_data_in;
						when others =>
							new_calc_buf_out <= calc_buf_out;
					end case;

					new_counter <= counter + 1;
					new_state <= READ_ROW;
				else
					new_calc_buf_out <= calc_buf_out;
					new_state <= READING;
					new_counter <= counter;
				end if;
			when WRITING_0 =>
				ready <= '0';
				sqi_enabled <= '1';
				single <= '1';
				sqi_rw <= '0';
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out(6 downto 1) <= calc_buf_in;
				sqi_data_out(0) <= '0';
				sqi_data_out(7) <= '0';
				if (sqi_finished = '1') then
					new_state <= IDLE;
				else
					new_state <= WRITING_0;
				end if;

			when READ_FRAMEBUFFER =>
				ready <= '0';
				column := unsigned(x);
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out <= (others => '0');
				if (counter < 26) then
					if (grid = '1') then
						sqi_address <= std_logic_vector(resize(((counter) + (column * 26)), sqi_address'length));
					else
						sqi_address <= std_logic_vector(resize(((counter) + (column * 26)) + 1048576, sqi_address'length));
					end if;
					new_counter <= counter;
					new_state <= READING_FRAMEBUFFER;
				else
					new_state <= IDLE;
				end if;
			when READING_FRAMEBUFFER =>
				ready <= '0';
				sqi_enabled <= '1';
				single <= '0';
				sqi_rw <= '1';
				new_calc_buf_out <= calc_buf_out;
				sqi_data_out <= (others => '0');
				new_row_buf <= row_buf;
				if (sqi_finished = '1') then
					if (counter = 0) then
						new_framebuffer_buf(7 downto 0) <= sqi_data_in;
						new_framebuffer_buf(157 downto 8) <= framebuffer_buf(157 downto 8);
					elsif (counter = 1) then
						new_framebuffer_buf(7 downto 0) <= framebuffer_buf(7 downto 0);
						new_framebuffer_buf(13 downto 8) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 14) <= framebuffer_buf(157 downto 14);
					elsif (counter = 2) then
						new_framebuffer_buf(13 downto 0) <= framebuffer_buf(13 downto 0);
						new_framebuffer_buf(19 downto 14) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 20) <= framebuffer_buf(157 downto 20);
					elsif (counter = 3) then
						new_framebuffer_buf(19 downto 0) <= framebuffer_buf(19 downto 0);
						new_framebuffer_buf(25 downto 20) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 26) <= framebuffer_buf(157 downto 26);
					elsif (counter = 4) then
						new_framebuffer_buf(25 downto 0) <= framebuffer_buf(25 downto 0);
						new_framebuffer_buf(31 downto 26) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 32) <= framebuffer_buf(157 downto 32);
					elsif (counter = 5) then
						new_framebuffer_buf(31 downto 0) <= framebuffer_buf(31 downto 0);
						new_framebuffer_buf(37 downto 32) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 38) <= framebuffer_buf(157 downto 38);
					elsif (counter = 6) then
						new_framebuffer_buf(37 downto 0) <= framebuffer_buf(37 downto 0);
						new_framebuffer_buf(43 downto 38) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 44) <= framebuffer_buf(157 downto 44);
					elsif (counter = 7) then
						new_framebuffer_buf(43 downto 0) <= framebuffer_buf(43 downto 0);
						new_framebuffer_buf(49 downto 44) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 50) <= framebuffer_buf(157 downto 50);
					elsif (counter = 8) then
						new_framebuffer_buf(49 downto 0) <= framebuffer_buf(49 downto 0);
						new_framebuffer_buf(55 downto 50) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 56) <= framebuffer_buf(157 downto 56);
					elsif (counter = 9) then
						new_framebuffer_buf(55 downto 0) <= framebuffer_buf(55 downto 0);
						new_framebuffer_buf(61 downto 56) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 62) <= framebuffer_buf(157 downto 62);
					elsif (counter = 10) then
						new_framebuffer_buf(61 downto 0) <= framebuffer_buf(61 downto 0);
						new_framebuffer_buf(67 downto 62) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 68) <= framebuffer_buf(157 downto 68);
					elsif (counter = 11) then
						new_framebuffer_buf(67 downto 0) <= framebuffer_buf(67 downto 0);
						new_framebuffer_buf(73 downto 68) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 74) <= framebuffer_buf(157 downto 74);
					elsif (counter = 12) then
						new_framebuffer_buf(73 downto 0) <= framebuffer_buf(73 downto 0);
						new_framebuffer_buf(79 downto 74) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 80) <= framebuffer_buf(157 downto 80);
					elsif (counter = 13) then
						new_framebuffer_buf(79 downto 0) <= framebuffer_buf(79 downto 0);
						new_framebuffer_buf(85 downto 80) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 86) <= framebuffer_buf(157 downto 86);
					elsif (counter = 14) then
						new_framebuffer_buf(85 downto 0) <= framebuffer_buf(85 downto 0);
						new_framebuffer_buf(91 downto 86) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 92) <= framebuffer_buf(157 downto 92);
					elsif (counter = 15) then
						new_framebuffer_buf(91 downto 0) <= framebuffer_buf(91 downto 0);
						new_framebuffer_buf(97 downto 92) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 98) <= framebuffer_buf(157 downto 98);
					elsif (counter = 16) then
						new_framebuffer_buf(97 downto 0) <= framebuffer_buf(97 downto 0);
						new_framebuffer_buf(103 downto 98) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 104) <= framebuffer_buf(157 downto 104);
					elsif (counter = 17) then
						new_framebuffer_buf(103 downto 0) <= framebuffer_buf(103 downto 0);
						new_framebuffer_buf(109 downto 104) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 110) <= framebuffer_buf(157 downto 110);
					elsif (counter = 18) then
						new_framebuffer_buf(109 downto 0) <= framebuffer_buf(109 downto 0);
						new_framebuffer_buf(115 downto 110) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 116) <= framebuffer_buf(157 downto 116);
					elsif (counter = 19) then
						new_framebuffer_buf(117 downto 0) <= framebuffer_buf(117 downto 0);
						new_framebuffer_buf(123 downto 118) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 124) <= framebuffer_buf(157 downto 124);
					elsif (counter = 20) then
						new_framebuffer_buf(123 downto 0) <= framebuffer_buf(123 downto 0);
						new_framebuffer_buf(129 downto 124) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 130) <= framebuffer_buf(157 downto 130);
					elsif (counter = 21) then
						new_framebuffer_buf(129 downto 0) <= framebuffer_buf(129 downto 0);
						new_framebuffer_buf(135 downto 130) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 136) <= framebuffer_buf(157 downto 136);
					elsif (counter = 22) then
						new_framebuffer_buf(135 downto 0) <= framebuffer_buf(135 downto 0);
						new_framebuffer_buf(141 downto 136) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 142) <= framebuffer_buf(157 downto 142);
					elsif (counter = 23) then
						new_framebuffer_buf(141 downto 0) <= framebuffer_buf(141 downto 0);
						new_framebuffer_buf(147 downto 142) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 148) <= framebuffer_buf(157 downto 148);
					elsif (counter = 24) then
						new_framebuffer_buf(147 downto 0) <= framebuffer_buf(147 downto 0);
						new_framebuffer_buf(153 downto 148) <= sqi_data_in(7 downto 2);
						new_framebuffer_buf(157 downto 154) <= framebuffer_buf(157 downto 154);
					elsif (counter = 25) then
						new_framebuffer_buf(153 downto 0) <= framebuffer_buf(153 downto 0);
						new_framebuffer_buf(157 downto 154) <= sqi_data_in(5 downto 2);
					else
						new_framebuffer_buf <= framebuffer_buf;
					end if;
					new_counter <= counter + 1;
					new_state <= READ_FRAMEBUFFER;
				else
					new_framebuffer_buf <= framebuffer_buf;
					new_state <= READING_FRAMEBUFFER;
					new_counter <= counter;
				end if;
			when READ_ROW =>
				-- have address of middle row in x and y,
				-- need to convert them to proper rows and read
				-- them one by one
				ready <= '0';
				row := unsigned(y);
				column := unsigned(x);
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out <= (others => '0');
				if (counter < 3) then
					if (row = 0 and counter = 0) then
						new_calc_buf_out(23 downto 8) <= calc_buf_out(23 downto 8);
						new_calc_buf_out(7 downto 0) <= (others => '0');
						if (grid = '1') then
							sqi_address <= std_logic_vector(resize(((row) + (column * 26)), sqi_address'length));
						else
							sqi_address <= std_logic_vector(resize(((row) + (column * 26)) + 1048576, sqi_address'length));
						end if;
						new_counter <= counter + 1;
					else
						new_calc_buf_out(23 downto 8) <= calc_buf_out(23 downto 8);
						new_calc_buf_out(7 downto 0) <= calc_buf_out(7 downto 0);
						if (grid = '1') then
							sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)), sqi_address'length));
						else
							sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)) + 1048576, sqi_address'length));
						end if;
						new_counter <= counter;
					end if;

					sqi_enabled <= '1';
					single <= '0';
					sqi_rw <= '1';
					new_state <=  READING;
				else
					new_calc_buf_out <= calc_buf_out;
					new_state <= IDLE;
				end if;
			when WRITE_ROW_1 =>
				-- When it's the first row we can just write in the row
				-- but when we are not on the first row, we also need to write parts of the row to
				-- the previous row. So for example if we are at 1-8 we can just write 1-8, but
				-- at 6-14 we also need to write bits 7 and 8 to 1-8. This requires fetching the
				-- previous row, and then bit shifting the bits in.
				ready <= '0';
				row := unsigned(y);
				column := unsigned(x);
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				if (column = 0) then
					if (grid = '0') then
						sqi_address <= std_logic_vector(resize(((row) + (column * 26)), sqi_address'length));
					else
						sqi_address <= std_logic_vector(resize(((row) + (column * 26)) + 1048576, sqi_address'length));
					end if;
					sqi_data_out(6 downto 1) <= calc_buf_in;
					sqi_data_out(0) <= '0';
					sqi_data_out(7) <= '0';
					new_state <= WRITING_0;
				else
					if (grid = '0') then
						sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)), sqi_address'length));
					else
						sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)) + 1048576, sqi_address'length));
					end if;
					new_state <= FETCH_PREVIOUS_ROW;
				end if;
			when FETCH_PREVIOUS_ROW =>
				new_calc_buf_out <= calc_buf_out;
				ready <= '0';
				sqi_enabled <= '1';
				single <= '1';
				sqi_rw <= '1';
				new_framebuffer_buf <= framebuffer_buf;
				if (sqi_finished = '1') then
					new_row_buf <= sqi_data_in(5 downto 0);
					new_state <= WRITE_ROW_2;
				else
					new_state <= FETCH_PREVIOUS_ROW;
				end if;
			when WRITE_ROW_2 =>
				-- Now we have the previous row buffered and we can start wriring the rows
				-- First write the previous row
				ready <= '0';
				row := unsigned(y);
				column := unsigned(x);
				new_calc_buf_out <= calc_buf_out;
				new_row_buf <= row_buf;
				new_framebuffer_buf <= framebuffer_buf;
				if (grid = '0') then
					sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)), sqi_address'length));
				else
					sqi_address <= std_logic_vector(resize(((row - 1) + (column * 26)) + 1048576, sqi_address'length));
				end if;
				sqi_data_out(7 downto 6) <= calc_buf_in(1 downto 0); 
				sqi_data_out(5 downto 0) <= row_buf(5 downto 0);
				new_state <= WRITING_1;
			when WRITING_1 =>
				ready <= '0';
				sqi_enabled <= '1';
				single <= '1';
				sqi_rw <= '0';
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out(7 downto 6) <= calc_buf_in(1 downto 0); 
				sqi_data_out(5 downto 0) <= row_buf(5 downto 0);
				if (sqi_finished = '1') then
					new_state <= WRITE_ROW_3;
				else
					new_state <= WRITING_1;
				end if;
			when WRITE_ROW_3 =>
				-- Now we write the actual row we are currently on
				ready <= '0';
				row := unsigned(y);
				column := unsigned(x);
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				if (grid = '0') then
					sqi_address <= std_logic_vector(resize(((row) + (column * 26)), sqi_address'length));
				else
					sqi_address <= std_logic_vector(resize(((row) + (column * 26)) + 1048576, sqi_address'length));
				end if;
				sqi_data_out(6 downto 1) <= calc_buf_in;
				sqi_data_out(0) <= '0';
				sqi_data_out(7) <= '0';
				new_state <= WRITING_2;
			when WRITING_2 =>
				ready <= '0';
				sqi_enabled <= '1';
				single <= '1';
				sqi_rw <= '0';
				new_calc_buf_out <= calc_buf_out;
				new_framebuffer_buf <= framebuffer_buf;
				new_row_buf <= row_buf;
				sqi_data_out(6 downto 1) <= calc_buf_in;
				sqi_data_out(0) <= '0';
				sqi_data_out(7) <= '0';
				if (sqi_finished = '1') then
					new_state <= IDLE;
				else
					new_state <= WRITING_2;
				end if;
		end case;
	end process;
end behaviour;
