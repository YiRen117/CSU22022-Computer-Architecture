----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 20:04:06
-- Design Name: 
-- Module Name: car17bit_tb - Behavioral
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

entity car17bit_tb is
end car17bit_tb;

architecture Behavioral of car17bit_tb is
COMPONENT car17bit
 Port (
        clock : in std_logic :='0';
        load : in std_logic :='0';
        input : in std_logic_vector (16 downto 0);
        output : out std_logic_vector (16 downto 0)
        );
end COMPONENT;

signal clock: std_logic;
signal load: std_logic;
signal input: std_logic_vector (16 downto 0) := (others => '0');
signal output: std_logic_vector (16 downto 0) := (others => '0');

constant Clk_period : time := 2 ns;

begin
 uut: car17bit port map ( 
         clock => clock,
         load => load,
         input => input,
         output => output
         );
                              
 stimulus: process
  begin       
  
  clock <= '0';
  wait for Clk_period;
  load <= '1';
  input <= "00000000000001111";
   
  clock <= '1';
  wait for Clk_period;
  
  clock <= '0';
  wait for Clk_period;
  load <= '0';
   
  clock <= '1';
  wait for Clk_period;

  clock <= '0';
  wait for Clk_period;
  load <= '1';
   
  clock <= '1';
  wait for Clk_period;

  wait;
  
end process;        

end Behavioral;
