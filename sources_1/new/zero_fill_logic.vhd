library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zero_fill_logic is
  Port (
        SB : in  std_logic_vector (4 downto 0);
	    constant_out : out std_logic_vector (31 downto 0)
	    );
end zero_fill_logic;

architecture Behavioral of zero_fill_logic is

begin
    constant_out(4 downto 0) <= SB;
    constant_out(31 downto 5) <= "000000000000000000000000000";

end Behavioral;