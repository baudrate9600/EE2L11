library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of address_alu is
	signal i_x   : unsigned(4 downto 0); 
	signal i_y   : unsigned(7 downto 0); 
	signal adder : unsigned(15 downto 0);
	signal multiply_160 : unsigned(15 downto 0); 
	signal sum_1, sum_2 : unsigned(14 downto 0); 
	signal i_mux_0   : unsigned(4 downto 0); 
	signal i_mux_1   : unsigned(7 downto 0); 
	signal x_sub_one : unsigned(4 downto 0); 
	signal y_sub_one : unsigned(7 downto 0); 
	signal truncated : unsigned (14 downto 0); 
 	
begin

	--longest transport delay x -> x_sub_one -> mux_1 -> multiply_160 -> adder
	
	i_x <= unsigned(x); 
	i_y <= unsigned(y); 	

	x_sub_one <= i_x - 1; 
  y_sub_one <= i_y - 1; 

	i_mux_0 <= i_x when x_min_one = '0' else x_sub_one; 
	i_mux_1 <= i_y when y_min_one = '0' else y_sub_one;  

	multiply_160 <= to_unsigned(160,11) * i_mux_0;

	adder    <= i_mux_1 + multiply_160;
	truncated <= adder(14 downto 0); 
	address_out <= grid & std_logic_vector(truncated) ;
		
end behaviour;

