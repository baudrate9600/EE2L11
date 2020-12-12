library IEEE;
use IEEE.std_logic_1164.ALL;

entity shift_register is
   port(clk      : in  std_logic;
        reset    : in  std_logic;
        load     : in  std_logic;
        shift    : in  std_logic;
				data_in  : in  std_logic_vector(7 downto 0); 
				data_out : out std_logic_vector(7 downto 0);
        shift_in  : in  std_logic_vector(3 downto 0);
        shift_out : out std_logic_vector(3 downto 0));
end shift_register;

