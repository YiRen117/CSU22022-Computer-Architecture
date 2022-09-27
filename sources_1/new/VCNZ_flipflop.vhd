----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 17:43:36
-- Design Name: 
-- Module Name: VCNZ_flipflop - Behavioral
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

entity VCNZ_flipflop is
  Port (
         V_in : in std_logic;
         C_in : in std_logic;
         N_in : in std_logic;
         Z_in : in std_logic;
         Reset : in std_logic_vector(3 downto 0);
         FL : in std_logic;
         clock : in std_logic;
         VCNZ_out : out std_logic_vector(3 downto 0)
         ); 
end VCNZ_flipflop;

architecture Behavioral of VCNZ_flipflop is

signal RV : std_logic;
signal RC : std_logic;
signal RN : std_logic;
signal RZ : std_logic;
signal V_out : std_logic;
signal C_out : std_logic;
signal N_out : std_logic;
signal Z_out : std_logic;

begin

    process(clock)
    begin
    
    RV <= Reset(3);
    RC <= Reset(2);
    RN <= Reset(1);
    RZ <= Reset(0);
    
    if(rising_edge(clock)) then
        if FL='1' then
        
          if RV='1' then
          V_out <= '0' after 2ns;
          elsif RV='0' then V_out <= V_in after 2ns;
          end if;
          
          if RC='1' then
          C_out <= '0' after 2ns;
          elsif RC='0' then C_out <= C_in after 2ns;
          end if;
          
          if RN='1' then
          N_out <= '0' after 2ns;
          elsif RN='0' then N_out <= N_in after 2ns;
          end if;
          
          if RZ='1' then
          Z_out <= '0' after 2ns;
          elsif RZ='0' then Z_out <= Z_in after 2ns;
          end if;
          
        elsif FL='0' then
        end if;  
    end if;
end process;

VCNZ_out(3) <= V_out;
VCNZ_out(2) <= C_out;
VCNZ_out(1) <= N_out;
VCNZ_out(0) <= Z_out;

end Behavioral;
