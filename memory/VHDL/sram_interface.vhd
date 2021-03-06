library IEEE;
use IEEE.std_logic_1164.ALL;

entity sram_interface is
	port(CLK    : in  std_logic;
				RESET  : in  std_logic; 
				EN			 : in  std_logic; 
				RW			 : in  std_logic; 
				SINGLE : in  std_logic; 
				DATA_IN : in std_logic_vector(7 downto 0);  
				DATA_OUT : out std_logic_vector(7 downto 0 );
				ADDRESS	: in std_logic_vector(14 downto 0); 
				done   : out std_logic; 
				new_data : out std_logic; 
        SCK    : out std_logic;
        CS     : out std_logic;
				SO			 : INOUT std_logic_vector(3 downto 0));
end sram_interface;

