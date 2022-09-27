----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/12 12:13:18
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
port (
        x, y, Cin : in std_logic;
        s, Cout : out std_logic);
end full_adder;

architecture Behavioral of full_adder is
COMPONENT half_adder
port(
    x, y : in std_logic;
    s, c : out std_logic
    );
end COMPONENT;

signal s1, c1, c2: std_logic;  

 begin  
    HA1: half_adder port map (
        x => x,
        y => y,
        s => s1, 
        c => c1);
    
    HA2: half_adder port map (
        x => s1,
        y => Cin,
        s =>  s,
        c => c2);
        
    Cout <= c1 or c2;
    
end Behavioral;
