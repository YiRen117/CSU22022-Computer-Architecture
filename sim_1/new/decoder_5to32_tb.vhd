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

entity decoder_5to32_tb is
end decoder_5to32_tb;

architecture Behavioral of decoder_5to32_tb is
    COMPONENT decoder_5to32
    PORT(
         A : in std_logic_vector(4 downto 0);
         Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : out std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : std_logic := '0';
 
   begin 
       -- Instantiate the Unit Under Test (UUT)
       uut: decoder_5to32 PORT MAP (
              A => A,
              Q0 => Q0,
              Q1 => Q1,
              Q2 => Q2,
              Q3 => Q3,
              Q4 => Q4,
              Q5 => Q5,
              Q6 => Q6,
              Q7 => Q7,
              Q8 => Q8,
              Q9 => Q9,
              Q10 => Q10,
              Q11 => Q11,
              Q12 => Q12,
              Q13 => Q13,
              Q14 => Q14,
              Q15 => Q15,
              Q16 => Q16,
              Q17 => Q17,
              Q18 => Q18,
              Q19 => Q19,
              Q20 => Q20,
              Q21 => Q21,
              Q22 => Q22,
              Q23 => Q23,
              Q24 => Q24,
              Q25 => Q25,
              Q26 => Q26,
              Q27 => Q27,
              Q28 => Q28,
              Q29 => Q29,
              Q30 => Q30,
              Q31 => Q31
            );

       stim_proc: process
       begin		
            A <= "00000";
            
          wait for 2 ns;
            A <= "00001";
            
          wait for 2 ns;	
            A <= "00010";
            
          wait for 2 ns;
            A <= "00011";
            
          wait for 2 ns;	
            A <= "00100";
            
          wait for 2 ns;
            A <= "00101";
            
          wait for 2 ns;	
            A <= "00110";
            
          wait for 2 ns;
            A <= "00111";
            
          wait for 2 ns;	
            A <= "01000";
            
          wait for 2 ns;
            A <= "01001";
            
          wait for 2 ns;	
            A <= "01010";
            
          wait for 2 ns;
            A <= "01011";
            
          wait for 2 ns;	
            A <= "01100";
            
          wait for 2 ns;
            A <= "01101";
            
          wait for 2 ns;	
            A <= "01110";
            
          wait for 2 ns;
            A <= "01111";
            
          wait for 2 ns;        
            A <= "10000";
            
          wait for 2 ns;
            A <= "10001";
            
          wait for 2 ns;	
            A <= "10010";
            
          wait for 2 ns;
            A <= "10011";
            
          wait for 2 ns;	
            A <= "10100";
            
          wait for 2 ns;
            A <= "10101";
            
          wait for 2 ns;	
            A <= "10110";
            
          wait for 2 ns;
            A <= "10111";
            
          wait for 2 ns;	
            A <= "11000";
            
          wait for 2 ns;
            A <= "11001";
            
          wait for 2 ns;	
            A <= "11010";
            
          wait for 2 ns;
            A <= "11011";
            
          wait for 2 ns;	
            A <= "11100";
            
          wait for 2 ns;
            A <= "11101";
            
          wait for 2 ns;	
            A <= "11110";
            
          wait for 2 ns;
            A <= "11111";
         
          wait;
       end process;

end Behavioral;
