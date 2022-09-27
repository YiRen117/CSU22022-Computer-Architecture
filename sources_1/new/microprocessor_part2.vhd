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

entity microprocessor_part2 is
Port(
	 Clk : in std_logic;
	 reset : in std_logic_vector(3 downto 0);
	 pc_reset : in std_logic
);
end microprocessor_part2;

architecture Behavioral of microprocessor_part2 is
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

COMPONENT control_memory
    Port (
        IN_CAR : in std_logic_vector(16 downto 0);
        FL : out std_logic; -- 0
        RZ : out std_logic; -- 1
        RN : out std_logic; -- 2
        RC : out std_logic; -- 3
        RV : out std_logic; -- 4
        MW : out std_logic; -- 5
        MM : out std_logic; -- 6
        RW : out std_logic; -- 7
        MD : out std_logic; -- 8
        FS : out std_logic_vector(4 downto 0); -- 9 to 13
        MB : out std_logic; -- 14
        TB : out std_logic; -- 15
        TA : out std_logic; -- 16
        TD : out std_logic; -- 17
        PL : out std_logic; -- 18
        PI : out std_logic; -- 19
        IL : out std_logic; -- 20
        MC : out std_logic; -- 21
        MS : out std_logic_vector(2 downto 0); -- 22 to 24
        NA : out std_logic_vector(16 downto 0) -- 25 to 41
        );
end COMPONENT;

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

COMPONENT car17bit 
 Port (
        clock : in std_logic;
        load : in std_logic;
        input : in std_logic_vector (16 downto 0);
        output : out std_logic_vector (16 downto 0)
        );
end COMPONENT;

COMPONENT zero_fill_logic
  Port (
        SB : in  std_logic_vector (4 downto 0);
	    constant_out : out std_logic_vector (31 downto 0)
	    );
end COMPONENT;

COMPONENT extend_logic
Port (
       DR : in std_logic_vector (4 downto 0);
       SB : in std_logic_vector (4 downto 0);
       output : out std_logic_vector (31 downto 0)
       );
end COMPONENT;

COMPONENT mux8_1bit
port (
        In0 : in std_logic;
        In1 : in std_logic;
        In2_5 : in std_logic_vector(3 downto 0);
        In6_7 : in std_logic_vector(1 downto 0);
        MS : in std_logic_vector(2 downto 0);
        Z : out std_logic
        );
end COMPONENT;

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

    --signals
    signal pc_out : std_logic_vector(31 downto 0);
	signal V_signal : std_logic;
	signal C_signal : std_logic;
	signal N_signal : std_logic;
	signal Z_signal : std_logic; 
	signal FL : std_logic; 
	signal RN : std_logic; 
	signal RZ : std_logic; 
	signal RC : std_logic; 
	signal RV : std_logic; 
	signal MW : std_logic; 
	signal MM : std_logic; 
	signal RW : std_logic; 
	signal MD : std_logic; 
	signal MB : std_logic; 
	signal TB : std_logic; 
	signal TA : std_logic; 
	signal TD : std_logic; 
	signal PL : std_logic; 
	signal PI : std_logic; 
	signal IL : std_logic; 
	signal MC : std_logic; 
	signal mux_s_out : std_logic;
	signal MS : std_logic_vector(2 downto 0); 
	signal NA : std_logic_vector(16 downto 0); 
	signal DR : std_logic_vector(4 downto 0);
	signal SA : std_logic_vector(4 downto 0);
	signal SB : std_logic_vector(4 downto 0); 
	signal FS : std_logic_vector(4 downto 0);
	signal flags : std_logic_vector(3 downto 0);
	signal bus_a : std_logic_vector(31 downto 0);
	signal bus_b : std_logic_vector(31 downto 0);
	signal memory_out : std_logic_vector(31 downto 0);
	signal a_address : std_logic_vector(4 downto 0);
	signal b_address : std_logic_vector(4 downto 0);
	signal memory_address : std_logic_vector(31 downto 0);
	signal extend_out : std_logic_vector(31 downto 0);
	signal zero_fill_out : std_logic_vector(31 downto 0);
	signal mux_c_out : std_logic_vector(16 downto 0);
	signal car_out : std_logic_vector(16 downto 0);
	signal flag_vc : std_logic_vector(1 downto 0);
	
begin

       datapath_unit : datapath PORT MAP (
       	Clk => Clk,
		data_in => memory_out,
		constant_in => zero_fill_out,
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
        In1 => pc_out,
        s => MM, 
        Z => memory_address);

memoryM: memory PORT MAP (
       address => memory_address,
       write_data => bus_b,
       clock => Clk,
       write_enable => MW,
       read_data => memory_out);
       
RZ <= reset(0);
RN <= reset(1);
RC <= reset(2);
RV <= reset(3);
       
control_mem: control_memory PORT MAP (
        IN_CAR => mux_c_out,
        FL => FL,
        RZ => RZ,
        RN => RN,
        RC => RC,
        RV => RV,
        MW => MW,
        MM => MM,
        RW => RW,
        MD => MD,
        FS => FS,
        MB => MB,
        TB => TB,
        TA => TA,
        TD => TD,
        PL => PL,
        PI => PI,
        IL => IL,
        MC => MC,
        MS => MS,
        NA => NA);

pc: PC32bit PORT MAP (
        pc_in => extend_out,
        PL => PL,
        PI => PI,
        clock  => Clk,
        reset => pc_reset,
        pc_out => pc_out);

car: car17bit PORT MAP (
        clock => Clk,
        load => mux_s_out,
        input => mux_c_out,
        output => car_out);

zero_fill:  zero_fill_logic PORT MAP (
        SB => SB,
	    constant_out => zero_fill_out
	    );

extend:  extend_logic PORT MAP (
       DR => DR,
       SB => SB,
       output => extend_out
       );

flag_vc <= flags(1) & flags(3);

mux8to1: mux8_1bit PORT MAP (
        In0 => '0',
        In1 => '1',
        In2_5 => flags,
        In6_7 => flag_vc,
        MS => MS,
        Z => mux_s_out
        );
        
VCNZ: VCNZ_flipflop PORT MAP (
         V_in => v_signal,
         C_in => c_signal,
         N_in => n_signal,
         Z_in => v_signal,
         Reset => reset,
         FL => FL,
         clock => Clk,
         VCNZ_out => flags
         ); 

end Behavioral;
