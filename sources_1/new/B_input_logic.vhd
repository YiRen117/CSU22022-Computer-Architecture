----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/12 13:30:37
-- Design Name: 
-- Module Name: mux4_32bit - Behavioral
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

entity B_input_logic is
port (
        S : in std_logic_vector(1 downto 0);
        const : in std_logic_vector(31 downto 0);
        B_in : in std_logic_vector(31 downto 0);
        B_out : out std_logic_vector(31 downto 0)
        );
end B_input_logic;

architecture Behavioral of B_input_logic is
    begin
        B_out <= not(const or B_in) when S(0)='0' and S(1)='0' else
        B_in when S(0)='1' and S(1)='0' else
        not(B_in) when S(0)='0' and S(1)='1' else
        const when S(0)='1' and S(1)='1' else
        "00000000000000000000000000000000";
end Behavioral;
