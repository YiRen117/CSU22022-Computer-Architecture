----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/03 22:41:24
-- Design Name: 
-- Module Name: control_memory_tb - Behavioral
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

entity control_memory_tb is
end control_memory_tb;

architecture Behavioral of control_memory_tb is
    COMPONENT control_memory
    Port (
        IN_CAR : in std_logic_vector(16 downto 0);
        FL : out std_logic; -- 0
        RZ : out std_logic; -- 1
        RN : out std_logic; -- 2
        RC : out std_logic; -- 3
        RV : out std_logic; -- 4
        MW : out std_logic; -- 5
        MM : out std_logic; -- 6
        RW : out std_logic; -- 7
        MD : out std_logic; -- 8
        FS : out std_logic_vector(4 downto 0); -- 9 to 13
        MB : out std_logic; -- 14
        TB : out std_logic; -- 15
        TA : out std_logic; -- 16
        TD : out std_logic; -- 17
        PL : out std_logic; -- 18
        PI : out std_logic; -- 19
        IL : out std_logic; -- 20
        MC : out std_logic; -- 21
        MS : out std_logic_vector(2 downto 0); -- 22 to 24
        NA : out std_logic_vector(16 downto 0) -- 25 to 41
    );
    end COMPONENT;

   --Inputs
   signal in_car : std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
   signal FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD, PL, PI, IL, MC: std_logic :=  '0';
   signal FS: std_logic_vector(4 downto 0) :=(others => '0');
   signal MS: std_logic_vector(2 downto 0) :=(others => '0');
   signal NA: std_logic_vector(16 downto 0) :=(others => '0');

