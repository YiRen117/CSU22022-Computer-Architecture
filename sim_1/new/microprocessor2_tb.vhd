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

entity microprocessor2_tb is
end microprocessor2_tb;

architecture Behavioral of microprocessor2_tb is

-- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT microprocessor_part2
    PORT(
         Clk : in std_logic;
         reset : in std_logic_vector(3 downto 0);
         pc_reset : in std_logic
        );
    END COMPONENT;
    
    --Inputs
   signal Clk : std_logic := '0';
   signal reset : std_logic_vector(3 downto 0) := (others => '0');
   signal pc_reset : std_logic := '0';

   constant Clk_period : time := 2 ns;
   
begin
-- Instantiate the Unit Under Test (UUT)
   uut: microprocessor_part2 PORT MAP (
          Clk => Clk,
          reset => reset,
          pc_reset => pc_reset
        );

   stim_proc: process
   begin		
       pc_reset <= '1';
       wait for Clk_period;	
	   pc_reset <= '0';
	   wait for Clk_period;	
	   reset <= "1111";
	   wait for Clk_period;	
	   reset <= "0000";
      wait;
   end process;

end Behavioral;