----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/16 14:57:06
-- Design Name: 
-- Module Name: mux4_1bit - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8_1bit is
port (
        In0 : in std_logic;
        In1 : in std_logic;
        In2_5 : in std_logic_vector(3 downto 0);
        In6_7 : in std_logic_vector(1 downto 0);
        MS : in std_logic_vector(2 downto 0);
        Z : out std_logic
        );
end mux8_1bit;

architecture Behavioral of mux8_1bit is
    begin
        Z <= In0 when MS(0)='0' and MS(1)='0' and MS(2)='0' else
        In1 when MS(0)='1' and MS(1)='0' and MS(2)='0' else
        In2_5(0) when MS(0)='0' and MS(1)='1' and MS(2)='0' else
        In2_5(1) when MS(0)='1' and MS(1)='1' and MS(2)='0' else
        In2_5(2) when MS(0)='0' and MS(1)='0' and MS(2)='1' else
        In2_5(3) when MS(0)='1' and MS(1)='0' and MS(2)='1' else
        In6_7(0) when MS(0)='0' and MS(1)='1' and MS(2)='1' else
        In6_7(1) when MS(0)='1' and MS(1)='1' and MS(2)='1' else
        '0';
end Behavioral;
