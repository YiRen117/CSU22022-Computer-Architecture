----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/16 16:26:47
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    COMPONENT full_adder
    PORT(
        x, y, Cin : in std_logic;
        s, Cout : out std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal s : std_logic := '0';
   signal Cout : std_logic := '0';
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          x => x,
          y => y,
          Cin => Cin,
          s => s,
          Cout => Cout
   );
   
   stim_proc: process
   begin		

        Cin <= '0';
      wait for 2 ns;
        x <= '0';
        y <= '1';
        
      wait for 2 ns;	
        x <= '1';
        y <= '1';
        
      wait for 2 ns;
        x <= '1';
        y <= '0';
        
      wait for 2 ns;	
        x <= '1';
        y <= '1';
        
        Cin <= '1';
      wait for 2 ns;
        x <= '0';
        y <= '0';
        
      wait for 2 ns;	
        x <= '0';
        y <= '1';
        
      wait for 2 ns;
        x <= '1';
        y <= '0';
        
      wait for 2 ns;	
        x <= '1';
        y <= '1';
     
   end process;

end Behavioral;
