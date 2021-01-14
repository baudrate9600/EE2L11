library IEEE;
use IEEE.std_logic_1164.all;

architecture behaviour of sqi_controller is
	type sqi_state is (RES, MODE, PAUSE, INIT, START, INSTR, READ, LOAD_BUFFER,CLEARING);
	signal state, new_state    : sqi_state;
	signal done_sig            : std_logic;
	signal done_reg            : std_logic;
	signal instruction         : std_logic_vector(7 downto 0);
	signal spi                 : std_logic;
	signal data_out_buffer     : std_logic_vector(7 downto 0);

	signal SHIFT_nLOAD         : std_logic;
	signal i_data_in           : std_logic_vector(7 downto 0);

	signal toggle_clk          : std_logic;
	signal SCK_CS_EN           : std_logic;
	signal RW_LATCH            : std_logic;
	signal new_rw_latch        : std_logic; 
	signal SINGLE_LATCH        : std_logic;
	signal new_single_latch    : std_logic;
begin


 
--New state generation
process (clk, new_state)
begin
	if rising_edge(clk) then
		if reset = '1' then
			state <= RES;
		else
			state <= new_state;
		end if;
	end if;
end process;

process (clk, single, rw,reset,rw_latch,single_latch) begin 
		if(reset = '1') then 
			single_latch <= '0';
			rw_latch     <= '0';  
		elsif rising_edge(clk) then 
			single_latch <= new_single_latch;
			rw_latch     <= new_rw_latch; 
		end if; 
end process;
fsm_state : process (state, en, spi, count_in, done_sig, RW, single)
begin
	case state is
		--Initialize the chip to SQI mode
		when RES => 
			new_state <= MODE;
		when MODE => 
			--When the 8 bits have been sent pauze for 2 cycle
			if (count_in = x"F") then
				new_state <= PAUSE;
			else
				new_state <= MODE;
			end if; 
		when PAUSE => 
			new_state <= INIT;
		when INIT => 
			--Done with sending the commands
			if (count_in = x"7") then
				new_state <= START;
			else
				new_state <= INIT;
			end if;
		when START => 
			if (en = '1') then
				new_state <= INSTR;
			else
				new_state <= START;
			end if;
		when INSTR => 
			--After 7 bits go to read mode or after 10 bits it is finished with writing 
			if (clear = '1') then 
				if(count_in = x"2") then 
					new_state <= CLEARING; 
				else 
					new_state <= INSTR; 
				end if;  
			else 
				if (count_in = x"6" and RW_LATCH = '1') then
					new_state <= READ;
				elsif (count_in = x"9" and RW_LATCH = '0') then
					new_state <= START;
				else
					new_state <= INSTR;
				end if; 
			end if;
		when READ => 
			--after 12 bits 1 read has been finished one clock cycle is needed to load the final bit into the register
			if (count_in = x"B" and single_latch = '1') then
				new_state <= LOAD_BUFFER;
			--after 16 bits 3 reads have been finished, one clock cycle is needed to load the final bit into the register
			elsif (count_in = x"F" and single_latch = '0') then
				new_state <= LOAD_BUFFER;
			else
				new_state <= READ;
			end if;
		when LOAD_BUFFER => 
			new_state <= START;
		when clearing => 
			if (clear = '0') then 
					new_state <= START; 
			else 
					new_state <= clearing; 
			end if; 
		when others => 
	
	end case;
