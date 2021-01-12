library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;   
architecture behaviour of sram_test is
component line_buffer is
   port(address  : in  std_logic_vector(7 downto 0);
        data_in  : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0);
        write    : in  std_logic);
	end component;
	component sqi is
   port(reset    	: in std_logic;
        clk      	: in std_logic;
        en       	: in  std_logic;
				high_z				: out std_logic; -- When high-z is high the MOSI is disconected			
				single				: in std_logic;	
				new_data  : out std_logic;			
				RW	 				: in std_logic;
				address  	: in std_logic_vector (14 downto 0); 
   				data_in  	: in std_logic_vector(7 downto 0);
				data_out 	: out std_logic_vector(7 downto 0);
		
				SCK	 				: out std_logic;
				MOSI     	: out std_logic_vector(3 downto 0);	
				MISO     	: in  std_logic_vector(3 downto 0); 
				CS       	: out std_logic;   				
				
   				done     	: out std_logic
	);
	end component;
	component gen25mhz is
   port(clk50mhz : in  std_logic;
        clk25mhz  : out std_logic);
	end component;
	signal i_RW : std_logic; 
	signal i_CLK : std_logic; 
	signal I_SINGLE  : std_logic; 
	signal I_done    : std_logic; 
	signal i_new_data : std_logic; 
	signal i_EN 					: std_logic; 
	signal i_data_in : std_logic_vector(7 downto 0); 
	signal i_address: std_logic_vector(14 downto 0); 

	TYPE test_state IS (S0,S1,S2,S3,S4,S5,S6,S7,S8,s9,s10,s11);
	signal state : test_state; 
	signal new_state : test_state; 
	
	signal counter : unsigned (1 downto 0); 
	signal new_counter : unsigned (1 downto 0); 
begin


	--u0:line_buffer port map(i_address, i_data_in, data_out, i_write);
	u1 : gen25mhz port map(CLK,i_CLK);
	u2 : sqi port map(
			CLK => i_CLK,
			RESET => RESET, 
			EN			=> i_EN,
			RW			=> i_RW,
			SINGLE => i_SINGLE, 
			DATA_IN =>  i_DATA_IN, 
			DATA_OUT => DATA_OUT, 
			ADDRESS  => i_ADDRESS, 
			done 				=> i_done, 
			new_data => i_new_data, 
			SCK				 => SCK, 
			CS 				 => CS, 
			MISO				 => MISO,
			MOSI				 => MOSI ,
			high_z   => high_z);
	
	PROCESS (i_clk, new_state)
	BEGIN
		IF rising_edge(i_clk) THEN
			IF reset = '1' THEN
				state <= S0;
				counter <= (others => '0');
			ELSE
				state <= new_state;
				counter <= new_counter; 
			END IF;
		END IF;
	END PROCESS;

	PROCESS (state,i_done) 

	BEGIN 
		I_RW <= '0'; 
		I_single <= '0'; 
		i_address <= (others => '0');
		i_address(14) <= '1';
		--i_address(3 downto 0) <= x"1"; 
		--i_address(7 downto 4) <= x"2"; 
		----i_address(11 downto 8) <= x"3";
		--i_address(14 downto 12) <= "100"; 
		case state is 
			when S0 =>
				I_EN <= '0'; 
				if(i_done = '1') then 
					new_state <= S1; 
				else 
					new_state <= S0; 
				end if; 
			when S1 => 
					I_EN<='1';
					i_data_in <= x"10";
					if(i_done = '0') then 
						new_state <= S2;
					else 
						new_state <= S1; 
					end if; 
			when S2 =>  
					I_EN <= '0'; 
					i_data_in <= x"10";
					if(i_done = '1') then 
							new_state <= S3; 
					else 
							new_state <= S2; 
					end if; 
			when S3 => 
					I_EN<='1';
					i_data_in <= x"02";
					i_address(0) <= '1'; 
						if(i_done = '0') then 
						new_state <= S4;
					else 
						new_state <= S3; 
					end if; 
			when S4 =>
					I_EN<='0';
					i_data_in <= x"02";
					i_address(0) <= '1'; 
					if(i_done = '1') then 
							new_state <= S5; 
					else 
							new_state <= S4; 
					end if; 
			when S5 =>
					I_EN<='1';
					i_data_in <= x"30";
					i_address(1) <= '1'; 
					if(i_done = '0') then 
							new_state <= S6; 
					else 
							new_state <= S5; 
					end if; 
			when S6 =>
					i_address(1) <= '1';
					i_data_in <= x"30";
					i_address(1) <= '1';
					I_EN <= '0'; 
					if(i_done = '1') then 
							new_state <= S7; 
					else 
							new_state <= S6; 
					end if; 
			when S7 =>
					I_EN <= '0'; 
					new_state <= S8;
					I_RW <= '1';  
			when S8 =>
					I_RW <= '1';  
					I_EN <= '1'; 
					if(i_done = '0') then 
							new_state <= s9; 
					else 
							new_State <= s8; 
					end if; 		
			when S9 =>

				i_RW <= '1';
				if(i_done = '1') then 
						new_state <= s10; 
				else 
						new_state <= S9;
				end if;
				i_EN <= '0'; 
					i_single <= '1';	
		 	WHEN s10 =>
				I_RW <= '1';
				I_EN <= '1'; 
				i_single <= '1';
			 if(i_done = '0') then 
							new_state <= S11; 
					else 
							new_state <= S10; 
					end if; 
			WHEN S11 =>
						I_RW <= '1'; 
						i_single <= '1';
						i_en <= '0'; 
						new_state <= S11;
		end case;
	end process; 
					


end behaviour;

