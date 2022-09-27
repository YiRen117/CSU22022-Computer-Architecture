----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/11 21:40:53
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
port(
        S: in std_logic_vector(3 downto 0);
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        G: out std_logic_vector(31 downto 0);
        V: out std_logic;
        C: out std_logic);
end alu;

architecture Behavioral of alu is
COMPONENT rc_adder_subtractor
port(
        x, y : in std_logic_vector(31 downto 0);
        G : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(31 downto 0);
        Cout, Vflag : out std_logic);
end COMPONENT;

COMPONENT logic_circuit_32bit
port(
       x_in, y_in : in std_logic_vector(31 downto 0);
       S : in std_logic_vector(1 downto 0);
       G : out std_logic_vector(31 downto 0));
end COMPONENT;

COMPONENT mux2_32bit
port(
       In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       s : in std_logic; 
       Z : out std_logic_vector(31 downto 0));
end COMPONENT;

signal logic_out, arithmetic_out : std_logic_vector(31 downto 0);

begin
        logic_unit : logic_circuit_32bit PORT MAP(
            x_in => A,
            y_in => B,
            S => S(2 downto 1),
            G => logic_out
            );
        
        arithmetic_unit : rc_adder_subtractor PORT MAP(
            x => A,
            y => B,
            G => S, 
            S => arithmetic_out,
            Cout => C,
            Vflag => V
            );
            
        mux2to1 : mux2_32bit PORT MAP(
            In0 => arithmetic_out,
            In1 => logic_out,
            S => S(3),
            Z => G
            );

end Behavioral;
