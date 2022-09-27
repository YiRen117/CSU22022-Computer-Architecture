----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 21:15:56
-- Design Name: 
-- Module Name: function_unit - Behavioral
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

entity function_unit is
port (
       FS : in std_logic_vector(4 downto 0);
       A : in std_logic_vector(31 downto 0);
       B : in std_logic_vector(31 downto 0);
       F : out std_logic_vector(31 downto 0);
       C, V, N, Z : out std_logic
       );
end function_unit;

architecture Behavioral of function_unit is
COMPONENT alu
port(
        S: in std_logic_vector(3 downto 0);
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        G: out std_logic_vector(31 downto 0);
        V: out std_logic;
        C: out std_logic);
end COMPONENT;

COMPONENT negative_detect
port(
        input: in std_logic_vector(31 downto 0);
        output: out std_logic);
end COMPONENT;

COMPONENT zero_detect
port(
        input: in std_logic_vector(31 downto 0);
        output: out std_logic);
end COMPONENT;

COMPONENT shifter
port(
       S : in std_logic_vector(1 downto 0);
       input : in std_logic_vector(31 downto 0);
       G : out std_logic_vector(31 downto 0));
end COMPONENT;

COMPONENT mux2_32bit
port(
       In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       s : in std_logic; 
       Z : out std_logic_vector(31 downto 0));
end COMPONENT;

signal alu_out, shifter_out : std_logic_vector(31 downto 0);

begin
        ALU_unit : alu PORT MAP(
            A => A,
            B => B,
            S => FS(3 downto 0),
            G => alu_out,
            C => C,
            V => V
            );
            
        zero_flag : zero_detect PORT MAP(
            input => alu_out,
            output => Z
            );
            
        neg_flag : negative_detect PORT MAP(
            input => alu_out,
            output => N
            );
        
        shifter_unit : shifter PORT MAP(
            input => B,
            S => FS(3 downto 2), 
            G => shifter_out
            );
            
        mux2to1 : mux2_32bit PORT MAP(
            In0 => alu_out,
            In1 => shifter_out,
            S => FS(4),
            Z => F
            );

end Behavioral;
