library IEEE;
use IEEE.std_logic_1164.ALL;

entity counter16 is
   port(clk       : in  std_logic;
        reset     : in  std_logic;
        load      : in  std_logic;
        enable    : in  std_logic;
        count_in  : in  std_logic_vector(3 downto 0);
        count_out : out std_logic_vector(3 downto 0));
end counter16;

