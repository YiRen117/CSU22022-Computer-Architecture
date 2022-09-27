library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity datapath is
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
end datapath;

architecture Behavioral of datapath is
-- components

	-- 16 Bit Register File
	COMPONENT register_file
	   Port(
			    src_A : in std_logic_vector(4 downto 0);
                src_B : in std_logic_vector(4 downto 0);
                des_A : in std_logic_vector(4 downto 0);
                Clk : in std_logic;
                write : in std_logic;
                TD : in std_logic;
                TB : in std_logic;
                TA : in std_logic;
                data : in std_logic_vector(31 downto 0);
                data_A : out std_logic_vector(31 downto 0);
                data_B : out std_logic_vector(31 downto 0)
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
	
	COMPONENT function_unit
		Port(
                FS : in std_logic_vector(4 downto 0);
                A : in std_logic_vector(31 downto 0);
                B : in std_logic_vector(31 downto 0);
                F : out std_logic_vector(31 downto 0);
                C, V, N, Z : out std_logic
        );
	end COMPONENT;
	
	signal a_data, b_data, mb_out, f_out, md_out : std_logic_vector(31 downto 0);
		
	begin
	
	reg_file: register_file Port Map(
		src_a => a_address,	
		src_b => b_address,
		des_A => d_address,
		Clk => Clk,
		write => write,
		TA => TA,
        TB => TB,
        TD => TD,
		data => md_out,
		data_A => a_data,
		data_B => b_data
	);
	
	mux_b: mux2_32bit Port Map(
		In0 => b_data,
		In1 => constant_in,
		s => mb_select,
		Z => mb_out
	);
	
	func_unit: function_unit Port Map(
		A => a_data,
		B => mb_out,
		FS => FS,
		V => v_out,
		C => c_out,
		N => n_out,
		Z => z_out,	
		F => f_out
	);
	
	mux_d: mux2_32bit Port Map(
		In0 => f_out,
		In1 => data_in,
		s => md_select,
		Z => md_out
	);
	
	bus_a_adr_out <= a_data;
	bus_b_data_out <= mb_out;
	 
end Behavioral;