library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of memory is
signal sqi_address : std_logic_vector(14 downto 0);
signal sqi_enabled : std_logic;
signal row_counter, new_row_counter : unsigned(1 downto 0);

type memory_state is (READING, WRITING, READ_FRAMEBUFFER, READ_ROW, WRITE_ROW,
	IDLE, RESET_STATE);
signal state, new_State : memory_state;
signal out_low, out_middle, out_high : std_logic_vector(7 downto 0);
signal new_calc_buf_out : std_logic_vector(23 downto 0);
begin
	-- New state  generation
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				row_counter <= to_unsigned(0, row_counter'length);
				state <= RESET_STATE;
			else
				calc_buf_out <= new_calc_buf_out;
				row_counter <= new_row_counter;
				state <= new_state;
			end if;
		end if;
	end process;

	-- FSM
FSM:	process(state, ce, sqi_finished, reset, sqi_data_in, row_counter, x, y, rw)
	variable row : unsigned(7 downto 0);
	variable column : unsigned(3 downto 0);
	begin
		case state is
			when RESET_STATE =>
				new_calc_buf_out <= (others => '0');
				ready <= '1';
				sqi_enabled <= '0';
				if (reset = '1') then
					new_state <= RESET_STATE;
				else
					new_state <= IDLE;
				end if;
			when IDLE =>
				ready <= '1';
				sqi_enabled <= '0';
				if (ce = '1') then
					new_row_counter <= to_unsigned(0, row_counter'length);
					if (rw = '1') then
						new_state <= READ_ROW;
					else
						new_state <= WRITE_ROW;
					end if;
				else
					new_state <= IDLE;
				end if;	
			when READING =>
				ready <= '0';
				sqi_enabled <= '1';
				if (sqi_finished = '1') then
					case row_counter is
						when to_unsigned(0, row_counter'length) =>
							new_calc_buf_out(23 downto 8) <= calc_buf_out(23 downto 8);
							new_calc_buf_out(7 downto 0) <= sqi_data_in;
						when to_unsigned(1, row_counter'length) =>
							new_calc_buf_out(23 downto 16) <= calc_buf_out(23 downto 16);
							new_calc_buf_out(15 downto 8) <= sqi_data_in;
							new_calc_buf_out(7 downto 0) <= calc_buf_out(7 downto 0);
						when to_unsigned(2, row_counter'length) =>
							new_calc_buf_out(15 downto 0) <= calc_buf_out(15 downto 0);
							new_calc_buf_out(23 downto 16) <= sqi_data_in;
						when others =>
							new_calc_buf_out <= calc_buf_out;
					end case;

					new_row_counter <= row_counter + 1;
					new_state <= READ_ROW;
				else
					new_calc_buf_out <= calc_buf_out;
					new_state <= READING;
					new_row_counter <= row_counter;
				end if;
			when WRITING =>
				ready <= '0';
				sqi_enabled <= '1';
				new_calc_buf_out <= calc_buf_out;
				if (sqi_finished = '1') then
					new_state <= WRITE_ROW;
				else
					new_state <= WRITING;
				end if;

			when READ_FRAMEBUFFER =>

			when READ_ROW =>
				-- have address of middle row in x and y,
				-- need to convert them to proper rows and read
				-- them one by one
				ready <= '0';
				row := unsigned(y);
				column := unsigned(x);
				new_calc_buf_out(23 downto 8) <= calc_buf_out(23 downto 8);
				if (row_counter < 3) then
					if (row = 0 and row_counter = 0) then
						new_calc_buf_out(7 downto 0) <= (others => '0');
						sqi_address <= std_logic_vector(resize(((row) + (column * 32)), sqi_address'length));
						new_row_counter <= row_counter + 1;
					else
						new_calc_buf_out(7 downto 0) <= calc_buf_out(7 downto 0);
						sqi_address <= std_logic_vector(resize(((row - 1) + (column * 32)), sqi_address'length));
						new_row_counter <= row_counter;
					end if;

					sqi_enabled <= '1';
					new_state <=  READING;
				else
					new_state <= IDLE;
				end if;
			when WRITE_ROW =>

		end case;
	end process;
end behaviour;

