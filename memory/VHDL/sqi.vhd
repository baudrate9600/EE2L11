--SQI Module
library IEEE;
use IEEE.std_logic_1164.all;

entity sqi is
	port (
		reset    : in std_logic;
		clk      : in std_logic;
		en       : in std_logic;
		clear    : in std_logic; 

		high_z   : out std_logic;
		single   : in std_logic;
		new_data : out std_logic;
		rw       : in std_logic;
		address  : in std_logic_vector (23 downto 0);
		data_in  : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		sck      : out std_logic;
		mosi     : out std_logic_vector(3 downto 0);
		miso     : in std_logic_vector(3 downto 0);
		cs       : out std_logic;

		done     : out std_logic
	);
end sqi;

