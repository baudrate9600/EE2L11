library IEEE;
use IEEE.std_logic_1164.ALL;

entity line_buffer is
   port(address  : in  std_logic_vector(7 downto 0);
        data_in  : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0);
        write    : in  std_logic);
end line_buffer;

