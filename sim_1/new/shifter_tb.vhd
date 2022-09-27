----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 21:06:17
-- Design Name: 
-- Module Name: shifter_tb - Behavioral
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

entity shifter_tb is
end shifter_tb;

architecture Behavioral of shifter_tb is
    COMPONENT shifter
    PORT(
       S : in std_logic_vector(1 downto 0);
       input : in std_logic_vector(31 downto 0);
       G : out std_logic_vector(31 downto 0)
       );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal input : std_logic_vector(31 downto 0) := (others => '0');
   

 	--Outputs
   signal G : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
          S => s,
          input => input,
          G => G
   );
   
   stim_proc: process
   begin		

      input <= "01000000000000000000000000000000";
      wait for 2 ns;
        S <= "00";
        
      wait for 2 ns;	
        S <= "01";
        
      wait for 2 ns;
        S <= "10";
     
   end process;

end Behavioral;