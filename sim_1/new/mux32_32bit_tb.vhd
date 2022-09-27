----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/10/17 19:23:07
-- Design Name: 
-- Module Name: mux32_32bit_tb - Behavioral
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

entity mux32_32bit_tb is
end mux32_32bit_tb;

architecture Behavioral of mux32_32bit_tb is
    COMPONENT mux32_32bit
    PORT(
         In0, In1, In2, In3, In4, In5, In6, In7, In8, In9,In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31: in std_logic_vector(31 downto 0);
         S : in std_logic_vector(4 downto 0);
         Z : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal S: std_logic_vector(4 downto 0) := (others => '0');
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
   signal In2 : std_logic_vector(31 downto 0) := (others => '0');
   signal In3 : std_logic_vector(31 downto 0) := (others => '0');
   signal In4 : std_logic_vector(31 downto 0) := (others => '0');
   signal In5 : std_logic_vector(31 downto 0) := (others => '0');
   signal In6 : std_logic_vector(31 downto 0) := (others => '0');
   signal In7 : std_logic_vector(31 downto 0) := (others => '0');
   signal In8 : std_logic_vector(31 downto 0) := (others => '0');
   signal In9 : std_logic_vector(31 downto 0) := (others => '0');
   signal In10 : std_logic_vector(31 downto 0) := (others => '0');
   signal In11 : std_logic_vector(31 downto 0) := (others => '0');
   signal In12 : std_logic_vector(31 downto 0) := (others => '0');
   signal In13 : std_logic_vector(31 downto 0) := (others => '0');
   signal In14 : std_logic_vector(31 downto 0) := (others => '0');
   signal In15 : std_logic_vector(31 downto 0) := (others => '0');
   signal In16 : std_logic_vector(31 downto 0) := (others => '0');
   signal In17 : std_logic_vector(31 downto 0) := (others => '0');
   signal In18 : std_logic_vector(31 downto 0) := (others => '0');
   signal In19 : std_logic_vector(31 downto 0) := (others => '0');
   signal In20 : std_logic_vector(31 downto 0) := (others => '0');
   signal In21 : std_logic_vector(31 downto 0) := (others => '0');
   signal In22 : std_logic_vector(31 downto 0) := (others => '0');
   signal In23 : std_logic_vector(31 downto 0) := (others => '0');
   signal In24 : std_logic_vector(31 downto 0) := (others => '0');
   signal In25 : std_logic_vector(31 downto 0) := (others => '0');
   signal In26 : std_logic_vector(31 downto 0) := (others => '0');
   signal In27 : std_logic_vector(31 downto 0) := (others => '0');
   signal In28 : std_logic_vector(31 downto 0) := (others => '0');
   signal In29 : std_logic_vector(31 downto 0) := (others => '0');
   signal In30 : std_logic_vector(31 downto 0) := (others => '0');
   signal In31 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: mux32_32bit PORT MAP (
        S => S,
        In0 => In0,
        In1 => In1,
        In2 => In2,
        In3 => In3,
        In4 => In4,
        In5 => In5,
        In6 => In6,
        In7 => In7,
        In8 => In8,
        In9 => In9,
        In10 => In10,
        In11 => In11,
        In12 => In12,
        In13 => In13,
        In14 => In14,
        In15 => In15,
        In16 => In16,
        In17 => In17,
        In18 => In18,
        In19 => In19,
        In20 => In20,
        In21 => In21,
        In22 => In22,
        In23 => In23,
        In24 => In24,
        In25 => In25,
        In26 => In26,
        In27 => In27,
        In28 => In28,
        In29 => In29,
        In30 => In30,
        In31 => In31,
        Z => Z
        );

        In0 <= "00000000000000000000000000000000";
        In1 <= "00000000000000000000000000000001";
		In2 <= "00000000000000000000000000000010";
		In3 <= "00000000000000000000000000000100";
		In4 <= "00000000000000000000000000001000";
		In5 <= "00000000000000000000000000010000";
		In6 <= "00000000000000000000000000100000";
		In7 <= "00000000000000000000000001000000";
		In8 <= "00000000000000000000000010000000";
		In9 <= "00000000000000000000000100000000";
		In10 <= "00000000000000000000010000000000";
        In11 <= "00000000000000000000100000000000";
		In12 <= "00000000000000000001000000000000";
		In13 <= "00000000000000000010000000000000";
		In14 <= "00000000000000000100000000000000";
		In15 <= "00000000000000001000000000000000";
		In16 <= "00000000000000010000000000000000";
		In17 <= "00000000000000100000000000000000";
		In18 <= "00000000000001000000000000000000";
		In19 <= "00000000000010000000000000000000";
		In20 <= "00000000000100000000000000000000";
		In21 <= "00000000001000000000000000000000";
		In22 <= "00000000010000000000000000000000";
		In23 <= "00000000100000000000000000000000";
		In24 <= "00000001000000000000000000000000";
		In25 <= "00000010000000000000000000000000";
		In26 <= "00000100000000000000000000000000";
		In27 <= "00001000000000000000000000000000";
		In28 <= "00010000000000000000000000000000";
		In29 <= "00100000000000000000000000000000";
		In30 <= "01000000000000000000000000000000";
		In31 <= "10000000000000000000000000000000";

   stim_proc: process
   begin		
		
        S <= "00000";
        
      wait for 2 ns;
        S <= "00001";
        
      wait for 2 ns;	
        S <= "00010";
		
	  wait for 2 ns;
        S <= "00011";
        
      wait for 2 ns;	
        S <= "00100";
		
	  wait for 2 ns;
        S <= "00101";
        
      wait for 2 ns;	
        S <= "00110";
		
	  wait for 2 ns;
        S <= "00111";
        
      wait for 2 ns;	
        S <= "01000";
		
	  wait for 2 ns;
		S <= "01001";
        
      wait for 2 ns;	
        S <= "01010";
		
	  wait for 2 ns;
        S <= "01011";
        
      wait for 2 ns;	
        S <= "01100";
		
	  wait for 2 ns;
        S <= "01101";
        
      wait for 2 ns;	
        S <= "01110";
		
	  wait for 2 ns;
        S <= "01111";
		
	  wait for 2 ns;        
		S <= "10000";
		
      wait for 2 ns;
        S <= "10001";
        
      wait for 2 ns;	
        S <= "10010";
		
	  wait for 2 ns;
        S <= "10011";
        
      wait for 2 ns;	
        S <= "10100";
		
	  wait for 2 ns;
        S <= "10101";
        
      wait for 2 ns;	
        S <= "10110";
		
	  wait for 2 ns;
        S <= "10111";
        
      wait for 2 ns;	
        S <= "11000";
		
	  wait for 2 ns;
		S <= "11001";
        
      wait for 2 ns;	
        S <= "11010";
		
	  wait for 2 ns;
        S <= "11011";
        
      wait for 2 ns;	
        S <= "11100";
		
	  wait for 2 ns;
        S <= "11101";
        
      wait for 2 ns;	
        S <= "11110";
		
	  wait for 2 ns;
        S <= "11111";
        
      wait;
     
   end process;

end Behavioral;
