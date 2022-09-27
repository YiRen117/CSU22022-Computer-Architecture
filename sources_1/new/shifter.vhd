library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shifter is
port (
       S : in std_logic_vector(1 downto 0);
       input : in std_logic_vector(31 downto 0);
       G : out std_logic_vector(31 downto 0));
end shifter;

architecture Behavioral of shifter is
COMPONENT mux3_1bit
port(
        In0 : in std_logic;
        In1 : in std_logic;
        In2 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic);
end COMPONENT;

begin
    
         mux00: mux3_1bit PORT MAP(
            In0 => input(0),
            In1 => Input(1),
            In2 => '0',
            S => S,
            Z => G(0)
         );
         
         mux01: mux3_1bit PORT MAP(
            In0 => input(1),
            In1 => Input(2),
            In2 => input(0),
            S => S,
            Z => G(1)
         );
         
         mux02: mux3_1bit PORT MAP(
            In0 => input(2),
            In1 => Input(3),
            In2 => input(1),
            S => S,
            Z => G(2)
         );
         
         mux03: mux3_1bit PORT MAP(
            In0 => input(3),
            In1 => Input(4),
            In2 => input(2),
            S => S,
            Z => G(3)
         );
         
         mux04: mux3_1bit PORT MAP(
            In0 => input(4),
            In1 => Input(5),
            In2 => input(3),
            S => S,
            Z => G(4)
         );
         
         mux05: mux3_1bit PORT MAP(
            In0 => input(5),
            In1 => Input(6),
            In2 => input(4),
            S => S,
            Z => G(5)
         );
         
         mux06: mux3_1bit PORT MAP(
            In0 => input(6),
            In1 => Input(7),
            In2 => input(5),
            S => S,
            Z => G(6)
         );
         
         mux07: mux3_1bit PORT MAP(
            In0 => input(7),
            In1 => Input(8),
            In2 => input(6),
            S => S,
            Z => G(7)
         );
         
         mux08: mux3_1bit PORT MAP(
            In0 => input(8),
            In1 => Input(9),
            In2 => input(7),
            S => S,
            Z => G(8)
         );
         
         mux09: mux3_1bit PORT MAP(
            In0 => input(9),
            In1 => Input(10),
            In2 => input(8),
            S => S,
            Z => G(9)
         );
         
         mux10: mux3_1bit PORT MAP(
            In0 => input(10),
            In1 => Input(11),
            In2 => input(9),
            S => S,
            Z => G(10)
         );
         
         mux11: mux3_1bit PORT MAP(
            In0 => input(11),
            In1 => Input(12),
            In2 => input(10),
            S => S,
            Z => G(11)
         );
         
         mux12: mux3_1bit PORT MAP(
            In0 => input(12),
            In1 => Input(13),
            In2 => input(11),
            S => S,
            Z => G(12)
         );
         
         mux13: mux3_1bit PORT MAP(
            In0 => input(13),
            In1 => Input(14),
            In2 => input(12),
            S => S,
            Z => G(13)
         );
         
         mux14: mux3_1bit PORT MAP(
            In0 => input(14),
            In1 => Input(15),
            In2 => input(13),
            S => S,
            Z => G(14)
         );
         
         mux15: mux3_1bit PORT MAP(
            In0 => input(15),
            In1 => Input(16),
            In2 => input(14),
            S => S,
            Z => G(15)
         );
         
         mux16: mux3_1bit PORT MAP(
            In0 => input(16),
            In1 => Input(17),
            In2 => input(15),
            S => S,
            Z => G(16)
         );
         
         mux17: mux3_1bit PORT MAP(
            In0 => input(17),
            In1 => Input(18),
            In2 => input(16),
            S => S,
            Z => G(17)
         );
         
         mux18: mux3_1bit PORT MAP(
            In0 => input(18),
            In1 => Input(19),
            In2 => input(17),
            S => S,
            Z => G(18)
         );
         
         mux19: mux3_1bit PORT MAP(
            In0 => input(19),
            In1 => Input(20),
            In2 => input(18),
            S => S,
            Z => G(19)
         );
         
         mux20: mux3_1bit PORT MAP(
            In0 => input(20),
            In1 => Input(21),
            In2 => input(19),
            S => S,
            Z => G(20)
         );
         
         mux21: mux3_1bit PORT MAP(
            In0 => input(21),
            In1 => Input(22),
            In2 => input(20),
            S => S,
            Z => G(21)
         );
         
         mux22: mux3_1bit PORT MAP(
            In0 => input(22),
            In1 => Input(23),
            In2 => input(21),
            S => S,
            Z => G(22)
         );
         
         mux23: mux3_1bit PORT MAP(
            In0 => input(23),
            In1 => Input(24),
            In2 => input(22),
            S => S,
            Z => G(23)
         );
         
         mux24: mux3_1bit PORT MAP(
            In0 => input(24),
            In1 => Input(25),
            In2 => input(23),
            S => S,
            Z => G(24)
         );
         
         mux25: mux3_1bit PORT MAP(
            In0 => input(25),
            In1 => Input(26),
            In2 => input(24),
            S => S,
            Z => G(25)
         );
         
         mux26: mux3_1bit PORT MAP(
            In0 => input(26),
            In1 => Input(27),
            In2 => input(25),
            S => S,
            Z => G(26)
         );
         
         mux27: mux3_1bit PORT MAP(
            In0 => input(27),
            In1 => Input(28),
            In2 => input(26),
            S => S,
            Z => G(27)
         );
         
         mux28: mux3_1bit PORT MAP(
            In0 => input(28),
            In1 => Input(29),
            In2 => input(27),
            S => S,
            Z => G(28)
         );
         
         mux29: mux3_1bit PORT MAP(
            In0 => input(29),
            In1 => Input(30),
            In2 => input(28),
            S => S,
            Z => G(29)
         );
         
         mux30: mux3_1bit PORT MAP(
            In0 => input(30),
            In1 => Input(31),
            In2 => input(29),
            S => S,
            Z => G(30)
         );
         
         mux31: mux3_1bit PORT MAP(
            In0 => input(31),
            In1 => '0',
            In2 => input(30),
            S => S,
            Z => G(31)
         );
 
end Behavioral;
