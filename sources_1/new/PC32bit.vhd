library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC32bit is
port (
        pc_in : in std_logic_vector (31 downto 0);
        PL : in std_logic;
        PI : in std_logic;
        clock : in std_logic;
        reset : in std_logic;
        pc_out : out std_logic_vector (31 downto 0)
        );
end PC32bit;

architecture Behavioral of PC32bit is
COMPONENT  alu is 
Port (         
        S: in std_logic_vector(3 downto 0);
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        G: out std_logic_vector(31 downto 0);
        V: out std_logic;
        C: out std_logic
        );
end COMPONENT;

signal curr_address: std_logic_vector(31 downto 0);
signal alu_out: std_logic_vector(31 downto 0);
signal S: std_logic_vector(3 downto 0);
signal C_out: std_logic;
signal V_out: std_logic;

begin
     ALU_unit : alu port map (  
     A => curr_address,
     B => pc_in,
     S => S,
     G => alu_out,
     C => C_out,
     V => V_out
     );

     pc_out <= curr_address;

     process(clock)
      begin
       if PL='1' and PI='0' then
          S <= "0010" after 2ns;
        elsif PL='0' and PI='1' then
          S <= "0001" after 2ns;
        elsif PL='0' and PI='0' then
          S <= "0000" after 2ns; 
        end if;
        if(rising_edge(clock)) then
          if reset='1' then
            curr_address <= "00000000000000000000000000000000" after 2ns;
            S <= "0000" after 2ns;
          else
            curr_address <= alu_out after 2ns;
          end if;
        end if;
      end process;
end Behavioral;