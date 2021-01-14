library IEEE;
use IEEE.std_logic_1164.ALL;

entity sqi_controller is
   port(clk        : in  std_logic;
        reset      : in  std_logic;
				en					 : in  std_logic; 
				clear 					: in  std_logic; 
			  RW         : in  std_logic;
				high_z					: out std_logic; 
				new_data			: out std_logic; 
				single					: in  std_logic; 
				data_in 		 : in  std_logic_vector(7 downto 0);  
        shift_data_in    : in std_logic_vector(7 downto 0);
				data_read 	: out std_logic_vector(7 downto 0); 
        data_out   : out std_logic_vector(7 downto 0);
				address 		 : in  std_logic_vector(14 downto 0); 
				--counter interface 
				count_reset: out std_logic;
        count_en   : out std_logic;
        count_load : out std_logic;
        count_in   : in  std_logic_vector(3 downto 0);
        count_out  : out std_logic_vector(3 downto 0);
				--shift register interface 
				shift_clk  : out std_logic; 
        reg_shift  : out std_logic;
        reg_load   : out std_logic;
        done       : out std_logic;
				shift_in  : in std_logic_vector(3 downto 0); 
				shift_reset : out std_logic; 
  				--SQI wires 
				sck 					 : out std_logic; 
				cs 					 : out std_logic; 
				mosi 					 : out std_logic_vector (3 downto 0)); 

end sqi_controller;