begin
-- Instantiate the Unit Under Test (UUT)
   uut: control_memory PORT MAP (
        IN_CAR => in_car,
        FL => FL,
        RZ => RZ,
        RN => RN,
        RC => RC,
        RV => RV,
        MW => MW,
        MM => MM,
        RW => RW,
        MD => MD,
        FS => FS,
        MB => MB,
        TB => TB,
        TA => TA,
        TD => TD,
        PL => PL,
        PI => PI,
        IL => IL,
        MC => MC,
        MS => MS,
        NA => NA
   );
   
   stim_proc: process
   begin		

      in_car <= "00000000000000000";
      
      wait for 2 ns;
      in_car <= "00000000000000001";
        
      wait for 2 ns;	
      in_car <= "00000000000000010";
        
      wait for 2 ns;
      in_car <= "00000000000000011";
      
      wait for 2ns;
      in_car <= "00000000000000100";
      
      wait for 2 ns;
      in_car <= "00000000000000101";
        
      wait for 2 ns;	
      in_car <= "00000000000000110";
        
      wait for 2 ns;
      in_car <= "00000000000000111";
      
      wait for 2 ns;
      in_car <= "00000000000001000";
      
      wait for 2 ns;
      in_car <= "00000000000001001";
        
      wait for 2 ns;	
      in_car <= "00000000000001010";
        
      wait for 2 ns;
      in_car <= "00000000000001011";
      
      wait for 2ns;
      in_car <= "00000000000001100";
      
      wait for 2 ns;
      in_car <= "00000000000001101";
        
      wait for 2 ns;	
      in_car <= "00000000000001110";
        
      wait for 2 ns;
      in_car <= "00000000000001111";
      
      wait for 2 ns;
      in_car <= "00000000000010000";
      
      wait for 2 ns;
      in_car <= "00000000000010001";
        
      wait for 2 ns;	
      in_car <= "00000000000010010";
        
      wait for 2 ns;
      in_car <= "00000000000010011";
      
      wait for 2ns;
      in_car <= "00000000000010100";
      
      wait for 2 ns;
      in_car <= "00000000000010101";
        
      wait for 2 ns;	
      in_car <= "00000000000010110";
        
      wait for 2 ns;
      in_car <= "00000000000010111";
      
      wait for 2ns;
      in_car <= "00000000000011000";
      
      wait for 2 ns;
      in_car <= "00000000000011001";
        
      wait for 2 ns;	
      in_car <= "00000000000011010";
        
      wait for 2 ns;
      in_car <= "00000000000011011";
      
      wait for 2ns;
      in_car <= "00000000000011100";
      
      wait for 2 ns;
      in_car <= "00000000000011101";
        
      wait for 2 ns;	
      in_car <= "00000000000011110";
        
      wait for 2 ns;
      in_car <= "00000000000011111";
     
     wait for 2ns;
      in_car <= "00000000000100000";
      
      wait for 2 ns;
      in_car <= "00000000000100001";
        
      wait for 2 ns;	
      in_car <= "00000000000100010";
        
      wait for 2 ns;
      in_car <= "00000000000100011";
      
      wait for 2ns;
      in_car <= "00000000000100100";
      
      wait for 2 ns;
      in_car <= "00000000000100101";
        
      wait for 2 ns;	
      in_car <= "00000000000100110";
        
      wait for 2 ns;
      in_car <= "00000000000100111";
      
      wait for 2 ns;
      in_car <= "00000000000101000";
      
      wait for 2 ns;
      in_car <= "00000000000101001";
        
      wait for 2 ns;	
      in_car <= "00000000000101010";
        
      wait for 2 ns;
      in_car <= "00000000000101011";
      
      wait for 2ns;
      in_car <= "00000000000101100";
      
      wait for 2 ns;
      in_car <= "00000000000101101";
        
      wait for 2 ns;	
      in_car <= "00000000000101110";
        
      wait for 2 ns;
      in_car <= "00000000000101111";
      
      wait for 2 ns;
      in_car <= "00000000000110000";
      
      wait for 2 ns;
      in_car <= "00000000000110001";
        
      wait for 2 ns;	
      in_car <= "00000000000110010";
        
      wait for 2 ns;
      in_car <= "00000000000110011";
      
      wait for 2ns;
      in_car <= "00000000000110100";
      
      wait for 2 ns;
      in_car <= "00000000000110101";
        
      wait for 2 ns;	
      in_car <= "00000000000110110";
        
      wait for 2 ns;
      in_car <= "00000000000110111";
      
      wait for 2ns;
      in_car <= "00000000000111000";
      
      wait for 2 ns;
      in_car <= "00000000000111001";
        
      wait for 2 ns;	
      in_car <= "00000000000111010";
        
      wait for 2 ns;
      in_car <= "00000000000111011";
      
      wait for 2ns;
      in_car <= "00000000000111100";
      
      wait for 2 ns;
      in_car <= "00000000000111101";
        
      wait for 2 ns;	
      in_car <= "00000000000111110";
        
      wait for 2 ns;
      in_car <= "00000000000111111";
     
      wait for 2ns;
      in_car <= "00000000001000000";
      
      wait for 2 ns;
      in_car <= "00000000001000001";
        
      wait for 2 ns;	
      in_car <= "00000000001000010";
        
      wait for 2 ns;
      in_car <= "00000000001000011";
      
      wait for 2ns;
      in_car <= "00000000001000100";
      
      wait for 2 ns;
      in_car <= "00000000001000101";
        
      wait for 2 ns;	
      in_car <= "00000000001000110";
        
      wait for 2 ns;
      in_car <= "00000000001000111";
      
      wait for 2 ns;
      in_car <= "00000000001001000";
      
      wait for 2 ns;
      in_car <= "00000000001001001";
        
      wait for 2 ns;	
      in_car <= "00000000001001010";
        
      wait for 2 ns;
      in_car <= "00000000001001011";
      
      wait for 2ns;
      in_car <= "00000000001001100";
      
      wait for 2 ns;
      in_car <= "00000000001001101";
        
      wait for 2 ns;	
      in_car <= "00000000001001110";
        
      wait for 2 ns;
      in_car <= "00000000001001111";
      
      wait for 2 ns;
      in_car <= "00000000001010000";
      
      wait for 2 ns;
      in_car <= "00000000001010001";
        
      wait for 2 ns;	
      in_car <= "00000000001010010";
        
      wait for 2 ns;
      in_car <= "00000000001010011";
      
      wait for 2ns;
      in_car <= "00000000001010100";
      
      wait for 2 ns;
      in_car <= "00000000001010101";
        
      wait for 2 ns;	
      in_car <= "00000000001010110";
        
      wait for 2 ns;
      in_car <= "00000000001010111";
      
      wait for 2ns;
      in_car <= "00000000001011000";
      
      wait for 2 ns;
      in_car <= "00000000001011001";
        
      wait for 2 ns;	
      in_car <= "00000000001011010";
        
      wait for 2 ns;
      in_car <= "00000000001011011";
      
      wait for 2ns;
      in_car <= "00000000001011100";
      
      wait for 2 ns;
      in_car <= "00000000001011101";
        
      wait for 2 ns;	
      in_car <= "00000000001011110";
        
      wait for 2 ns;
      in_car <= "00000000001011111";
     
     wait for 2ns;
      in_car <= "00000000001100000";
      
      wait for 2 ns;
      in_car <= "00000000001100001";
        
      wait for 2 ns;	
      in_car <= "00000000001100010";
        
      wait for 2 ns;
      in_car <= "00000000001100011";
      
      wait for 2ns;
      in_car <= "00000000001100100";
      
      wait for 2 ns;
      in_car <= "00000000001100101";
        
      wait for 2 ns;	
      in_car <= "00000000001100110";
        
      wait for 2 ns;
      in_car <= "00000000001100111";
      
      wait for 2 ns;
      in_car <= "00000000001101000";
      
      wait for 2 ns;
      in_car <= "00000000001101001";
        
      wait for 2 ns;	
      in_car <= "00000000001101010";
        
      wait for 2 ns;
      in_car <= "00000000001101011";
      
      wait for 2ns;
      in_car <= "00000000001101100";
      
      wait for 2 ns;
      in_car <= "00000000001101101";
        
      wait for 2 ns;	
      in_car <= "00000000001101110";
        
      wait for 2 ns;
      in_car <= "00000000001101111";
      
      wait for 2 ns;
      in_car <= "00000000001110000";
      
      wait for 2 ns;
      in_car <= "00000000001110001";
        
      wait for 2 ns;	
      in_car <= "00000000001110010";
        
      wait for 2 ns;
      in_car <= "00000000001110011";
      
      wait for 2ns;
      in_car <= "00000000001110100";
      
      wait for 2 ns;
      in_car <= "00000000001110101";
        
      wait for 2 ns;	
      in_car <= "00000000001110110";
        
      wait for 2 ns;
      in_car <= "00000000001110111";
      
      wait for 2ns;
      in_car <= "00000000001111000";
      
      wait for 2 ns;
      in_car <= "00000000001111001";
        
      wait for 2 ns;	
      in_car <= "00000000001111010";
        
      wait for 2 ns;
      in_car <= "00000000001111011";
      
      wait for 2ns;
      in_car <= "00000000001111100";
      
      wait for 2 ns;
      in_car <= "00000000001111101";
        
      wait for 2 ns;	
      in_car <= "00000000001111110";
        
      wait for 2 ns;
      in_car <= "00000000001111111";
     
     wait for 2ns;
      in_car <= "00000000010000000";
      
      wait for 2 ns;
      in_car <= "00000000010000001";
        
      wait for 2 ns;	
      in_car <= "00000000010000010";
        
      wait for 2 ns;
      in_car <= "00000000010000011";
      
      wait for 2ns;
      in_car <= "00000000010000100";
      
      wait for 2 ns;
      in_car <= "00000000010000101";
        
      wait for 2 ns;	
      in_car <= "00000000010000110";
        
      wait for 2 ns;
      in_car <= "00000000010000111";
      
      wait for 2 ns;
      in_car <= "00000000010001000";
      
      wait for 2 ns;
      in_car <= "00000000010001001";
        
      wait for 2 ns;	
      in_car <= "00000000010001010";
        
      wait for 2 ns;
      in_car <= "00000000010001011";
      
      wait for 2ns;
      in_car <= "00000000010001100";
      
      wait for 2 ns;
      in_car <= "00000000010001101";
        
      wait for 2 ns;	
      in_car <= "00000000010001110";
        
      wait for 2 ns;
      in_car <= "00000000010001111";
      
      wait for 2 ns;
      in_car <= "00000000010010000";
      
      wait for 2 ns;
      in_car <= "00000000010010001";
        
      wait for 2 ns;	
      in_car <= "00000000010010010";
        
      wait for 2 ns;
      in_car <= "00000000010010011";
      
      wait for 2ns;
      in_car <= "00000000010010100";
      
      wait for 2 ns;
      in_car <= "00000000010010101";
        
      wait for 2 ns;	
      in_car <= "00000000010010110";
        
      wait for 2 ns;
      in_car <= "00000000010010111";
      
      wait for 2ns;
      in_car <= "00000000010011000";
      
      wait for 2 ns;
      in_car <= "00000000010011001";
        
      wait for 2 ns;	
      in_car <= "00000000010011010";
        
      wait for 2 ns;
      in_car <= "00000000010011011";
      
      wait for 2ns;
      in_car <= "00000000010011100";
      
      wait for 2 ns;
      in_car <= "00000000010011101";
        
      wait for 2 ns;	
      in_car <= "00000000010011110";
        
      wait for 2 ns;
      in_car <= "00000000010011111";
     
     wait for 2ns;
      in_car <= "00000000010100000";
      
      wait for 2 ns;
      in_car <= "00000000010100001";
        
      wait for 2 ns;	
      in_car <= "00000000010100010";
        
      wait for 2 ns;
      in_car <= "00000000010100011";
      
      wait for 2ns;
      in_car <= "00000000010100100";
      
      wait for 2 ns;
      in_car <= "00000000010100101";
        
      wait for 2 ns;	
      in_car <= "00000000010100110";
        
      wait for 2 ns;
      in_car <= "00000000010100111";
      
      wait for 2 ns;
      in_car <= "00000000010101000";
      
      wait for 2 ns;
      in_car <= "00000000010101001";
        
      wait for 2 ns;	
      in_car <= "00000000010101010";
        
      wait for 2 ns;
      in_car <= "00000000010101011";
      
      wait for 2ns;
      in_car <= "00000000010101100";
      
      wait for 2 ns;
      in_car <= "00000000010101101";
        
      wait for 2 ns;	
      in_car <= "00000000010101110";
        
      wait for 2 ns;
      in_car <= "00000000010101111";
      
      wait for 2 ns;
      in_car <= "00000000010110000";
      
      wait for 2 ns;
      in_car <= "00000000010110001";
        
      wait for 2 ns;	
      in_car <= "00000000010110010";
        
      wait for 2 ns;
      in_car <= "00000000010110011";
      
      wait for 2ns;
      in_car <= "00000000010110100";
      
      wait for 2 ns;
      in_car <= "00000000010110101";
        
      wait for 2 ns;	
      in_car <= "00000000010110110";
        
      wait for 2 ns;
      in_car <= "00000000010110111";
      
      wait for 2ns;
      in_car <= "00000000010111000";
      
      wait for 2 ns;
      in_car <= "00000000010111001";
        
      wait for 2 ns;	
      in_car <= "00000000010111010";
        
      wait for 2 ns;
      in_car <= "00000000010111011";
      
      wait for 2ns;
      in_car <= "00000000010111100";
      
      wait for 2 ns;
      in_car <= "00000000010111101";
        
      wait for 2 ns;	
      in_car <= "00000000010111110";
        
      wait for 2 ns;
      in_car <= "00000000010111111";
     
      wait for 2ns;
      in_car <= "00000000011000000";
      
      wait for 2 ns;
      in_car <= "00000000011000001";
        
      wait for 2 ns;	
      in_car <= "00000000011000010";
        
      wait for 2 ns;
      in_car <= "00000000011000011";
      
      wait for 2ns;
      in_car <= "00000000011000100";
      
      wait for 2 ns;
      in_car <= "00000000001000101";
        
      wait for 2 ns;	
      in_car <= "00000000011000110";
        
      wait for 2 ns;
      in_car <= "00000000011000111";
      
      wait for 2 ns;
      in_car <= "00000000011001000";
      
      wait for 2 ns;
      in_car <= "00000000011001001";
        
      wait for 2 ns;	
      in_car <= "00000000011001010";
        
      wait for 2 ns;
      in_car <= "00000000011001011";
      
      wait for 2ns;
      in_car <= "00000000011001100";
      
      wait for 2 ns;
      in_car <= "00000000011001101";
        
      wait for 2 ns;	
      in_car <= "00000000011001110";
        
      wait for 2 ns;
      in_car <= "00000000011001111";
      
      wait for 2 ns;
      in_car <= "00000000011010000";
      
      wait for 2 ns;
      in_car <= "00000000011010001";
        
      wait for 2 ns;	
      in_car <= "00000000011010010";
        
      wait for 2 ns;
      in_car <= "00000000011010011";
      
      wait for 2ns;
      in_car <= "00000000011010100";
      
      wait for 2 ns;
      in_car <= "00000000011010101";
        
      wait for 2 ns;	
      in_car <= "00000000011010110";
        
      wait for 2 ns;
      in_car <= "00000000011010111";
      
      wait for 2ns;
      in_car <= "00000000011011000";
      
      wait for 2 ns;
      in_car <= "00000000011011001";
        
      wait for 2 ns;	
      in_car <= "00000000011011010";
        
      wait for 2 ns;
      in_car <= "00000000011011011";
      
      wait for 2ns;
      in_car <= "00000000011011100";
      
      wait for 2 ns;
      in_car <= "00000000011011101";
        
      wait for 2 ns;	
      in_car <= "00000000011011110";
        
      wait for 2 ns;
      in_car <= "00000000011011111";
     
     wait for 2ns;
      in_car <= "00000000011100000";
      
      wait for 2 ns;
      in_car <= "00000000011100001";
        
      wait for 2 ns;	
      in_car <= "00000000011100010";
        
      wait for 2 ns;
      in_car <= "00000000011100011";
      
      wait for 2ns;
      in_car <= "00000000011100100";
      
      wait for 2 ns;
      in_car <= "00000000011100101";
        
      wait for 2 ns;	
      in_car <= "00000000011100110";
        
      wait for 2 ns;
      in_car <= "00000000011100111";
      
      wait for 2 ns;
      in_car <= "00000000011101000";
      
      wait for 2 ns;
      in_car <= "00000000011101001";
        
      wait for 2 ns;	
      in_car <= "00000000011101010";
        
      wait for 2 ns;
      in_car <= "00000000011101011";
      
      wait for 2ns;
      in_car <= "00000000011101100";
      
      wait for 2 ns;
      in_car <= "00000000011101101";
        
      wait for 2 ns;	
      in_car <= "00000000011101110";
        
      wait for 2 ns;
      in_car <= "00000000011101111";
      
      wait for 2 ns;
      in_car <= "00000000011110000";
      
      wait for 2 ns;
      in_car <= "00000000011110001";
        
      wait for 2 ns;	
      in_car <= "00000000011110010";
        
      wait for 2 ns;
      in_car <= "00000000011110011";
      
      wait for 2ns;
      in_car <= "00000000011110100";
      
      wait for 2 ns;
      in_car <= "00000000011110101";
        
      wait for 2 ns;	
      in_car <= "00000000011110110";
        
      wait for 2 ns;
      in_car <= "00000000011110111";
      
      wait for 2ns;
      in_car <= "00000000011111000";
      
      wait for 2 ns;
      in_car <= "00000000011111001";
        
      wait for 2 ns;	
      in_car <= "00000000011111010";
        
      wait for 2 ns;
      in_car <= "00000000011111011";
      
      wait for 2ns;
      in_car <= "00000000011111100";
      
      wait for 2 ns;
      in_car <= "00000000011111101";
        
      wait for 2 ns;	
      in_car <= "00000000011111110";
        
      wait for 2 ns;
      in_car <= "00000000011111111";
     
   end process;


end Behavioral;
