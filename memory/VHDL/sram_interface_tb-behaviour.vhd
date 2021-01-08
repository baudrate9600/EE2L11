library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL; 

architecture behaviour of sram_interface_tb is
   component sram_interface
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
   end component;
   signal CLK    : std_logic;
   signal RESET  : std_logic;
   signal EN			 : std_logic;
   signal RW			 : std_logic;
   signal SINGLE : std_logic;
   signal DATA_IN : std_logic_vector(7 downto 0);
   signal DATA_OUT : std_logic_vector(7 downto 0 );
   signal ADDRESS	: std_logic_vector(14 downto 0);
   signal done   : std_logic;
   signal new_data : std_logic;
   signal SCK    : std_logic;
   signal CS     : std_logic;
   signal SO			 : std_logic_vector(3 downto 0);
	-- TYPE SRAM_MODE IS (SPI,SQI);
	-- SIGNAL mode : sram_mode; 
begin
   test: sram_interface port map (CLK, RESET, EN, RW, SINGLE, DATA_IN, DATA_OUT, ADDRESS, done, new_data, SCK, CS, SO);
   clk <= '0' after 0 ns,'1' after 20 ns when clk /= '1' else '0' after 20 ns;
   RESET <= '1' after 0 ns, '0' after 40 ns;
   EN <= '0' after 0 ns, 
				 '1' after 80 ns;
   RW <= '1' after 0 ns;
   SINGLE <= '1' after 0 ns;
   DATA_IN <= "01001100" after 0 ns;

	 ADDRESS <= "100" & "0011" & "1001" & "0110" after 0 ns; 	


 
	

	 
end behaviour;

