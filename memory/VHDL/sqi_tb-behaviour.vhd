library IEEE;
use IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

architecture behaviour of sqi_tb is
  component sqi is
   port(reset    	: in std_logic;
        clk      	: in std_logic;
        en       	: in  std_logic;
				high_z				: out std_logic; 		
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
				--busy     	: out std_logic;
   				done     	: out std_logic
	);
end component;

   signal reset    : std_logic;
   signal clk      : std_logic;
   signal en       : std_logic;
	 signal high_z   : std_logic; 
	 signal single   : std_logic; 
   signal RW	 					:	std_logic;
	 signal data_out : std_logic_vector(7 downto 0); 
	 signal	new_data : std_logic;			
   signal data_in  : std_logic_vector(7 downto 0);
   signal address  : std_logic_vector(14 downto 0);	
		
   signal SCK	 				: std_logic;
   signal MOSI     : std_logic_vector(3 downto 0);
	 signal MISO     : std_logic_vector(3 downto 0); 
	 signal cs       : std_logic;

	 
	 signal done : std_logic;

		signal counter : unsigned(3 downto 0); 
begin
   test: sqi port map (reset, clk, en,high_z,single,new_data,RW, address, data_in, data_out, SCK, MOSI,MISO, CS,done );
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
	 reset <= '0' after 0 ns, '1' after 1 ns, '0' after 50 ns;
  
	
	 address <= "111"&"1111"&"1111"& "1111";
	 

		process
		begin
			RW <= '1';
			data_in <= "01101001";
			en <= '0';
			single <= '1'; 
			wait for 480 ns;
			en <= '1'; 
			wait for 40 ns; 
			RW <= '1';
			en <= '0'; 
			
			
			wait for 500 ns; 
			single <= '0'; 
			en <= '1';
			wait for 40 ns; 
			en <= '0'; 
			
			
			wait for 1000 ns; 
			RW <= '0';
			data_in <= "10000001";
			en <= '1';
			wait for 60 ns; 
			en <= '0';
			
			--wait for 40 ns;
			 
			--wait for 10 ns; 
			--wait until done = '1';
			--data_in <= "00101100";
			--en <= '1';
			--wait for 120 ns;
			--en <= '0'; 
			--en <= '1'; 
			
			wait; 
		end process; 
		
		process(reset,SCK) begin 
			if reset = '1' then 
					MISO<= "0000"; 
					counter <= "0000"; 
			elsif falling_edge(SCK) then 
					if(high_z = '1') then
					counter <= counter + 1; 
						MISO <= std_logic_vector(counter);
					else 
						MISO <= "0000"; 
					end if; 
			end if; 
		end process; 

end behaviour;

