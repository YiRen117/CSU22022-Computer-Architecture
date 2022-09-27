library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity extend_logic_tb is
end extend_logic_tb;

architecture Behavioral of extend_logic_tb is

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT extend_logic
Port (
       DR : in  std_logic_vector (4 downto 0);
       SB : in  std_logic_vector (4 downto 0);
       output : out  std_logic_vector (31 downto 0));
END COMPONENT;

   --Inputs
   signal DR : std_logic_vector(4 downto 0) := (others => '0');
   signal SB : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(31 downto 0);

begin
-- Instantiate the Unit Under Test (UUT)
   uut: extend_logic PORT MAP (
          DR => DR,
          SB => SB,
          output => output
        );

   stim_proc: process
   begin
   
       wait for 2ns;
       DR <= "00110";
       SB <= "11111";
       
       wait for 2ns;
       DR <= "11111";
       SB <= "10101";
       wait;
       
   end process;
   
end Behavioral;