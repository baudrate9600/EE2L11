library IEEE;
use IEEE.std_logic_1164.ALL;

entity sqi is
   port(reset    : out std_logic;
        clk      : out std_logic;
        cs       : out std_logic;
        en       : out std_logic;
        data_in  : in std_logic_vector(3 downto 0);
        data_out : out std_logic_vector(3 downto 0));
end sqi;

