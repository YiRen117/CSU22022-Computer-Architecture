library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux32_32bit is
Port (
        In0, In1, In2, In3, In4, In5, In6, In7, In8, In9,In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31: in std_logic_vector(31 downto 0);
        S : in std_logic_vector(4 downto 0);
        Z : out std_logic_vector(31 downto 0));
end mux32_32bit;

architecture Behavioral of mux32_32bit is
    begin
        Z <= In0 after 1 ns when S(0)='0' and S(1)='0' and S(2)='0' and S(3)='0' and S(4)='0' else
        In1 after 1 ns when S(0)='1' and S(1)='0' and S(2)='0' and S(3)='0' and S(4)='0' else
        In2 after 1 ns when S(0)='0' and S(1)='1' and S(2)='0' and S(3)='0' and S(4)='0' else
        In3 after 1 ns when S(0)='1' and S(1)='1' and S(2)='0' and S(3)='0' and S(4)='0' else
        In4 after 1 ns when S(0)='0' and S(1)='0' and S(2)='1' and S(3)='0' and S(4)='0' else
        In5 after 1 ns when S(0)='1' and S(1)='0' and S(2)='1' and S(3)='0' and S(4)='0' else
        In6 after 1 ns when S(0)='0' and S(1)='1' and S(2)='1' and S(3)='0' and S(4)='0' else
        In7 after 1 ns when S(0)='1' and S(1)='1' and S(2)='1' and S(3)='0' and S(4)='0' else
        In8 after 1 ns when S(0)='0' and S(1)='0' and S(2)='0' and S(3)='1' and S(4)='0' else
        In9 after 1 ns when S(0)='1' and S(1)='0' and S(2)='0' and S(3)='1' and S(4)='0' else
        In10 after 1 ns when S(0)='0' and S(1)='1' and S(2)='0' and S(3)='1' and S(4)='0' else
        In11 after 1 ns when S(0)='1' and S(1)='1' and S(2)='0' and S(3)='1' and S(4)='0' else
        In12 after 1 ns when S(0)='0' and S(1)='0' and S(2)='1' and S(3)='1' and S(4)='0' else
        In13 after 1 ns when S(0)='1' and S(1)='0' and S(2)='1' and S(3)='1' and S(4)='0' else
        In14 after 1 ns when S(0)='0' and S(1)='1' and S(2)='1' and S(3)='1' and S(4)='0' else
        In15 after 1 ns when S(0)='1' and S(1)='1' and S(2)='1' and S(3)='1' and S(4)='0' else
        In16 after 1 ns when S(0)='0' and S(1)='0' and S(2)='0' and S(3)='0' and S(4)='1' else
        In17 after 1 ns when S(0)='1' and S(1)='0' and S(2)='0' and S(3)='0' and S(4)='1' else
        In18 after 1 ns when S(0)='0' and S(1)='1' and S(2)='0' and S(3)='0' and S(4)='1' else
        In19 after 1 ns when S(0)='1' and S(1)='1' and S(2)='0' and S(3)='0' and S(4)='1' else
        In20 after 1 ns when S(0)='0' and S(1)='0' and S(2)='1' and S(3)='0' and S(4)='1' else
        In21 after 1 ns when S(0)='1' and S(1)='0' and S(2)='1' and S(3)='0' and S(4)='1' else
        In22 after 1 ns when S(0)='0' and S(1)='1' and S(2)='1' and S(3)='0' and S(4)='1' else
        In23 after 1 ns when S(0)='1' and S(1)='1' and S(2)='1' and S(3)='0' and S(4)='1' else
        In24 after 1 ns when S(0)='0' and S(1)='0' and S(2)='0' and S(3)='1' and S(4)='1' else
        In25 after 1 ns when S(0)='1' and S(1)='0' and S(2)='0' and S(3)='1' and S(4)='1' else
        In26 after 1 ns when S(0)='0' and S(1)='1' and S(2)='0' and S(3)='1' and S(4)='1' else
        In27 after 1 ns when S(0)='1' and S(1)='1' and S(2)='0' and S(3)='1' and S(4)='1' else
        In28 after 1 ns when S(0)='0' and S(1)='0' and S(2)='1' and S(3)='1' and S(4)='1' else
        In29 after 1 ns when S(0)='1' and S(1)='0' and S(2)='1' and S(3)='1' and S(4)='1' else
        In30 after 1 ns when S(0)='0' and S(1)='1' and S(2)='1' and S(3)='1' and S(4)='1' else
        In31 after 1 ns when S(0)='1' and S(1)='1' and S(2)='1' and S(3)='1' and S(4)='1' else
        "00000000000000000000000000000000" after 1 ns;
end Behavioral;
