----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 11:59:36
-- Design Name: 
-- Module Name: car17bit - Behavioral
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

entity car17bit is
 Port (
        clock : in std_logic;
        load : in std_logic;
        input : in std_logic_vector (16 downto 0);
        output : out std_logic_vector (16 downto 0)
        );
end car17bit;

architecture Behavioral of car17bit is
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

signal alu_in: std_logic_vector(31 downto 0);
signal alu_out: std_logic_vector(31 downto 0);
signal curr_address : std_logic_vector (16 downto 0);
signal S: std_logic_vector(3 downto 0);
signal C_out: std_logic;
signal V_out: std_logic;

begin
     ALU_unit : alu port map (  
     A => alu_in,
     B => "00000000000000000000000000000000",
     S => S,
     G => alu_out,
     C => C_out,
     V => V_out
     );

S <= "0001";
output <= curr_address;
alu_in <= "000000000000000" & curr_address;

process(clock)
  begin
   if(rising_edge(clock)) then
        if load = '1' then
          curr_address <= input after 2ns;
        else
          curr_address <= alu_out(16 downto 0) after 2ns; 
        end if;
    end if;
end process;
end Behavioral;
