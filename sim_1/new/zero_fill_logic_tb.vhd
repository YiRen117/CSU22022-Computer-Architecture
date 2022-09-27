library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zero_fill_logic_tb is
end zero_fill_logic_tb;

architecture Behavioral of zero_fill_logic_tb is
 -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zero_fill_logic
    Port (
        SB : in  STD_LOGIC_VECTOR (4 downto 0);
	    constant_out : out STD_LOGIC_VECTOR (31 downto 0)
	);
    END COMPONENT;
    
     --Inputs
   signal SB : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal constant_out : std_logic_vector(31 downto 0);  
    
begin
	-- Instantiate the Unit Under Test (UUT)
   uut: zero_fill_logic PORT MAP (
          SB => SB,
          constant_out => constant_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
   
    SB <= "00001";
    
    wait for 2ns;
    SB <= "00011";
    
    wait for 2ns;
    SB <= "00111";
    
    wait for 2ns;
    SB <= "01111";
    
    wait for 2ns;
    SB <= "11111";
    
    wait;
   end process;

end Behavioral;