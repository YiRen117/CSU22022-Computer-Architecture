----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/10/18 15:36:48
-- Design Name: 
-- Module Name: register_file_tb - Behavioral
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

entity register_file_tb is
end register_file_tb;

architecture Behavioral of register_file_tb is
    COMPONENT register_file
    PORT(
        src_A : in std_logic_vector(4 downto 0);
        src_B : in std_logic_vector(4 downto 0);
        des_A : in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        write : in std_logic;
        TD : in std_logic;
        TB : in std_logic;
        TA : in std_logic;
        data : in std_logic_vector(31 downto 0);
        data_A : out std_logic_vector(31 downto 0);
        data_B : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal Clk, write, TD, TB, TA : std_logic := '0';
   signal src_A, src_B, des_A : std_logic_vector(4 downto 0):= (others => '0');
   signal data : std_logic_vector(31 downto 0):= (others => '0');
   
   --Outputs
   signal data_A, data_B : std_logic_vector(31 downto 0):= (others => '0');
 
   constant Clk_period : time := 2 ns;

    begin
       uut: register_file PORT MAP (
            src_A => src_A,
            src_B => src_B,
            des_A => des_A,
            Clk => Clk,
            write => write,
            TA => TA,
            TB => TB,
            TD => TD,
            data => data,
            data_A => data_A,
            data_B => data_B
            );
            
       Clk <= not Clk after Clk_period/2;
       
       stim_proc: process
       begin
       
          --load student ID into registers
          wait until Clk'event and Clk = '1';
          write <= '1';
          
          wait until Clk'event and Clk = '1';	
            des_A <= "00000";
            data <= "00100000001100000100001110010001";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "00001";
            data <= "00100000001100000100001110010000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00010";
            data <= "00100000001100000100001110001001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00011";
            data <= "00100000001100000100001110001000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00100";
            data <= "00100000001100000100001110000111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00101";
            data <= "00100000001100000100001110000110";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00110";
            data <= "00100000001100000100001110000101";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00111";
            data <= "00100000001100000100001110000100";
            
          wait until Clk'event and Clk = '1';
            des_A <= "01000";
            data <= "00100000001100000100001110000011";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "01001";
            data <= "00100000001100000100001110000010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01010";
            data <= "00100000001100000100001110000001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01011";
            data <= "00100000001100000100001110000000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01100";
            data <= "00100000001100000100001101111001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01101";
            data <= "00100000001100000100001101111000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01110";
            data <= "00100000001100000100001101110111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01111";
            data <= "00100000001100000100001101110110";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10000";
            data <= "00100000001100000100001101110101";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "10001";
            data <= "00100000001100000100001101110100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10010";
            data <= "00100000001100000100001101110011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10011";
            data <= "00100000001100000100001101110010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10100";
            data <= "00100000001100000100001101110001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10101";
            data <= "00100000001100000100001101110000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10110";
            data <= "00100000001100000100001101101001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10111";
            data <= "00100000001100000100001101101000";
            
          wait until Clk'event and Clk = '1';
            des_A <= "11000";
            data <= "00100000001100000100001101100111";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "11001";
            data <= "00100000001100000100001101100110";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11010";
            data <= "00100000001100000100001101100101";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11011";
            data <= "00100000001100000100001101100100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11100";
            data <= "00100000001100000100001101100011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11101";
            data <= "00100000001100000100001101100010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11110";
            data <= "00100000001100000100001101100001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11111";
            data <= "00100000001100000100001101100000";
            
          wait until Clk'event and Clk = '1';	
            src_A <= "00001";
            src_B <= "01001";

          wait;
       end process;

end Behavioral;
