library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of address_alu_tb is
   component address_alu
   	port(x : in std_logic_vector(4 downto 0); 
   			 y : in std_logic_vector(7 downto 0); 
   			 grid : in std_logic; 
   			 x_min_one : in std_logic; 
   			 y_min_one : in std_logic; 	
   			 address_out : out std_logic_vector(15 downto 0)
   	     ); 
   end component;
   signal x : std_logic_vector(4 downto 0);
   signal y : std_logic_vector(7 downto 0);
   signal grid : std_logic;
   signal x_min_one : std_logic;
   signal y_min_one : std_logic;
   signal address_out : std_logic_vector(15 downto 0);
begin
   test: address_alu port map (x, y, grid, x_min_one, y_min_one, address_out);
   x(0) <= '0' after 0 ns, '1' after 10 ns;
   x(1) <= '1' after 0 ns;
   x(2) <= '0' after 0 ns;
   x(3) <= '0' after 0 ns;
   x(4) <= '0' after 0 ns, '1' after 10 ns;
   y(0) <= '0' after 0 ns,  '1' after 20 ns;
   y(1) <= '0' after 0 ns;
   y(2) <= '0' after 0 ns;
   y(3) <= '0' after 0 ns;
   y(4) <= '0' after 0 ns;
   y(5) <= '0' after 0 ns;
   y(6) <= '0' after 0 ns;
   y(7) <= '0' after 0 ns;

   x_min_one <= '0' after 0 ns, '1' after 30 ns, '0' after 50 ns;
   y_min_one <= '0' after 0 ns, '1' after 40 ns;
	 grid <= '0' after 0 ns, '1' after 50 ns, '0' after 70 ns;
end behaviour;