end process;
--FSM logic
fsm_logic : process (clk, reset, state, RW, count_in, SHIFT_nLOAD, i_data_in, data_in, address, single)
begin
	if reset = '1' then
		count_reset         <= '1';
		shift_reset         <= '1';
		reg_shift           <= '0';
		reg_load            <= '0';
		done                <= '0';
		count_en            <= '0';
		spi                 <= '0';
		new_data            <= '0';
		data_out            <= "00000000";
		high_z              <= '0';
		new_data            <= '0';
		count_load          <= '0';
		count_out           <= "0000";
		toggle_clk          <= '0';
		SCK                 <= '0';
		CS                  <= '1';
		new_rw_latch <= rw_latch;
		new_single_latch <= single_latch;  
	else
		--Default values to prevent latches
		count_load          <= '0';
		count_out           <= "0000";
		count_reset         <= '0';
		shift_reset         <= '0';
		done                <= '0';
		count_en            <= '1';
		spi                 <= '0';
		data_out            <= "00000000";
		new_data            <= '0';
		reg_shift           <= '0';
		reg_load            <= '0';
		high_z              <= '0';
		toggle_clk          <= '0';
		SCK                 <= not CLK;
		CS                  <= '0';
		new_rw_latch <= rw_latch;
		new_single_latch <= single_latch;  
		case state is
			when RES => 
				SCK         <= '0';
				CS          <= '1';
				count_reset <= '1';
			when MODE => 
				--Send sequential mode command 
				if (count_in = x"7" or count_in = x"9") then
					spi <= '1';
				else
					spi <= '0';
				end if;
			when PAUSE => 
				count_reset <= '1';
				SCK         <= '0';
				CS          <= '1';
			when INIT => 
				--Send start command on the spi_wire, 00011100
				if (count_in = x"2" or count_in = x"3" or count_in = x"4") then
					spi <= '1';
				else
					spi <= '0';
				end if;
			when START => 
				SCK         <= '0';
				CS          <= '1';
				count_reset <= '1';
				count_en    <= '0';
				
				--Load the shift register with the data command 
				if RW = '1' and clear = '0' then
					data_out <= "00110000";
				else
					data_out <= "00100000";
				end if;
				reg_load            <= '1';
				done                <= '1';
 				new_rw_latch        <= rw; 
				new_single_latch    <= single;
				--Store the read and single command 
				
			when INSTR => 
				--Load the shift register with zeros 
				if (count_in = x"0" or count_in = x"1") then
					data_out <= "00000000";
				--Load the address in the shift registers
				elsif (count_in = x"2" or count_in = x"3") then
					data_out <= address(11 downto 8) & "0" & address(14 downto 12);
				elsif (count_in = x"4"OR count_in = x"5") then
					data_out <= address(3 downto 0) & address(7 downto 4);
				elsif (count_in = x"6"OR count_in = x"7") then
					data_out <= data_in(3 downto 0) & data_in(7 downto 4);
				else 
					data_out <= (others => '0');
				end if;
				if(clear = '1') then 
					data_out <= (others => '0'); 
				end if; 
				--load first then shift 
				if (SHIFT_nLOAD = '1') then
					reg_shift <= '1';
				elsif (SHIFT_nLOAD = '0') then
					reg_load <= '1';
				end if;
			when READ => 
				high_z    <= '1';
				reg_shift <= '1';
 
				if (count_in > x"7") then
					high_z     <= '1';
					toggle_clk <= '1';
				else
					toggle_clk <= '0';
					high_z     <= '0';
				end if;
				if (count_in = x"7") then
					data_out <= "00000000"; --dummy byte
				elsif (count_in = x"c") then 
					new_data <= '1'; 
				elsif (count_in = x"D") then
					new_data <= '1';
				elsif (count_in = x"E") then 
					new_data <= '1';
				elsif (count_in = x"F") then
					new_data <= '1';
				end if;
			when LOAD_BUFFER => 
				new_data <= '1';
				high_z <= '1';
			when CLEARING => 
					--Do nothing and only zeros are written 
			when others => 
		end case;
	end if;
 
end process fsm_logic;
 
process (clk,reset) begin
if reset = '1' then
	data_read <= "00000000";
elsif rising_edge(CLK) then
	if (state = READ) then
--Store the shifted data into the register
		if count_in = x"B" or count_in = x"D" or count_in = X"F"THEN
		data_read <= i_data_in;
		 end if;
	 elsif (state = LOAD_BUFFER) then
		data_read <= i_data_in;
	end if;
end if;
end process;
process (state, clk, reset) begin
if reset = '1' then
	SHIFT_nLOAD <= '0';

elsif falling_edge(clk) then
	if state = INSTR then
		SHIFT_nLOAD <= not SHIFT_nLOAD;
	else
		SHIFT_nLoAD <= '0';
	end if;
end if;
end process;

--Create the inverted clock for the shift register

shift_clk <= clk when toggle_clk = '0' else
             not(clk);
--MOSI port
MOSI(0) <= spi when state = RES or state = INIT or state = MODE or state = pause else '0' when state = clearing or state = LOAD_BUFFER or state = START else
           shift_in(0);
MOSI(1) <= '0' when state = RES or state = INIT or state = MODE or state = pause else '0' when state = clearing or state = LOAD_BUFFER or state = START else shift_in(1);
MOSI(2) <= '0' when state = RES or state = INIT or state = MODE or state = pause else '0' when state = clearing or state = LOAD_BUFFER or state = START else shift_in(2);--When the chip is powered on it is in spi mode and then S03 is the hold pin, which is active low
MOSI(3) <= '1' when state = RES or state = INIT or state = MODE or state = pause else '0' when state = clearing or state = LOAD_BUFFER or state = START else shift_in(3);

--wire the shift register so that the order is proper
i_data_in <= shift_data_in(6) & shift_data_in(4) & shift_data_in(2) & shift_data_in(0) & shift_data_in(7) & shift_data_in(5) & shift_data_in(3) & shift_data_in(1);
end behaviour;
