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

entity rcas_tb is
end rcas_tb;

architecture Behavioral of rcas_tb is
    COMPONENT rc_adder_subtractor
    PORT(
        x, y : in std_logic_vector(31 downto 0);
        G : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(31 downto 0);
        Cout, Vflag : out std_logic);
    END COMPONENT;
    
     --Inputs
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal y : std_logic_vector(31 downto 0) := (others => '0');
   signal G : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic := '0';
   signal Cout : std_logic := '0';
   signal S : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: rc_adder_subtractor PORT MAP (
          x => x,
          y => y,
          G => G,
          S => S,
          Cout => Cout,
          Vflag => V
   );
   
   stim_proc: process
   begin		

        x <= "00100000001100000100001110010001";
        y <= "00000000000000000000000000000011";
        
      wait for 2 ns;	
        G <= "0000";
        
      wait for 2 ns;
        G <= "0001";
        
      wait for 2 ns;	
        G <= "0010";
        
      wait for 2 ns;	
        G <= "0011";
        
      wait for 2 ns;
        G <= "0100";
        
      wait for 2 ns;	
        G <= "0101";
        
      wait for 2 ns;	
        G <= "0110";
        
      wait for 2 ns;	
        G <= "0111";
        
      wait;
     
   end process;

end Behavioral;
