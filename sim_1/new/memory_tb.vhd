----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/03 19:57:46
-- Design Name: 
-- Module Name: control_memory - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_tb is
end memory_tb;

architecture Behavioral of memory_tb is
    COMPONENT memory
    Port (
        address : in std_logic_vector(31 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        write_enable : in std_logic;
        clock : in std_logic;
        read_data : out std_logic_vector(31 downto 0));
    end COMPONENT;
    
    --Inputs
   signal data_in, address : std_logic_vector(31 downto 0) := (others => '0');
   signal MW, Clk : std_logic := '0';

 	--Outputs
   signal data_out: std_logic_vector(31 downto 0) :=(others => '0');
   
   constant Clk_period : time := 2 ns;
   
   begin
-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
        address => address,
        write_data => data_in,
        write_enable => MW,
        clock => Clk,
        read_data => data_out
   );
   
   Clk <= not Clk after Clk_period/2;
        
   stim_proc: process
   begin		   
   
        MW <= '0';
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000000111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000010111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000011111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000100111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000101111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000110111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111000111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111001111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111010111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000111111111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011011";
        data_in <= X"11111111";
        MW <= '1';
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001011111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001100111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001101111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110010";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110011";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110100";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110101";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110110";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001110111";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111000";
        
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111001";
                
        wait until Clk'event and Clk = '1';
        address <= "00000000000000000000000001111010";
        
        wait;
   end process;


end Behavioral;