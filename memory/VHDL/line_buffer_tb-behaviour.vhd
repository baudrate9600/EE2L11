library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of line_buffer_tb is
   component line_buffer
      port(address  : in  std_logic_vector(7 downto 0);
           data_in  : in  std_logic_vector(7 downto 0);
           data_out : out std_logic_vector(7 downto 0);
           write    : in  std_logic);
   end component;
   signal address  : std_logic_vector(7 downto 0);
   signal data_in  : std_logic_vector(7 downto 0);
   signal data_out : std_logic_vector(7 downto 0);
   signal write    : std_logic;
begin
   test: line_buffer port map (address, data_in, data_out, write);
		process is begin 
			--Init with everything 0 
			address <= (others => '0');
			write <='0';
			data_in <= (others => '0'); 
			--Start with 2 writes 
			address <= x"01";
			data_in <= x"0F";
			write <= '1';
			wait for 10 ns; 
			write <= '0';
			wait for 10 ns; 
			address <= x"02";
			data_in <= x"f0";
			write <= '1';
			--Read from these two address 
			wait for 10 ns; 
			write <= '0'; 
			wait for 10 ns; 
			address <= x"01";
			wait for 10 ns; 
			address <= x"02"; 
			wait; 
		end process; 
end behaviour;

