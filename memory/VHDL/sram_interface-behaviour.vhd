library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of sram_interface is
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
component tri_buffer is
   port(INPUT  : IN  std_logic_vector(3 downto 0);
				EN			 : IN  std_logic; 
        OUTPUT : OUT std_logic_vector(3 downto 0));
end component;

 
signal high_z   : std_logic; 
signal MOSI 	   : std_logic_vector(3 downto 0); 
begin
	u0 : sqi port map(reset, CLK, EN, high_z, single, new_data, RW, address, data_in, data_out, SCK, MOSI, SO, CS, DONE); 
	u1 : tri_buffer port map(MOSI, not high_z, SO) ; 

end behaviour;
