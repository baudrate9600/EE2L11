library IEEE;
use IEEE.std_logic_1164.ALL;

entity memory is
   port(clk          : in  std_logic;
   	reset	     : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        x            : in  std_logic_vector(3 downto 0);
        y            : in  std_logic_vector(7 downto 0);
        rw           : in  std_logic;
        ce           : in  std_logic;
        mode  	     : in  std_logic;
        calc_buf_in  : in  std_logic_vector(5 downto 0);
        calc_buf_out : out std_logic_vector(23 downto 0);
   	data_out     : out std_logic_vector(3 downto 0);
        ready        : out std_logic;
	cs	     : out std_logic;
	en	     : out std_logic;
   	-- TEMPORARY FOR TESTING
   	sqi_finished : in std_logic;
   	sqi_data_in  : in std_logic_vector(7 downto 0);
	sqi_data_out : out std_logic_vector(7 downto 0));
end memory;

