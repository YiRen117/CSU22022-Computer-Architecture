----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 20:54:10
-- Design Name: 
-- Module Name: mux3_1bit - Behavioral
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

entity mux3_1bit is
port (
        In0 : in std_logic;
        In1 : in std_logic;
        In2 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic
        );
end mux3_1bit;

architecture Behavioral of mux3_1bit is
    begin
        Z <= In0 when S(0)='0' and S(1)='0' else
        In1 when S(0)='1' and S(1)='0' else
        In2 when S(0)='0' and S(1)='1' else
        '0';
end Behavioral;
