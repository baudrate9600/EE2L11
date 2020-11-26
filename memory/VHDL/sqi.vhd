--SQI Module 
library IEEE;
use IEEE.std_logic_1164.ALL;

entity sqi is
   port(reset    : out std_logic;
        clk      : in std_logic;
        cs       : out std_logic;
        en       : out std_logic;
   	RW	 : in std_logic;
   	address  : in std_logic_vector (14 downto 0); 
   	data_in  : in std_logic_vector(3 downto 0); 
	data_out : in std_logic_vector(3 downto 0);    
        chip_data_in  : in std_logic_vector(3 downto 0);
        chip_data_out : out std_logic_vector(3 downto 0);
   	done     : out std_logic;
   	busy     : out std_logic);
end sqi;

