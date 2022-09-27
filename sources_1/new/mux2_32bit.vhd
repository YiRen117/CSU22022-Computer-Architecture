library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2_32bit is
port (
        In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        s : in std_logic;
        Z : out std_logic_vector(31 downto 0)
        );
end mux2_32bit;

architecture Behavioral of mux2_32bit is
    begin
        Z <= In0 when S='0' else
        In1 when S='1'else
        "00000000000000000000000000000000";
end Behavioral;
