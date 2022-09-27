----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 17:39:17
-- Design Name: 
-- Module Name: B_input_logic_tb - Behavioral
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

entity B_input_logic_tb is
end B_input_logic_tb;

architecture Behavioral of B_input_logic_tb is
    COMPONENT B_input_logic
    PORT(
        S : in std_logic_vector(1 downto 0);
        const : in std_logic_vector(31 downto 0);
        B_in : in std_logic_vector(31 downto 0);
        B_out : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal B_in : std_logic_vector(31 downto 0) := (others => '0');
   signal const : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal B_out : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: B_input_logic PORT MAP (
          S => s,
          B_in => B_in,
          const => const,
          B_out => B_out
   );

   B_in <= "00100000001100000100001110010001";
   const <= "11111111111111111111111111111111";
   
   stim_proc: process
   begin		

      wait for 2 ns;
        S <= "00";
        
      wait for 2 ns;	
        S <= "01";
        
      wait for 2 ns;
        S <= "10";
        
      wait for 2 ns;	
        S <= "11";
     
   end process;
end Behavioral;
