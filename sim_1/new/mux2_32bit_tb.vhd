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

entity mux2_32bit_tb is
end mux2_32bit_tb;

architecture Behavioral of mux2_32bit_tb is
    COMPONENT mux2_32bit
    PORT(
         In0, In1: in std_logic_vector(31 downto 0);
         s : in std_logic;
         Z : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic := '0';
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: mux2_32bit PORT MAP (
          s => s,
          In0 => In0,
          In1 => In1,
          Z => Z
   );

   In0 <= "00100000001100000100001110010001";
   In1 <= "00000000000000000000000000000001";
   
   stim_proc: process
   begin		

      wait for 2 ns;
        S <= '1';
        
      wait for 2 ns;	
        S <= '0';
     
   end process;

end Behavioral;
