library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IR32bit is
 Port (
       data_in : in std_logic_vector (31 downto 0);
       IL : in std_logic;
	   Clk : in std_logic;
       Opcode : out std_logic_vector (16 downto 0);
       DR : out std_logic_vector (4 downto 0);
       SA : out std_logic_vector (4 downto 0);
       SB : out std_logic_vector (4 downto 0));
end IR32bit;

architecture Behavioral of IR32bit is

    COMPONENT reg32
    Port ( 
              D : in std_logic_vector(31 downto 0);
              Clk : in std_logic;
              load : in std_logic;
              Q : out std_logic_vector(31 downto 0)
            );
    end COMPONENT;

    signal data_out: std_logic_vector(31 downto 0);

    begin
    --register
    reg: reg32 PORT MAP(
        D => data_in,
        load => IL,
        Clk => Clk,
        Q => data_out
    );
    
    Opcode<=data_out(31 downto 15);
    DR<=data_out(14 downto 10);
    SA<=data_out(9 downto 5);
    SB<=data_out(4 downto 0);

end Behavioral;