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

entity reg32_tb is
end reg32_tb;

architecture Behavioral of reg32_tb is
    COMPONENT reg32
    PORT(
         D : in std_logic_vector(31 downto 0);
         Clk : in std_logic;
         load : in std_logic;
         Q : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal D : std_logic_vector(31 downto 0) := (others => '0');
   signal load, Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(31 downto 0) := (others => '0');
 
   constant Clk_period : time := 2 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg32 PORT MAP (
          D => D,
          load => load,
          Clk => Clk,
          Q => Q
        );
        
   Clk <= not Clk after Clk_period/2;

   stim_proc: process
   begin
      
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000001";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000010";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000011";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000100";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000101";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000110";

      wait until Clk'event and Clk = '1';	
        load <= '1';
      
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000000111";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001000";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001001";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001010";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001011";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001100";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001101";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001110";

      wait until Clk'event and Clk = '1';	
        load <= '1';
      
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000001111";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010000";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010001";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010010";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010011";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010100";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010101";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010110";

      wait until Clk'event and Clk = '1';	
        load <= '1';
      
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000010111";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011000";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011001";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011010";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011011";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011100";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011101";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011110";

      wait until Clk'event and Clk = '1';	
        load <= '1';
      
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000011111";

      wait until Clk'event and Clk = '1';	
        load <= '1';
        
      wait until Clk'event and Clk = '1';	
        load <= '0';
        D <= "00000000000000000000000000100000";

      wait until Clk'event and Clk = '1';	
        load <= '1';
     
      wait;
   end process;

END;