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

entity mux4_1bit_tb is
end mux4_1bit_tb;

architecture Behavioral of mux4_1bit_tb is
    COMPONENT mux4_1bit
    PORT(
        In0, In1, In2, In3 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal In2 : std_logic := '0';
   signal In3 : std_logic := '0';

 	--Outputs
   signal Z : std_logic := '0';
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: mux4_1bit PORT MAP (
          s => s,
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          Z => Z
   );

   In0 <= '0';
   In1 <= '1';
   In2 <= '0';
   In3 <= '1';
   
   stim_proc: process
   begin		
      wait for 2 ns;
        S <= "00";
        
      wait for 2 ns;	
        S <="01";
        
      wait for 2 ns;
        S <= "10";
        
      wait for 2 ns;	
        S <= "11";
     
   end process;


end Behavioral;
