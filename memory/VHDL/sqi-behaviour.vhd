library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
architecture behaviour of sqi is
	type sqi_state is (START, s0,s1 ,DONE);
	signal state, new_state : sqi_state;
	signal DFF 												: std_logic_vector(7 downto 0); 
  signal counter 									: unsigned(3 downto 0); 
	signal new_counter 					: unsigned(3 downto 0); 
	signal rom_address 					: std_logic_vector(1 downto 0); 
	signal rom_data 								: std_logic_vector(7 downto 0); 
	signal data_wire 							: std_logic_vector( 7 downto 0);

	signal load_reg : std_logic; 
  signal shift_reg: std_logic;
	
	signal mux_select 						:	std_logic_vector(2 downto 0); 	

begin
	--New state generation
	process (clk) 
	begin
		if rising_edge(clk) then 
			if reset = '1' then 
				state <= START;
				counter <= "0000";
			else 
				state <= new_state;
				counter <= new_counter;
			end if; 
		end if; 
	end process;

	--FSM 
	process(state, en ,cs ,counter) 
	begin 
			new_counter <= counter; 
		case state is 
			
			when START => 
				if(RW = '1') then 
							rom_address <= "00";
					 else 
							rom_address <= "01";
				end if;
				load_reg <= '1'; 
				if(en = '1') then 
					 new_state <= s0;
				else 
					new_state <= start; 
				end if; 
			when s0 =>
				load_reg<='0';
				shift_reg <= '1';   
				new_state <= s1;
				new_counter <= counter + 1;
			when s1 =>
				load_reg<='1'; 
				shift_reg <= '0';
				new_state <= s0; 
			when DONE => 
				new_state <= START; 
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
	with counter SELECT 
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
				DFF <= '1' & DFF(7 downto 1);
			end if;
		end if; 
		
	end process;
	--SQI MASTER
	process(state,clk)
	begin
		if(state /= START) then 
			SCK <= not CLK;
			CS  <= '0';
		else 
			SCK <= '1';
			CS  <= '1';
		end if; 	
	end process; 


	

  --MOSI port
	MOSI(0) <= DFF(0);
	MOSI(1) <= DFF(2); 
	MOSI(2)	<= DFF(4);
	MOSI(3) <=  DFF(6);

end behaviour;

