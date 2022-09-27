library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IR32bit_tb is
end IR32bit_tb;

architecture Behavioral of IR32bit_tb is
-- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT IR32bit 
  PORT(
       data_in : in  STD_LOGIC_VECTOR (31 downto 0);
       IL : in  STD_LOGIC;
	   Clk : in STD_LOGIC;
       Opcode : out  STD_LOGIC_VECTOR (16 downto 0);
       DR : out  STD_LOGIC_VECTOR (4 downto 0);
       SA : out  STD_LOGIC_VECTOR (4 downto 0);
       SB : out  STD_LOGIC_VECTOR (4 downto 0)
      );
 end COMPONENT;
 
   --Inputs
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal IL : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Opcode : std_logic_vector(16 downto 0);
   signal DR : std_logic_vector(4 downto 0);
   signal SA : std_logic_vector(4 downto 0);
   signal SB : std_logic_vector(4 downto 0);

   constant Clk_period : time := 2 ns;
   
begin
-- Instantiate the Unit Under Test (UUT)
   uut: IR32bit PORT MAP (
          data_in => data_in,
          IL => IL,
		  Clk => Clk,
          Opcode => Opcode,
          DR => DR,
          SA => SA,
          SB => SB
        );
        
   Clk <= not Clk after Clk_period/2;
   
   stim_proc0: process
   begin

   wait until Clk'event and Clk = '1';
   data_in <= "10101010101010101000001111100000";
   IL <= '1';
   
   wait until Clk'event and Clk = '1';
   IL <= '0';
   
   wait until Clk'event and Clk = '1';
   data_in <= "00000000000000000111110000011111";
   IL <= '1';
   
   wait until Clk'event and Clk = '1';
   IL <= '0';
   
   wait until Clk'event and Clk = '1';
   data_in <= "11111111111111111111111111111111";
   IL <= '1';
   
   wait until Clk'event and Clk = '1';
   IL <= '0';
   
   wait;
   end process;
  
  
end Behavioral;