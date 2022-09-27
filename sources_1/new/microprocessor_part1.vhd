----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/04 13:49:43
-- Design Name: 
-- Module Name: microprocessor_part1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity microprocessor_part1 is
Port(
	 Clk : in std_logic;
	 reset : in std_logic;
	 TD : in std_logic;
	 TA : in std_logic;
	 TB : in std_logic;
	 MB : in std_logic;
	 MD : in std_logic;
	 MM : in std_logic;
	 MW : in std_logic;
	 RW : in std_logic;
	 DR : in std_logic_vector(4 downto 0);
	 SA : in std_logic_vector(4 downto 0);
	 SB : in std_logic_vector(4 downto 0);
	 FS : in std_logic_vector(4 downto 0);
	 instruction_address : in std_logic_vector(31 downto 0);
	 constant_in : in std_logic_vector(31 downto 0)
);
end microprocessor_part1;

architecture Behavioral of microprocessor_part1 is
COMPONENT datapath 
	Port (
	    Clk : in std_logic;
		data_in : in std_logic_vector(31 downto 0);
		constant_in : in std_logic_vector(31 downto 0);
		a_address : in std_logic_vector(4 downto 0);
		b_address : in std_logic_vector(4 downto 0);
		d_address : in std_logic_vector(4 downto 0);
		FS : in std_logic_vector(4 downto 0);
		write : in std_logic;
		v_out : out std_logic;
		c_out : out std_logic;
		n_out : out std_logic;
		z_out : out std_logic;
		mb_select : in std_logic;
		md_select : in std_logic;
        TD : in std_logic;
        TB : in std_logic;
        TA : in std_logic;
		bus_a_adr_out : out std_logic_vector(31 downto 0);
		bus_b_data_out : out std_logic_vector(31 downto 0)
	);
end COMPONENT;

COMPONENT memory  
  Port (
        address : in std_logic_vector(31 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        write_enable : in std_logic;
        clock : in std_logic;
        read_data : out std_logic_vector(31 downto 0)
        );
end COMPONENT;

COMPONENT mux2_32bit
 port (
        In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        s : in std_logic;
        Z : out std_logic_vector(31 downto 0)
        );
end COMPONENT;

    --signals
	signal V_signal : std_logic;
	signal C_signal : std_logic;
	signal N_signal : std_logic;
	signal Z_signal : std_logic; 
	signal bus_a : std_logic_vector(31 downto 0);
	signal bus_b : std_logic_vector(31 downto 0);
	signal memory_out : std_logic_vector(31 downto 0);
	signal a_address : std_logic_vector(4 downto 0);
	signal b_address : std_logic_vector(4 downto 0);
	signal memory_address : std_logic_vector(31 downto 0);
	
begin

       datapath_unit : datapath PORT MAP (
       	Clk => Clk,
		data_in => memory_out,
		constant_in => constant_in,
		a_address => a_address,
		b_address => b_address,
		d_address => DR,
		FS => FS,
		write => RW,
		v_out => v_signal,
		c_out => c_signal,
		n_out => n_signal,
		z_out => z_signal,
		mb_select => MB,
		md_select => MD,
        TD => TD,
        TB => TB,
        TA => TA,
		bus_a_adr_out => bus_a,
		bus_b_data_out => bus_b);

muxM: mux2_32bit PORT MAP (
        In0 => bus_a,
        In1 => instruction_address,
        s => MM, 
        Z => memory_address);

memoryM: memory PORT MAP (
       address => memory_address,
       write_data => bus_b,
       clock => Clk,
       write_enable => MW,
       read_data => memory_out);

end Behavioral;
