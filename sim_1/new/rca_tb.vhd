----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/16 17:00:39
-- Design Name: 
-- Module Name: rcas_tb - Behavioral
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

entity rca_tb is
end rca_tb;

architecture Behavioral of rca_tb is
    COMPONENT ripple_carry_adder
    PORT(
        x, y : in std_logic_vector(31 downto 0);
        Cin : in std_logic;
        G_out : out std_logic_vector(31 downto 0);
        Cout, V : out std_logic
       );
    END COMPONENT;
    
    --Inputs
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal y : std_logic_vector(31 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal V : std_logic := '0';
   signal Cout : std_logic := '0';
   signal G : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: ripple_carry_adder PORT MAP (
          x => x,
          y => y,
          Cin => Cin,
          G_out => G,
          Cout => Cout,
          V => V
   );
   
   stim_proc: process
   begin		

      wait for 2 ns;
        Cin <= '0';
        x <= "00100000001100000100001110010001";
        y <= "00000000000000000000000000000001";
        
      wait for 2 ns;	
        x <= "00100000001100000100001110010001";
        y <= "10001111111111111111111111111111";
        
      wait for 2 ns;
        x <= "11011111110011111011110001101111";
        y <= "00000000000000000000000000000001";
        
      wait for 2 ns;	
        x <= "11011111110011111011110001101111";
        y <= "10001111111111111111111111111111";
        
      wait for 2 ns;
        Cin <= '1';
        x <= "00100000001100000100001110010001";
        y <= "00000000000000000000000000000001";
        
      wait for 2 ns;	
        x <= "00100000001100000100001110010001";
        y <= "10001111111111111111111111111111";
        
      wait for 2 ns;
        x <= "11011111110011111011110001101111";
        y <= "00000000000000000000000000000001";
        
      wait for 2 ns;	
        x <= "11011111110011111011110001101111";
        y <= "10001111111111111111111111111111";
     
   end process;

end Behavioral;