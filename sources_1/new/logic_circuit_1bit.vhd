library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logic_circuit_1bit is
port (
       x, y : in std_logic;
       S : in std_logic_vector(1 downto 0);
       G : out std_logic);
end logic_circuit_1bit;

architecture Behavioral of logic_circuit_1bit is
COMPONENT mux4_1bit
port(
        In0 : in std_logic;
        In1 : in std_logic;
        In2 : in std_logic;
        In3 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic);
end COMPONENT;

signal Input0, Input1, Input2, Input3: std_logic;

    begin
 
        Input0 <= x and y;
        Input1 <= x or y;
        Input2 <= x xor y;
        Input3 <= not x;
    
        b_input_logic: mux4_1bit PORT MAP(
        In0 => Input0,
        In1 => Input1,
        In2 => Input2,
        In3 => Input3,
        S => S,
        Z => G);
 
end Behavioral;
