----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/11/17 18:51:40
-- Design Name: 
-- Module Name: negative_detect_tb - Behavioral
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

entity zero_detect_tb is
end zero_detect_tb;

architecture Behavioral of zero_detect_tb is
    COMPONENT zero_detect
    PORT(
        input: in std_logic_vector(31 downto 0);
        output: out std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic := '0';
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: zero_detect PORT MAP (
          input => input,
          output => output
   );
   
   stim_proc: process
   begin		

      wait for 2 ns;
        input <= "00000000000000000000000000000000";
        
      wait for 2 ns;	
        input <= "11000000000000001000000100000001";
     
   end process;
end Behavioral;