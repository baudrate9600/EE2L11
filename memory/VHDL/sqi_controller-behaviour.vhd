library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of sqi_controller is
	type sqi_state is (RES,INIT, START, INSTR,WRITE,READ,LOAD_BUFFER);
	signal state, new_state : sqi_state;
	signal done_sig  : std_logic;
		signal done_reg : std_logic; 
	signal instruction      : std_logic_vector(7 downto 0);  
	signal spi : std_logic;
	signal data_out_buffer : std_logic_vector(7 downto 0);
	signal done_read : std_logic;
signal SHIFT_nLOAD : std_logic; 
	signal i_data_in : std_logic_vector(7 downto 0); 

begin


		--New state generation
	process (clk,new_state) 
	begin
		if rising_edge(clk) then 
			if reset = '1' then 
				state <= INIT;
			else 
				state <= new_state;
			end if; 
		end if; 
	end process;


fsm_state:process(state,en ,spi,count_in ,done_sig) 
begin 
    
   
    case state is 
        --Initialize the chip to SQI mode 
  
   when INIT =>
            --Done with sending the commands
            if (count_in = x"7") then 
                new_state <= START;
            else 
                new_state <= INIT; 
            end if; 
        --Load the Registers and update the rom address of the instruction command
    when START => 
            if(en = '1') then 
                 new_state <= INSTR;
            else 
                new_state <= START; 
            end if; 
    when INSTR => 							
            		if(count_in = x"6" and RW = '1') then 
                    new_state <=READ;
            		elsif(count_in= x"9" and RW = '0') then  
                    new_state <= START;
							else
										new_state <= INSTR;
            		end if;
		when READ =>
							if(count_in = x"B" and single ='1') then 
									new_state <= LOAD_BUFFER; 
							elsif(count_in = x"F" and single = '0') then 
									new_state <= LOAD_BUFFER;
							else 
									new_state <= READ; 
							end if;
 		when LOAD_BUFFER =>
						new_state <= START; 
		when WRITE => 
						if(count_in = x"8" ) then 
							new_state <= START;
						else 
							new_state <= WRITE; 
						end if; 
        when others =>
    end case; 			
end process;


--FSM logic 
fsm_logic: process(clk,reset,state,RW,count_in,SHIFT_nLOAD,i_data_in)
begin			
		high_z <= '0'; 
		if reset = '1' then
					count_reset <= '1'; 
					shift_reset <= '1'; 
					done <= '0';
		  			data_read <= "00000000"; 
					done_read <= '0'; 
    else 
					case state is 
            when INIT =>
								count_reset <= '0'; 
								count_en <= '1';
                   --Send start command on the spi_wire, 00011100
                if(count_in = x"2" or count_in = x"3" or count_in = x"4") then
                    spi <= '1';
                else 
                    spi <= '0';
                end if; 
            when START =>
								count_reset <= '1'; 
								count_en <= '0';
                --Do nothing and just wait 
								if RW = '1' then 
											data_out <= "00110000";
										else 
											data_out <= "00100000";
								end if;
								reg_load <= '1';
								reg_shift <= '0';
								shift_reset <= '0';
								done <= '1';				
								new_data <= '1'; 					
            when INSTR =>
								done <= '0';
								count_en <= '1'; 
								count_reset <= '0';
								shift_reset <= '0';
								if(count_in = x"0") then 
										data_out <= "00000000";
								elsif(count_in =x"2") then 
										data_out <= address(11 downto 8) &"0" & address(14 downto 12);
								elsif(count_in = x"4") then 
										data_out <= address(3 downto 0) & address(7 downto 4);
								elsif(count_in = x"6") then 
										data_out <= data_in(3 downto 0 ) & data_in(7 downto 4);
								end if; 
                if(SHIFT_nLOAD = '1') then 
                    reg_load <= '0'; 
                    reg_shift<= '1'; 
                elsif(SHIFT_nLOAD = '0') then 
                    reg_load <= '1'; 
                    reg_shift<= '0'; 
                end if; 	
										
									
							when READ =>
									high_z <= '1'; 
									new_data <= '0'; 
 									if (count_in = x"7") then 
											data_out <= "00000000"; --dummy byte
											high_z <= '0'; 
									elsif (count_in = x"A") then 
											reg_shift <= '1';
											reg_load  <= '0'; 
									elsif (count_in = x"B") then 
											 if(single = '1') then 
												done_read <= '1';
												reg_shift <= '1';
											else 
												reg_shift <= '1';
												reg_load  <= '0';	
												done_read <= '0'; 
											end if; 
									elsif (count_in = x"C") then
												data_read <= i_data_in;
												
											  	reg_load  <= '0';
											reg_shift <= '1';
									elsif (count_in = x"D") then 
											new_data <= '1';
										 reg_load  <= '0';
											reg_shift <= '1';
									elsif (count_in = x"E") then
											data_read <= i_data_in;
											reg_load  <= '0';
											reg_shift <= '1';
									elsif (count_in = x"F") then 
											new_data <= '1'; 
											reg_load  <= '0';
											reg_shift <= '1';
									elsif (count_in = x"0") then 
											
											reg_load  <= '0';
											reg_shift <= '1';	
 									end if;
								when LOAD_BUFFER => 
											new_data <= '0';
											data_read <= i_data_in;
            when others =>
        end case;
    end if;  

		if reset = '1' then 
							SHIFT_nLOAD <= '1';

		elsif rising_edge(clk) then
				if state = INSTR or state = WRITE then 
							SHIFT_nLOAD <= not SHIFT_nLOAD;
				else 
							SHIFT_nLoAD <= '1';
				end if;
		end if; 
end process fsm_logic;



 

		--SQI 
	process(state,clk)
	begin
		if((state = START or state = LOAD_buffer) and reset = '0') then 
			
			SCK <= '1';
			CS  <= '1';	
		else 
			SCK <= not CLK;
			CS  <= '0';
		end if; 	
	end process; 

	

  --MOSI port
	MOSI(0) <= spi when state = INIT else shift_in(0);
	MOSI(1) <= shift_in(1); 
	MOSI(2)	<= shift_in(2);
	MOSI(3) <= shift_in(3);
	
	--wire the shift register so that the order is proper 
	i_data_in <= shift_data_in(6) & shift_data_in(4) & shift_data_in(2) & shift_data_in(0) & shift_data_in(7) & shift_data_in(5) & shift_data_in(3) & shift_data_in(1);
end behaviour;

