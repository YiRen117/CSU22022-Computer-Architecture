----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 17:43:56
-- Design Name: 
-- Module Name: VCNZ_flipflop_tb - Behavioral
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

entity VCNZ_flipflop_tb is
end VCNZ_flipflop_tb;

architecture Behavioral of VCNZ_flipflop_tb is
    COMPONENT VCNZ_flipflop
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
    end COMPONENT;

     --Inputs
   signal V_in, C_in, N_in, Z_in, FL, Clk : std_logic := '0';
   signal Reset : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal VCNZ_out : std_logic_vector(3 downto 0) := (others => '0');
   
   constant Clk_period : time := 2 ns;
   
begin

    uut : VCNZ_flipflop port map (
    V_in => V_in,
    C_in => C_in,
    N_in => N_in,
    Z_in => Z_in,
    clock => Clk,
    Reset => Reset,
    FL => FL,
    VCNZ_out => VCNZ_out
    );

    Clk <= not Clk after Clk_period/2;
    
   stim_proc: process
   begin
       wait for 2ns;
        V_in <= '1';
        C_in <= '1';
        N_in <= '1';
        Z_in <= '1';
        FL <= '1';
        
        wait for 2ns;
        Reset <= "0000";
        
        wait for 2ns;
        Reset <= "0001";
        
        wait for 2ns;
        Reset <= "0010";
        
        wait for 2ns;
        Reset <= "0100";
        
        wait for 2ns;
        Reset <= "1000";
        
        wait for 2ns;
        Reset <= "0011";
        
        wait for 2ns;
        Reset <= "0111";
        
        wait for 2ns;
        Reset <= "1111";
               
        wait for 2ns;
        FL <= '0';
        wait;
       end process;
end Behavioral;
