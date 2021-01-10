LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ARCHITECTURE behaviour OF sqi_controller IS
	TYPE sqi_state IS (RES,MODE,PAUSE,INIT, START, INSTR, WRITE, READ, LOAD_BUFFER);
	SIGNAL state, new_state : sqi_state;
	SIGNAL done_sig : std_logic;
	SIGNAL done_reg : std_logic;
	SIGNAL instruction : std_logic_vector(7 DOWNTO 0); 
	SIGNAL spi : std_logic;
	SIGNAL data_out_buffer : std_logic_vector(7 DOWNTO 0);

	SIGNAL SHIFT_nLOAD : std_logic;
	SIGNAL i_data_in : std_logic_vector(7 DOWNTO 0);

	SIGNAL toggle_clk : std_logic; 
	SIGNAL SCK_CS_EN  : std_logic; 
	SIGNAL RW_LATCH : std_logic;
	SIGNAL RW_LATCH_ENABLE : std_logic;  
	SIGNAL SINGLE_LATCH : std_logic;
	SIGNAL SINGLE_LATCH_ENABLE : std_logic; 
BEGIN	

	process(RW,RW_LATCH_ENABLE) begin 
		if(RW_LATCH_ENABLE = '1') then 
			RW_LATCH <= RW;
		else 
			RW_LATCH <= RW_LATCH; 
		end if; 
	end process; 

	process(SINGLE,SINGLE_LATCH_ENABLE) begin 
		if(SINGLE_LATCH_ENABLE = '1') then 
			SINGLE_LATCH <= SINGLE;
		else 
			SINGLE_LATCH <= SINGLE_LATCH; 
		end if; 
	end process; 
	
	--New state generation
	PROCESS (clk, new_state)
	BEGIN
		IF rising_edge(clk) THEN
			IF reset = '1' THEN
				state <= RES;
			ELSE
				state <= new_state;
			END IF;
		END IF;
	END PROCESS;
	fsm_state : PROCESS (state, en, spi, count_in, done_sig, RW, single)
	BEGIN
		CASE state IS
			--Initialize the chip to SQI mode
			WHEN RES   =>
					new_state <= MODE; 
 			WHEN MODE  => 
				IF(count_in = x"F") THEN 
						new_state <= PAUSE;
				ELSE
						new_state <= MODE; 
				end if;  
			WHEN PAUSE =>
				new_state <= INIT; 
			WHEN INIT => 
				--Done with sending the commands
				IF (count_in = x"7") THEN
					new_state <= START;
				ELSE
					new_state <= INIT;
				END IF;
				--Load the Registers and update the rom address of the instruction command
			WHEN START => 
				IF (en = '1') THEN
					new_state <= INSTR;
				ELSE
					new_state <= START;
				END IF;
			WHEN INSTR => 
				IF (count_in = x"6" AND RW_LATCH = '1') THEN
					new_state <= READ;
				ELSIF (count_in = x"9" AND RW_LATCH = '0') THEN 
					new_state <= START;
				ELSE
					new_state <= INSTR;
				END IF;
			WHEN READ => 
				IF (count_in = x"B" AND single_latch = '1') THEN
					new_state <= LOAD_BUFFER;
				ELSIF (count_in = x"F" AND single_latch = '0') THEN
					new_state <= LOAD_BUFFER;
				ELSE
					new_state <= READ;
				END IF;
			WHEN LOAD_BUFFER => 
				new_state <= START;
			WHEN WRITE => 
				IF (count_in = x"8") THEN
					new_state <= START;
				ELSE
					new_state <= WRITE;
				END IF;
			WHEN OTHERS => 
		END CASE; 
	END PROCESS;
	--FSM logic
	fsm_logic : PROCESS (clk, reset, state, RW, count_in, SHIFT_nLOAD, i_data_in, data_in, address, single)
	BEGIN
		
		IF reset = '1' THEN
			count_reset <= '1';
			shift_reset <= '1';
			reg_shift <= '0';
			reg_load  <= '0'; 
			done <= '0';
			count_en <= '0'; 
			spi <= '0'; 
			new_data <= '0'; 
			data_out <= "00000000";
 			high_z <= '0';
			new_data <= '0';
			count_load <= '0'; 
			count_out <= "0000"; 
			toggle_clk <= '0'; 
			SCK <= '0'; 
			CS  <= '1'; 
			RW_LATCH_ENABLE <= '1'; 
			SINGLE_LATCH_ENABLE <= '1'; 
		ELSE
			--Default values to prevent latches 
			count_load  <= '0'; 
			count_out <= "0000"; 
			count_reset <= '0'; 
			shift_reset <= '0'; 
			done <= '0';
			count_en <= '1';
			spi <= '0'; 
			data_out <= "00000000";
			new_data <= '0'; 
			reg_shift <= '0'; 
			reg_load  <= '0';
			high_z <= '0';
			toggle_clk <= '0'; 
			SCK <= not CLK; 
			CS  <= '0'; 
			RW_LATCH_ENABLE <= '0';
			SINGLE_LATCH_ENABLE <= '0'; 
			CASE state IS
				WHEN RES => 
					SCK <= '0'; 
					CS  <= '1'; 
					count_reset <= '1'; 
				WHEN MODE =>
					if(count_in = x"7" or count_in = x"9") then 
							spi <= '1';
					else
							spi <= '0'; 
					end if; 
				WHEN PAUSE =>
						count_reset <= '1'; 
						SCK <= '0'; 
						CS  <= '1'; 
				WHEN INIT => 
					--Send start command on the spi_wire, 00011100
					IF (count_in = x"2" OR count_in = x"3" OR count_in = x"4") THEN
						spi <= '1';
					ELSE
						spi <= '0';
					END IF;
				WHEN START => 
					SCK <= '0'; 
					CS  <= '1'; 
					count_reset <= '1';
					count_en <= '0';
					--Do nothing and just wait
					IF RW = '1' THEN
						data_out <= "00110000";
					ELSE
						data_out <= "00100000";
					END IF;
					reg_load <= '1';
					done <= '1';
					 
					new_data <= '1'; 
					RW_LATCH_ENABLE <= '1';
					SINGLE_LATCH_ENABLE <= '1';
				WHEN INSTR => 
					
				
					
					IF (count_in = x"0" or count_in = x"1") THEN
						data_out <= "00000000";
					ELSIF (count_in = x"2" or count_in = x"3") THEN
						data_out <= address(11 DOWNTO 8) & "0" & address(14 DOWNTO 12);
					ELSIF (count_in = x"4"or count_in = x"5") THEN
						data_out <= address(3 DOWNTO 0) & address(7 DOWNTO 4);
					ELSIF (count_in = x"6"or count_in = x"7") THEN
						data_out <= data_in(3 DOWNTO 0) & data_in(7 DOWNTO 4);
					END IF;
					IF (SHIFT_nLOAD = '1') THEN
						reg_shift <= '1';
					ELSIF (SHIFT_nLOAD = '0') THEN
						reg_load <= '1';
					END IF; 
 
 
				WHEN READ => 
					high_z <= '1';
					reg_shift <= '1';
					
					IF (count_in > x"7") THEN 
							high_z <= '1'; 
							toggle_clk <= '1'; 
					else
							toggle_clk <= '0';
							high_z <= '0'; 
					end if; 
					IF (count_in = x"7") THEN
						data_out <= "00000000"; --dummy byte 
					ELSIF (count_in = x"A") THEN
					ELSIF (count_in = x"B") THEN
					ELSIF (count_in = x"C") THEN
					ELSIF (count_in = x"D") THEN
						new_data <= '1';
					ELSIF (count_in = x"E") THEN
						
					ELSIF (count_in = x"F") THEN
						new_data <= '1';
					ELSIF (count_in = x"0") THEN
							

					END IF;
				WHEN LOAD_BUFFER => 
						high_z <= '1'; 
				
									
				WHEN OTHERS => 
			END CASE;
		END IF; 
		
	END PROCESS fsm_logic;
	
	process (clk) begin 
	IF reset = '1' THEN 
			data_read <= "00000000";
		elsif rising_edge(CLK)then 
			if(state = READ) then 
				--B to D to F 
				if count_in = x"B" or count_in = x"D" or count_in = X"F"then
					data_read <= i_data_in; 
				end if; 
			elsif(state = LOAD_BUFFER) then
					data_read <= i_data_in; 
			end if; 
		end if; 
	end process; 
	process (state, clk, reset) begin
		IF reset = '1' THEN
			SHIFT_nLOAD <= '0';

		ELSIF falling_edge(clk) THEN
			IF state = INSTR OR state = WRITE THEN
				SHIFT_nLOAD <= NOT SHIFT_nLOAD;
			ELSE
				SHIFT_nLoAD <= '0';
			END IF;
		END IF;
	end process; 

	--SQI
	--SCK_CS_EN <= '1' when ((state = START OR state = LOAD_buffer OR state = PAUSE) or reset = '1') ELSE '0'; 
 	
	--SCK <= '0' WHEN SCK_CS_EN ELSE not CLK; 
	--CS  <= '1' WHEN SCK_CS_EN ELSE '0'; 
 
		shift_clk <= clk WHEN toggle_clk = '0' else NOT(clk);


		--MOSI port
		MOSI(0) <= spi WHEN state = RES or state = INIT or state = MODE or state = pause ELSE '0' when state = READ or state = LOAD_BUFFER ELSE 
	        shift_in(0);
		MOSI(1) <= '0' when state = RES or state = INIT or state = MODE or state = pause ELSE '0' when state = READ or state = LOAD_BUFFER ELSE shift_in(1);
	MOSI(2) <= '0' when state = RES or state = INIT or state = MODE or state = pause ELSE '0' when state = READ or state = LOAD_BUFFER ELSE shift_in(2);--When the chip is powered on it is in spi mode and then S03 is the hold pin, which is active low
		MOSI(3) <= '1' when state = RES or state = INIT or state = MODE or state = pause ELSE '0' when state = READ or state = LOAD_BUFFER ELSE shift_in(3);
 
		--wire the shift register so that the order is proper
		i_data_in <= shift_data_in(6) & shift_data_in(4) & shift_data_in(2) & shift_data_in(0) & shift_data_in(7) & shift_data_in(5) & shift_data_in(3) & shift_data_in(1);
END behaviour;
