library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC32bit_tb is
end PC32bit_tb;

architecture Behavioral of PC32bit_tb is
COMPONENT PC32bit
port (
        pc_in : in std_logic_vector (31 downto 0);
        PL : in std_logic;
        PI : in std_logic;
        clock : in std_logic;
        reset : in std_logic;
        pc_out : out std_logic_vector (31 downto 0)
        );
  end COMPONENT;
 
signal pc_in: std_logic_vector (31 downto 0) := (others => '0');
signal PL: std_logic :='0';
signal PI: std_logic :='0';
signal Clk: std_logic :='0';
signal reset: std_logic :='0';
signal pc_out: std_logic_vector (31 downto 0) := (others => '0');

constant Clk_period : time := 2 ns;

begin
 uut: PC32bit port map (
                    pc_in => pc_in,
                    PL  => PL,
                    PI => PI,
                    clock => Clk,
                    reset => reset,
                    pc_out => pc_out
                    );

  stimulus: process
  begin
    Clk <= '0';
    wait for Clk_period;
    PL <= '0';
    PI <= '1';
    reset <= '1';

    Clk <= '1';
    wait for Clk_period; 
    reset <= '0';
  
    Clk <= '0';
    wait for Clk_period;
    PL <= '0';
    PI <= '1';
   
    Clk <= '1';
    wait for Clk_period;
  
    Clk <= '0';
    wait for Clk_period;
    pc_in <= x"000000FF";
    PL <= '1';
    PI <= '0';
  
    Clk <= '1';
    wait for Clk_period;

    Clk <= '0';
    wait for Clk_period;
    PL <= '0';
    PI <= '0'; 
   
    Clk <= '1';
    wait for Clk_period; 
    wait;
  end process;
end Behavioral;