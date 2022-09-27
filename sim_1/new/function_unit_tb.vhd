----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 21:31:18
-- Design Name: 
-- Module Name: function_unit_tb - Behavioral
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

entity function_unit_tb is
end function_unit_tb;

architecture Behavioral of function_unit_tb is
    COMPONENT function_unit
    PORT(
       FS : in std_logic_vector(4 downto 0);
       A : in std_logic_vector(31 downto 0);
       B : in std_logic_vector(31 downto 0);
       F : out std_logic_vector(31 downto 0);
       C, V, N, Z : out std_logic
       );
    END COMPONENT;
    
     --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal FS : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic := '0';
   signal C : std_logic := '0';
   signal N : std_logic := '0';
   signal Z : std_logic := '0';
   signal F : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: function_unit PORT MAP (
          A => A,
          B => B,
          FS => FS,
          F => F,
          C => C,
          V => V,
          N => N,
          Z => Z
   );
   
   stim_proc: process
   begin		

        A <= "00100000001100000100001110010001";
        B <= "00000000000000000000000000000011";
        
      wait for 2 ns;	
        FS <= "00000";
        
      wait for 2 ns;
        FS <= "00001";
        
      wait for 2 ns;	
        FS <= "00010";
        
      wait for 2 ns;	
        FS <= "00011";
        
      wait for 2 ns;
        FS <= "00100";
        
      wait for 2 ns;	
        FS <= "00101";
        
      wait for 2 ns;	
        FS <= "00110";
        
      wait for 2 ns;	
        FS <= "00111";
        
      wait for 2 ns;	
        FS <= "01000";
        
      wait for 2 ns;	
        FS <= "01010";
        
      wait for 2 ns;
        FS <= "01100";
        
      wait for 2 ns;	
        FS <= "01110";
        
      wait for 2 ns;	
        FS <= "10000";
        
      wait for 2 ns;
        FS <= "10100";
        
      wait for 2 ns;	
        FS <= "11000";
        
      wait;
     
   end process;

end Behavioral;
