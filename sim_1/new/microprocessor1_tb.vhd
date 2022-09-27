----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 13:50:11
-- Design Name: 
-- Module Name: microprocessor1_tb - Behavioral
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

entity microprocessor1_tb is
end microprocessor1_tb;

architecture Behavioral of microprocessor1_tb is
    COMPONENT microprocessor_part1
    Port(
	 Clk : in std_logic;
	 reset : in std_logic;
	 TD : in std_logic;
	 TA : in std_logic;
	 TB : in std_logic;
	 MB : in std_logic;
	 MD : in std_logic;
	 MM : in std_logic;
	 MW : in std_logic;
	 RW : in std_logic;
	 DR : in std_logic_vector(4 downto 0);
	 SA : in std_logic_vector(4 downto 0);
	 SB : in std_logic_vector(4 downto 0);
	 FS : in std_logic_vector(4 downto 0);
	 instruction_address : in std_logic_vector(31 downto 0);
	 constant_in : in std_logic_vector(31 downto 0)
	);
    END COMPONENT;

   --Inputs
   signal Clk, reset, MB, MD, TA, TB, TD, MM, MW, RW : std_logic := '0';
   signal DR, SA, SB, FS : std_logic_vector(4 downto 0) := (others => '0');
   signal instruction_address, const : std_logic_vector(31 downto 0):= (others => '0');

   constant Clk_period : time := 2 ns;

    begin
       uut: microprocessor_part1 PORT MAP (
        Clk => Clk,
		reset => reset,
		MB => MB,
		MD => MD,
		TA => TA, 
		TB => TB,
		TD => TD,
		MM => MM,
		MW => MW,
		RW => RW,
		DR => DR,
		SA => SA,
		FS => FS,
		SB => SB,
		instruction_address => instruction_address,
		constant_in => const
       );
            
       Clk <= not Clk after Clk_period/2;
       
       stim_proc: process
       begin
       
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000091";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00000";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000092";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00001";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000093";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00010";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000094";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00011";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000095";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00100";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000096";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00101";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000097";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00110";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000098";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "00111";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000099";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01000";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009A";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01001";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009B";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01010";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009C";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01011";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009D";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01100";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009E";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01101";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000009F";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01110";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000100";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "01111";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000101";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10000";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000102";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10001";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000103";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10010";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000104";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10011";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000105";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10100";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000106";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10101";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000107";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10110";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000108";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "10111";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000109";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11000";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010A";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11001";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010B";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11010";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010C";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11011";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010D";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11100";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010E";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11101";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"0000010F";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11110";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000110";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          DR <= "11111";
          
          wait until Clk'event and Clk = '1';
          MM <= '1';
          instruction_address <= X"00000111";
          MD <= '1';
          
          wait until Clk'event and Clk = '1';
          RW <= '1';
          TD <= '1';
          
          wait until Clk'event and Clk = '1';
          MD <= '0';
          TD <= '0';
          
          wait until Clk'event and Clk = '1';
          SA <= "00000";
          FS <= "01110";
          DR <= "00000";
          
          wait until Clk'event and Clk = '1';
          SA <= "00001";
          DR <= "00001";
          
          wait until Clk'event and Clk = '1';
          SA <= "00010";
          DR <= "00010";
          
          wait until Clk'event and Clk = '1';
          SA <= "00011";
          DR <= "00011";
          
          wait until Clk'event and Clk = '1';
          SA <= "00100";
          DR <= "00100";
          
          wait until Clk'event and Clk = '1';
          SA <= "00101";
          DR <= "00101";
          
          wait until Clk'event and Clk = '1';
          SA <= "00110";
          DR <= "00110";
          
          wait until Clk'event and Clk = '1';
          SA <= "00111";
          DR <= "00111";
          
          wait until Clk'event and Clk = '1';
          SA <= "01000";
          DR <= "01000";
          
          wait until Clk'event and Clk = '1';
          SA <= "01001";
          DR <= "01001";
          
          wait until Clk'event and Clk = '1';
          SA <= "01010";
          DR <= "01010";
          
          wait until Clk'event and Clk = '1';
          SA <= "01011";
          DR <= "01011";
          
          wait until Clk'event and Clk = '1';
          SA <= "01100";
          DR <= "01100";
          
          wait until Clk'event and Clk = '1';
          SA <= "01101";
          DR <= "01101";
          
          wait until Clk'event and Clk = '1';
          SA <= "01110";
          DR <= "01110";
          
          wait until Clk'event and Clk = '1';
          SA <= "01111";
          DR <= "01111";
          
          wait until Clk'event and Clk = '1';
          SA <= "10000";
          DR <= "10000";
          
          wait until Clk'event and Clk = '1';
          SA <= "10001";
          DR <= "10001";
          
          wait until Clk'event and Clk = '1';
          SA <= "10010";
          DR <= "10010";
          
          wait until Clk'event and Clk = '1';
          SA <= "10011";
          DR <= "10011";
          
          wait until Clk'event and Clk = '1';
          SA <= "10100";
          DR <= "10100";
          
          wait until Clk'event and Clk = '1';
          SA <= "10101";
          DR <= "10101";
          
          wait until Clk'event and Clk = '1';
          SA <= "10110";
          DR <= "10110";
          
          wait until Clk'event and Clk = '1';
          SA <= "10111";
          DR <= "10111";
          
          wait until Clk'event and Clk = '1';
          SA <= "11000";
          DR <= "11000";
          
          wait until Clk'event and Clk = '1';
          SA <= "11001";
          DR <= "11001";
          
          wait until Clk'event and Clk = '1';
          SA <= "11010";
          DR <= "11010";
          
          wait until Clk'event and Clk = '1';
          SA <= "11011";
          DR <= "11011";
          
          wait until Clk'event and Clk = '1';
          SA <= "11100";
          DR <= "11100";
          
          wait until Clk'event and Clk = '1';
          SA <= "11101";
          DR <= "11101";
          
          wait until Clk'event and Clk = '1';
          SA <= "11110";
          DR <= "11110";
          
          wait until Clk'event and Clk = '1';
          SA <= "11111";
          DR <= "11111";
       
          wait until Clk'event and Clk = '1';
          TA <= '1';
          TD <= '1';
          
          wait until Clk'event and Clk = '1';
          TA <= '0';
          TD <= '0';
          
          wait until Clk'event and Clk = '1';
          FS <= "00001";
          SA <= "00000";
          DR <= "00000";
          
          wait until Clk'event and Clk = '1';
          SB <= "00000";
          MW <= '1';
          instruction_address <= X"00000091";
          
          wait until Clk'event and Clk = '1';
          SA <= "00001";
          DR <= "00001";
          
          wait until Clk'event and Clk = '1';
          SB <= "00001";
          instruction_address <= X"00000092";
          
          wait until Clk'event and Clk = '1';
          SA <= "00010";
          DR <= "00010";
          
          wait until Clk'event and Clk = '1';
          SB <= "00010";
          instruction_address <= X"00000093";
          
          wait until Clk'event and Clk = '1';
          SA <= "00011";
          DR <= "00011";
          
          wait until Clk'event and Clk = '1';
          SB <= "00011";
          instruction_address <= X"00000094";
          
          wait until Clk'event and Clk = '1';
          SA <= "00100";
          DR <= "00100";
          
          wait until Clk'event and Clk = '1';
          SB <= "00100";
          instruction_address <= X"00000095";
          
          wait until Clk'event and Clk = '1';
          SA <= "00101";
          DR <= "00101";
          
          wait until Clk'event and Clk = '1';
          SB <= "00101";
          instruction_address <= X"00000096";
          
          wait until Clk'event and Clk = '1';
          SA <= "00110";
          DR <= "00110";
          
          wait until Clk'event and Clk = '1';
          SB <= "00110";
          instruction_address <= X"00000097";
          
          wait until Clk'event and Clk = '1';
          SA <= "00111";
          DR <= "00111";
          
          wait until Clk'event and Clk = '1';
          SB <= "00111";
          instruction_address <= X"00000098";
          
          wait until Clk'event and Clk = '1';
          SA <= "01000";
          DR <= "01000";
          
          wait until Clk'event and Clk = '1';
          SB <= "01000";
          instruction_address <= X"00000099";
          
          wait until Clk'event and Clk = '1';
          SA <= "01001";
          DR <= "01001";
          
          wait until Clk'event and Clk = '1';
          SB <= "01001";
          instruction_address <= X"0000009A";
          
          wait until Clk'event and Clk = '1';
          SA <= "01010";
          DR <= "01010";
          
          wait until Clk'event and Clk = '1';
          SB <= "01010";
          instruction_address <= X"0000009B";
          
          wait until Clk'event and Clk = '1';
          SA <= "01011";
          DR <= "01011";
          
          wait until Clk'event and Clk = '1';
          SB <= "01011";
          instruction_address <= X"0000009C";
          
          wait until Clk'event and Clk = '1';
          SA <= "01100";
          DR <= "01100";
          
          wait until Clk'event and Clk = '1';
          SB <= "01100";
          instruction_address <= X"0000009D";
          
          wait until Clk'event and Clk = '1';
          SA <= "01101";
          DR <= "01101";
          
          wait until Clk'event and Clk = '1';
          SB <= "01101";
          instruction_address <= X"0000009E";
          
          wait until Clk'event and Clk = '1';
          SA <= "01110";
          DR <= "01110";
          
          wait until Clk'event and Clk = '1';
          SB <= "01110";
          instruction_address <= X"0000009F";
          
          wait until Clk'event and Clk = '1';
          SA <= "01111";
          DR <= "01111";
          
          wait until Clk'event and Clk = '1';
          SB <= "01111";
          instruction_address <= X"00000100";
          
          wait until Clk'event and Clk = '1';
          SA <= "10000";
          DR <= "10000";
          
          wait until Clk'event and Clk = '1';
          SB <= "10000";
          instruction_address <= X"00000101";
          
          wait until Clk'event and Clk = '1';
          SA <= "10001";
          DR <= "10001";
          
          wait until Clk'event and Clk = '1';
          SB <= "10001";
          instruction_address <= X"00000102";
          
          wait until Clk'event and Clk = '1';
          SA <= "10010";
          DR <= "10010";
          
          wait until Clk'event and Clk = '1';
          SB <= "10010";
          instruction_address <= X"00000103";
          
          wait until Clk'event and Clk = '1';
          SA <= "10011";
          DR <= "10011";
          
          wait until Clk'event and Clk = '1';
          SB <= "10011";
          instruction_address <= X"00000104";
          
          wait until Clk'event and Clk = '1';
          SA <= "10100";
          DR <= "10100";
          
          wait until Clk'event and Clk = '1';
          SB <= "10100";
          instruction_address <= X"00000105";
          
          wait until Clk'event and Clk = '1';
          SA <= "10101";
          DR <= "10101";
          
          wait until Clk'event and Clk = '1';
          SB <= "10101";
          instruction_address <= X"00000106";
          
          wait until Clk'event and Clk = '1';
          SA <= "10110";
          DR <= "10110";
          
          wait until Clk'event and Clk = '1';
          SB <= "10110";
          instruction_address <= X"00000107";
          
          wait until Clk'event and Clk = '1';
          SA <= "10111";
          DR <= "10111";
          
          wait until Clk'event and Clk = '1';
          SB <= "10111";
          instruction_address <= X"00000108";
          
          wait until Clk'event and Clk = '1';
          SA <= "11000";
          DR <= "11000";
          
          wait until Clk'event and Clk = '1';
          SB <= "11000";
          instruction_address <= X"00000109";
          
          wait until Clk'event and Clk = '1';
          SA <= "11001";
          DR <= "11001";
          
          wait until Clk'event and Clk = '1';
          SB <= "11001";
          instruction_address <= X"0000010A";
          
          wait until Clk'event and Clk = '1';
          SA <= "11010";
          DR <= "11010";
          
          wait until Clk'event and Clk = '1';
          SB <= "11010";
          instruction_address <= X"0000010B";
          
          wait until Clk'event and Clk = '1';
          SA <= "11011";
          DR <= "11011";
          
          wait until Clk'event and Clk = '1';
          SB <= "11011";
          instruction_address <= X"0000010B";
          
          wait until Clk'event and Clk = '1';
          SA <= "11100";
          DR <= "11100";
          
          wait until Clk'event and Clk = '1';
          SB <= "11100";
          instruction_address <= X"0000010C";
          
          wait until Clk'event and Clk = '1';
          SA <= "11101";
          DR <= "11101";
          
          wait until Clk'event and Clk = '1';
          SB <= "11101";
          instruction_address <= X"0000010D";
          
          wait until Clk'event and Clk = '1';
          SA <= "11110";
          DR <= "11110";
          
          wait until Clk'event and Clk = '1';
          SB <= "11110";
          instruction_address <= X"0000010E";
          
          wait until Clk'event and Clk = '1';
          SA <= "11111";
          DR <= "11111";
          
          wait until Clk'event and Clk = '1';
          SB <= "11111";
          instruction_address <= X"0000010F";

          wait;
       end process;

end Behavioral;
