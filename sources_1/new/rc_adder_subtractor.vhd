----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/12 13:21:19
-- Design Name: 
-- Module Name: rc_adder_subtractor - Behavioral
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

entity rc_adder_subtractor is
port(
        x, y : in std_logic_vector(31 downto 0);
        G : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(31 downto 0);
        Cout, Vflag : out std_logic);
end rc_adder_subtractor;

architecture Behavioral of rc_adder_subtractor is
COMPONENT B_input_logic
port(
        S : in std_logic_vector(1 downto 0);
        const : in std_logic_vector(31 downto 0);
        B_in : in std_logic_vector(31 downto 0);
        B_out : out std_logic_vector(31 downto 0)
        );
end COMPONENT;

COMPONENT ripple_carry_adder
port(
        x, y : in std_logic_vector(31 downto 0);
        Cin : in std_logic;
        G_out : out std_logic_vector(31 downto 0);
        Cout, V : out std_logic);
end COMPONENT;

signal mux_out_y : std_logic_vector(31 downto 0);

begin
        b_input : B_input_logic PORT MAP(
            B_in => y,
            const => "11111111111111111111111111111111",
            S => G(2 downto 1),
            B_out => mux_out_y
            );
        
        rc_adder : ripple_carry_adder PORT MAP(
            x => x,
            y => mux_out_y,
            Cin => G(0),
            G_out => S, 
            Cout => Cout,
            V => Vflag
            );

end Behavioral;
