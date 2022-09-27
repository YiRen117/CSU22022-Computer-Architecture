----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/12 15:09:34
-- Design Name: 
-- Module Name: logic_circuit_32bit - Behavioral
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

entity logic_circuit_32bit is
port (
       x_in, y_in : in std_logic_vector(31 downto 0);
       S : in std_logic_vector(1 downto 0);
       G : out std_logic_vector(31 downto 0));
end logic_circuit_32bit;

architecture Behavioral of logic_circuit_32bit is
COMPONENT logic_circuit_1bit
port(
       x, y : in std_logic;
       S : in std_logic_vector(1 downto 0);
       G : out std_logic);
end COMPONENT;

begin
       circuit0: logic_circuit_1bit PORT MAP(
            x => x_in(0),
            y => y_in(0),
            S => S,
            G => G(0));
            
       circuit1: logic_circuit_1bit PORT MAP(
            x => x_in(1),
            y => y_in(1),
            S => S,
            G => G(1));
            
       circuit2: logic_circuit_1bit PORT MAP(
            x => x_in(2),
            y => y_in(2),
            S => S,
            G => G(2));
            
       circuit3: logic_circuit_1bit PORT MAP(
            x => x_in(3),
            y => y_in(3),
            S => S,
            G => G(3));
            
       circuit4: logic_circuit_1bit PORT MAP(
            x => x_in(4),
            y => y_in(4),
            S => S,
            G => G(4));
            
       circuit5: logic_circuit_1bit PORT MAP(
            x => x_in(5),
            y => y_in(5),
            S => S,
            G => G(5));
            
       circuit6: logic_circuit_1bit PORT MAP(
            x => x_in(6),
            y => y_in(6),
            S => S,
            G => G(6));
            
       circuit7: logic_circuit_1bit PORT MAP(
            x => x_in(7),
            y => y_in(7),
            S => S,
            G => G(7));
            
       circuit8: logic_circuit_1bit PORT MAP(
            x => x_in(8),
            y => y_in(8),
            S => S,
            G => G(8));
            
       circuit9: logic_circuit_1bit PORT MAP(
            x => x_in(9),
            y => y_in(9),
            S => S,
            G => G(9));

       circuit10: logic_circuit_1bit PORT MAP(
            x => x_in(10),
            y => y_in(10),
            S => S,
            G => G(10));
            
       circuit11: logic_circuit_1bit PORT MAP(
            x => x_in(11),
            y => y_in(11),
            S => S,
            G => G(11));
            
       circuit12: logic_circuit_1bit PORT MAP(
            x => x_in(12),
            y => y_in(12),
            S => S,
            G => G(12));
            
       circuit13: logic_circuit_1bit PORT MAP(
            x => x_in(13),
            y => y_in(13),
            S => S,
            G => G(13));
            
       circuit14: logic_circuit_1bit PORT MAP(
            x => x_in(14),
            y => y_in(14),
            S => S,
            G => G(14));
            
       circuit15: logic_circuit_1bit PORT MAP(
            x => x_in(15),
            y => y_in(15),
            S => S,
            G => G(15));
            
       circuit16: logic_circuit_1bit PORT MAP(
            x => x_in(16),
            y => y_in(16),
            S => S,
            G => G(16));
            
       circuit17: logic_circuit_1bit PORT MAP(
            x => x_in(17),
            y => y_in(17),
            S => S,
            G => G(17));
            
       circuit18: logic_circuit_1bit PORT MAP(
            x => x_in(18),
            y => y_in(18),
            S => S,
            G => G(18));
            
       circuit19: logic_circuit_1bit PORT MAP(
            x => x_in(19),
            y => y_in(19),
            S => S,
            G => G(19));
            
       circuit20: logic_circuit_1bit PORT MAP(
            x => x_in(20),
            y => y_in(20),
            S => S,
            G => G(20));
            
       circuit21: logic_circuit_1bit PORT MAP(
            x => x_in(21),
            y => y_in(21),
            S => S,
            G => G(21));
            
       circuit22: logic_circuit_1bit PORT MAP(
            x => x_in(22),
            y => y_in(22),
            S => S,
            G => G(22));
            
       circuit23: logic_circuit_1bit PORT MAP(
            x => x_in(23),
            y => y_in(23),
            S => S,
            G => G(23));
            
       circuit24: logic_circuit_1bit PORT MAP(
            x => x_in(24),
            y => y_in(24),
            S => S,
            G => G(24));
            
       circuit25: logic_circuit_1bit PORT MAP(
            x => x_in(25),
            y => y_in(25),
            S => S,
            G => G(25));
            
       circuit26: logic_circuit_1bit PORT MAP(
            x => x_in(26),
            y => y_in(26),
            S => S,
            G => G(26));
            
       circuit27: logic_circuit_1bit PORT MAP(
            x => x_in(27),
            y => y_in(27),
            S => S,
            G => G(27));
            
       circuit28: logic_circuit_1bit PORT MAP(
            x => x_in(28),
            y => y_in(28),
            S => S,
            G => G(28));
            
       circuit29: logic_circuit_1bit PORT MAP(
            x => x_in(29),
            y => y_in(29),
            S => S,
            G => G(29));
           
       circuit30: logic_circuit_1bit PORT MAP(
            x => x_in(30),
            y => y_in(30),
            S => S,
            G => G(30));
            
       circuit31: logic_circuit_1bit PORT MAP(
            x => x_in(31),
            y => y_in(31),
            S => S,
            G => G(31));
            
end Behavioral;
