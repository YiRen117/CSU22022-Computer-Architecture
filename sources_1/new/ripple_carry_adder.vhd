----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/12 09:48:21
-- Design Name: 
-- Module Name: ripple_carry_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_carry_adder is
port (
        x, y : in std_logic_vector(31 downto 0);
        Cin : in std_logic;
        G_out : out std_logic_vector(31 downto 0);
        Cout, V : out std_logic);
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is
COMPONENT full_adder
port (
        x, y, Cin : in std_logic;
        s, Cout : out std_logic);
end COMPONENT;

signal C: std_logic_vector(31 downto 1);
signal C_out : std_logic;
signal G : std_logic_vector(31 downto 0);

begin
        adder00: full_adder PORT MAP(
            x => x(0),
            y => y(0),
            Cin => Cin,
            S => G(0), 
            Cout => C(1)
        );
        
        adder01: full_adder PORT MAP(
            x => x(1),
            y => y(1),
            Cin => C(1),
            S => G(1), 
            Cout => C(2)
        );
        
        adder02: full_adder PORT MAP(
            x => x(2),
            y => y(2),
            Cin => C(2),
            S => G(2), 
            Cout => C(3)
        );
        
       adder03: full_adder PORT MAP(
            x => x(3),
            y => y(3),
            Cin => C(3),
            S => G(3), 
            Cout => C(4)
        );
        
        adder04: full_adder PORT MAP(
            x => x(4),
            y => y(4),
            Cin => C(4),
            S => G(4), 
            Cout => C(5)
        );
        
        adder05: full_adder PORT MAP(
            x => x(5),
            y => y(5),
            Cin => C(5),
            S => G(5), 
            Cout => C(6)
        );
        
        adder06: full_adder PORT MAP(
            x => x(6),
            y => y(6),
            Cin => C(6),
            S => G(6), 
            Cout => C(7)
        );
        
        adder07: full_adder PORT MAP(
            x => x(7),
            y => y(7),
            Cin => C(7),
            S => G(7), 
            Cout => C(8)
        );
        
        adder08: full_adder PORT MAP(
            x => x(8),
            y => y(8),
            Cin => C(8),
            S => G(8), 
            Cout => C(9)
        );
        
       adder09: full_adder PORT MAP(
            x => x(9),
            y => y(9),
            Cin => C(9),
            S => G(9), 
            Cout => C(10)
        );
        
       adder10: full_adder PORT MAP(
            x => x(10),
            y => y(10),
            Cin => C(10),
            S => G(10), 
            Cout => C(11)
        );
        
        adder11: full_adder PORT MAP(
            x => x(11),
            y => y(11),
            Cin => C(11),
            S => G(11), 
            Cout => C(12)
        );
        
        adder12: full_adder PORT MAP(
            x => x(12),
            y => y(12),
            Cin => C(12),
            S => G(12), 
            Cout => C(13)
        );
        
       adder13: full_adder PORT MAP(
            x => x(13),
            y => y(13),
            Cin => C(13),
            S => G(13), 
            Cout => C(14)
        );
        
        adder14: full_adder PORT MAP(
            x => x(14),
            y => y(14),
            Cin => C(14),
            S => G(14), 
            Cout => C(15)
        );
        
        adder15: full_adder PORT MAP(
            x => x(15),
            y => y(15),
            Cin => C(15),
            S => G(15), 
            Cout => C(16)
        );
        
        adder16: full_adder PORT MAP(
            x => x(16),
            y => y(16),
            Cin => C(16),
            S => G(16), 
            Cout => C(17)
        );
        
        adder17: full_adder PORT MAP(
            x => x(17),
            y => y(17),
            Cin => C(17),
            S => G(17), 
            Cout => C(18)
        );
        
        adder18: full_adder PORT MAP(
            x => x(18),
            y => y(18),
            Cin => C(18),
            S => G(18), 
            Cout => C(19)
        );
        
       adder19: full_adder PORT MAP(
            x => x(19),
            y => y(19),
            Cin => C(19),
            S => G(19), 
            Cout => C(20)
        );
        
        adder20: full_adder PORT MAP(
            x => x(20),
            y => y(20),
            Cin => C(20),
            S => G(20), 
            Cout => C(21)
        );
        
        adder21: full_adder PORT MAP(
            x => x(21),
            y => y(21),
            Cin => C(21),
            S => G(21), 
            Cout => C(22)
        );
        
        adder22: full_adder PORT MAP(
            x => x(22),
            y => y(22),
            Cin => C(22),
            S => G(22), 
            Cout => C(23)
        );
        
       adder23: full_adder PORT MAP(
            x => x(23),
            y => y(23),
            Cin => C(23),
            S => G(23), 
            Cout => C(24)
        );
        
        adder24: full_adder PORT MAP(
            x => x(24),
            y => y(24),
            Cin => C(24),
            S => G(24), 
            Cout => C(25)
        );
        
        adder25: full_adder PORT MAP(
            x => x(25),
            y => y(25),
            Cin => C(25),
            S => G(25), 
            Cout => C(26)
        );
        
        adder26: full_adder PORT MAP(
            x => x(26),
            y => y(26),
            Cin => C(26),
            S => G(26), 
            Cout => C(27)
        );
        
        adder27: full_adder PORT MAP(
            x => x(27),
            y => y(27),
            Cin => C(27),
            S => G(27), 
            Cout => C(28)
        );
        
        adder28: full_adder PORT MAP(
            x => x(28),
            y => y(28),
            Cin => C(28),
            S => G(28), 
            Cout => C(29)
        );
        
       adder29: full_adder PORT MAP(
            x => x(29),
            y => y(29),
            Cin => C(29),
            S => G(29), 
            Cout => C(30)
        );
        
        adder30: full_adder PORT MAP(
            x => x(30),
            y => y(30),
            Cin => C(30),
            S => G(30), 
            Cout => C(31)
        );
        
        adder31: full_adder PORT MAP(
            x => x(31),
            y => y(31),
            Cin => C(31),
            S => G(31), 
            Cout => C_out
        );
        
        G_out <= G;
        Cout <= C_out;
        V <= C(31) xor C_out;

end Behavioral;
