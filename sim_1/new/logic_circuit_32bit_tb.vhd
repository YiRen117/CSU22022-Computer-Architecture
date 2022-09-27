----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/16 13:27:01
-- Design Name: 
-- Module Name: logic_circuit_1bit_tb - Behavioral
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

entity logic_circuit_32bit_tb is
end logic_circuit_32bit_tb;

architecture Behavioral of logic_circuit_32bit_tb is
    COMPONENT logic_circuit_32bit
    PORT(
       x_in, y_in : in std_logic_vector(31 downto 0);
       S : in std_logic_vector(1 downto 0);
       G : out std_logic_vector(31 downto 0)
       );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: logic_circuit_32bit PORT MAP (
          S => s,
          x_in => In0,
          y_in => In1,
          G => G
   );

   In0 <= "01000101000110000100111100001001";
   In1 <= "11111111111111111111111111111111";
   
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