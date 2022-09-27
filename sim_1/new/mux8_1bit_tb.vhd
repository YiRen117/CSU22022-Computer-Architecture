----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/16 15:05:54
-- Design Name: 
-- Module Name: mux4_1bit_tb - Behavioral
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

entity mux8_1bit_tb is
end mux8_1bit_tb;

architecture Behavioral of mux8_1bit_tb is
    COMPONENT mux8_1bit
    PORT(
        In0, In1 : in std_logic;
        In2_5 : in std_logic_vector(3 downto 0);
        In6_7 : in std_logic_vector(1 downto 0);
        MS : in std_logic_vector(2 downto 0);
        Z : out std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal S : std_logic_vector(2 downto 0) := (others => '0');
   signal In0, In1 : std_logic := '0';
   signal In2_5 : std_logic_vector(3 downto 0) := (others => '0');
   signal In6_7 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic := '0';
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: mux8_1bit PORT MAP (
          MS => s,
          In0 => In0,
          In1 => In1,
          In2_5 => In2_5,
          In6_7 => In6_7,
          Z => Z
   );

   In0 <= '0';
   In1 <= '1';
   In2_5 <= "1010";
   In6_7 <= "10";
   
   stim_proc: process
   begin		
      wait for 2 ns;
        S <= "000";
        
      wait for 2 ns;	
        S <="001";
        
      wait for 2 ns;
        S <= "010";
        
      wait for 2 ns;	
        S <= "011";
        
      wait for 2 ns;
        S <= "100";
        
      wait for 2 ns;	
        S <= "101";
        
      wait for 2 ns;
        S <= "110";
        
      wait for 2 ns;	
        S <= "111";
     
   end process;


end Behavioral;

