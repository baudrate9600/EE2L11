library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
architecture behaviour of sqi is
	type sqi_state is (INIT, START, s0,s1);
	signal state, new_state : sqi_state;
	signal DFF 												: std_logic_vector(7 downto 0); 
	signal count_en  							: std_logic;
  signal count_load 						: std_logic; 
  signal count 											: unsigned(3 downto 0); 
	signal count_val 							: unsigned(3 downto 0); 
	signal rom_address 					: std_logic_vector(1 downto 0); 
	signal rom_data 								: std_logic_vector(7 downto 0); 
	signal data_wire 							: std_logic_vector( 7 downto 0);

	signal load_reg : std_logic; 
  signal shift_reg: std_logic;
	
	signal mux_select 						:	std_logic_vector(2 downto 0); 	

	signal spi_wire : std_logic;
	signal done_ff  : std_logic;
	signal done_reg : std_logic; 

begin
	--New state generation
	process (clk) 
	begin
		if rising_edge(clk) then 
			if reset = '1' then 
				state <= INIT;
			else 
				state <= new_state;
			end if; 
		end if; 
	end process;

	--FSM 
	process(state, en  ,count,load_reg, shift_reg,done_ff) 
	begin 
		count_val <= "0000";
		count_en <= '1'; 
		count_load <= '0';
		load_reg<='0'; 
		shift_reg <= '0';
		done_ff <= done_reg; 
		busy <= '1'; 
		
		case state is 
			--Initialize the chip to SQI mode 
			when INIT =>
				--Send start command on the spi_wire, 00011100
				if(count = 3 or count = 4 or count = 5) then
					spi_wire <= '1';
				else 
					spi_wire <= '0';
				end if; 
				--Done with sending the commands
				if (count = 8) then 
					count_load <= '1';
					new_state <= START;
				else 
					new_state <= INIT; 
				end if; 
			
			--Load the Registers and update the rom address of the instruction command
			when START => 
				count_en <= '0';
				busy <= '1'; 
				if(RW = '1') then 
							rom_address <= "00";
					 else 
							rom_address <= "01";
				end if;
				load_reg <= '1'; 
				if(en = '1') then 
					 new_state <= s0;
				else 
					count_load <= '1'; 
					new_state <= start; 
				end if; 
			--State S0 and S1 go back and forth in loading the shift register and shifting .. 
			-- the shift register
			when s0 =>
				load_reg<='0';
				shift_reg <= '1';   
				new_state <= s1;
			when s1 =>

				new_state <= s0; 
				
				shift_reg <= '0';
				
				count_en <= '0';
			--When all the bytes have been sent/read then the first cycle is complete and .. 
			-- then if Enable is high it will continue reading or continue writing but wont.. 
			--		resend the address and instruction command 
			if(((count = 4 and RW = '0') or (count = 5 and RW = '1')) and done_reg = '0') then 
						done_ff <= '1';
				else 
						done_ff <= '0';
			end if;
			
			--If the enable signal is kept high it will continue sending or reading 
			if(en = '0' and done_reg = '1') then
						new_state <= start;
						done_ff <= '0';
				else	
					new_state <= S0;
			end if;

			--When the address and instruction command have been sent stop loading the register when ..
			-- in read mode as only data is shifted in 
				if(RW = '1' and done_reg = '1') then
						load_reg <= '0';
						shift_reg <= '1';
				else 
						load_reg <= '1';
				end if;

			when others =>
		end case; 			
	end process;
	
	--Instruction rom 
	process(rom_address) 
	begin 
		case rom_address is 
			when "00" =>	rom_data <= "00110000"; --READ 
			when "01" => rom_data <= "00100000"; --WRITE
			when "10" => rom_data <= "00111000"; --Enter SQI MODE
			when "11" => rom_data <= "11111111"; --Reset SQI MODE 
			when others => rom_data <= "00000000";
		end case; 
	end process;

	--Data multiplexer 	
	with count SELECT 
	data_wire <= 	rom_data 	when "0000",
								"00000000" when "0001", 	
							 	'0' & address(14 downto 8) when "0010",
								address(7  downto 0) when "0011",
								data_in 		when "0100",
					    		"00000000" when others;


	--Shift register 
	process(clk) 
	begin 		
		if rising_edge(clk) then 		
			if reset = '1' then 
					DFF <= "00000000";
					done_reg <= '0'; 
			else 
					done_reg <= done_ff;
				if (load_reg = '1') then 
					DFF(0) <= data_wire(0);
					DFF(1) <= data_wire(4);
					DFF(2) <= data_wire(1);
					DFF(3) <= data_wire(5);
					DFF(4) <= data_wire(2);
					DFF(5) <= data_wire(6);
					DFF(6) <= data_wire(3);
					DFF(7) <= data_wire(7);
				elsif (shift_reg = '1') then 
					--DFF <= '1' & DFF(7 downto 1);
					DFF(1 downto 0 ) <= MISO(0) & DFF(1);
					DFF(3 downto 2 ) <= MISO(1) & DFF(3);
					DFF(5 downto 4 ) <= MISO(2) & DFF(5);
					DFF(7 downto 6 ) <= MISO(3) & DFF(7);
				end if;
			end if; 
		end if; 
		
	end process;
	--SQI MASTER
	process(state,clk)
	begin
		if(state /= START and reset = '0') then 
			SCK <= not CLK;
			CS  <= '0';
		else 
			SCK <= '1';
			CS  <= '1';
		end if; 	
	end process; 
	--counter 
	process(clk , count_en) 
	begin 
	 if rising_edge(clk) then 
			if reset = '1' then 
				count <= "0000"; 
			else 
				if(count_load = '1' ) then 
						count <= count_val;
				elsif(count_en = '1') then 
						count <= count + 1; 
				end if; 
			end if;
	 end if; 
	end process; 


	

  --MOSI port
	MOSI(0) <= DFF(0) when state /= INIT else spi_wire;
	MOSI(1) <= DFF(2); 
	MOSI(2)	<= DFF(4);
	MOSI(3) <= DFF(6);

	data_out <= DFF;
	
	done    <= done_reg; 
end behaviour;

