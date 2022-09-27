library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity extend_logic is
Port (
       DR : in std_logic_vector (4 downto 0);
       SB : in std_logic_vector (4 downto 0);
       output : out std_logic_vector (31 downto 0)
       );
end extend_logic;

architecture Behavioral of extend_logic is

begin
    output (31 downto 10) <= "0000000000000000000000" when (DR(4)='0') else "1111111111111111111111";
    output (9 downto 5) <= DR;   
    output (4 downto 0) <= SB;

end Behavioral;