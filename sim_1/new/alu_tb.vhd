----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 19:18:59
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

entity alu_tb is
end alu_tb;

architecture Behavioral of alu_tb is
    COMPONENT alu
    PORT(
        S: in std_logic_vector(3 downto 0);
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        G: out std_logic_vector(31 downto 0);
        V: out std_logic;
        C: out std_logic);
    END COMPONENT;
    
     --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic := '0';
   signal C : std_logic := '0';
   signal G : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          A => A,
          B => B,
          S => S,
          G => G,
          C => C,
          V => V
   );
   
   stim_proc: process
   begin		

        A <= "00100000001100000100001110010001";
        B <= "00000000000000000000000000000011";
        
      wait for 2 ns;	
        S <= "0000";
        
      wait for 2 ns;
        S <= "0001";
        
      wait for 2 ns;	
        S <= "0010";
        
      wait for 2 ns;	
        S <= "0011";
        
      wait for 2 ns;
        S <= "0100";
        
      wait for 2 ns;	
        S <= "0101";
        
      wait for 2 ns;	
        S <= "0110";
        
      wait for 2 ns;	
        S <= "0111";
        
      wait for 2 ns;	
        S <= "1000";
        
      wait for 2 ns;	
        S <= "1010";
        
      wait for 2 ns;
        S <= "1100";
        
      wait for 2 ns;	
        S <= "1110";
        
      wait;
     
   end process;

end Behavioral;
