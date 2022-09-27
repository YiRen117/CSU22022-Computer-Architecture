library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_file is
Port ( 
        src_A : in std_logic_vector(4 downto 0);
        src_B : in std_logic_vector(4 downto 0);
        des_A : in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        write : in std_logic;
        data : in std_logic_vector(31 downto 0);
        TD : in std_logic;
        TB : in std_logic;
        TA : in std_logic;
        data_A : out std_logic_vector(31 downto 0);
        data_B : out std_logic_vector(31 downto 0)
        );
end register_file;

architecture Behavioral of register_file is
    -- components
    -- 32 bit Register for register file
    COMPONENT reg32
    PORT(
            D : in std_logic_vector(31 downto 0);
            load : in std_logic;
            Clk : in std_logic; 
            Q : out std_logic_vector(31 downto 0)
            );
    END COMPONENT;
    
    -- 5 to 32 Decoder
    COMPONENT decoder_5to32
    PORT(
            A : in std_logic_vector(4 downto 0);
            Q0 : out std_logic;
            Q1 : out std_logic;
            Q2 : out std_logic;
            Q3 : out std_logic;
            Q4 : out std_logic;
            Q5 : out std_logic;
            Q6 : out std_logic;
            Q7 : out std_logic;
            Q8 : out std_logic;
            Q9 : out std_logic;
            Q10 : out std_logic;
            Q11 : out std_logic;
            Q12 : out std_logic;
            Q13 : out std_logic;
            Q14 : out std_logic;
            Q15 : out std_logic;
            Q16 : out std_logic;
            Q17 : out std_logic;
            Q18 : out std_logic;
            Q19 : out std_logic;
            Q20 : out std_logic;
            Q21 : out std_logic;
            Q22 : out std_logic;
            Q23 : out std_logic;
            Q24 : out std_logic;
            Q25 : out std_logic;
            Q26 : out std_logic;
            Q27 : out std_logic;
            Q28 : out std_logic;
            Q29 : out std_logic;
            Q30 : out std_logic;
            Q31 : out std_logic
            );
    END COMPONENT;
    
    -- 32 to 1 line multiplexer
    COMPONENT mux32_32bit
    PORT(
            In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            In2 : in std_logic_vector(31 downto 0);
            In3 : in std_logic_vector(31 downto 0);
            In4 : in std_logic_vector(31 downto 0);
            In5 : in std_logic_vector(31 downto 0);
            In6 : in std_logic_vector(31 downto 0);
            In7 : in std_logic_vector(31 downto 0);
            In8 : in std_logic_vector(31 downto 0);
            In9 : in std_logic_vector(31 downto 0);
            In10 : in std_logic_vector(31 downto 0);
            In11 : in std_logic_vector(31 downto 0);
            In12 : in std_logic_vector(31 downto 0);
            In13 : in std_logic_vector(31 downto 0);
            In14 : in std_logic_vector(31 downto 0);
            In15 : in std_logic_vector(31 downto 0);
            In16 : in std_logic_vector(31 downto 0);
            In17 : in std_logic_vector(31 downto 0);
            In18 : in std_logic_vector(31 downto 0);
            In19 : in std_logic_vector(31 downto 0);
            In20 : in std_logic_vector(31 downto 0);
            In21 : in std_logic_vector(31 downto 0);
            In22 : in std_logic_vector(31 downto 0);
            In23 : in std_logic_vector(31 downto 0);
            In24 : in std_logic_vector(31 downto 0);
            In25 : in std_logic_vector(31 downto 0);
            In26 : in std_logic_vector(31 downto 0);
            In27 : in std_logic_vector(31 downto 0);
            In28 : in std_logic_vector(31 downto 0);
            In29 : in std_logic_vector(31 downto 0);
            In30 : in std_logic_vector(31 downto 0);
            In31 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector(4 downto 0);
            Z : out std_logic_vector(31 downto 0)
            );
    END COMPONENT;
    
    -- signals
    signal load00, load01, load02, load03, load04, load05, load06, load07, load08, load09, load10, load11, load12, load13, load14, load15, load16, load17, load18, load19,load20, load21, load22, load23, load24, load25, load26, load27, load28, load29, load30, load31 : std_logic;
    signal load_reg0, load_reg1, load_reg2, load_reg3, load_reg4, load_reg5, load_reg6, load_reg7, load_reg8, load_reg9, load_reg10, load_reg11, load_reg12, load_reg13, load_reg14, load_reg15, load_reg16, load_reg17, load_reg18, load_reg19, load_reg20, load_reg21, load_reg22, load_reg23, load_reg24, load_reg25, load_reg26, load_reg27, load_reg28, load_reg29, load_reg30, load_reg31, load_tmp : std_logic;
    signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q, reg8_q, reg9_q, reg10_q, reg11_q, reg12_q, reg13_q, reg14_q, reg15_q, reg16_q, reg17_q, reg18_q, reg19_q, reg20_q, reg21_q, reg22_q, reg23_q, reg24_q, reg25_q, reg26_q, reg27_q, reg28_q, reg29_q, reg30_q, reg31_q, reg32_q, a_data, b_data : std_logic_vector(31 downto 0);
    
    begin
        -- port maps ;-)
        
        -- Destination register decoder
        des_decoder_5to32: decoder_5to32 PORT MAP(
            A => des_A,
            Q0 => load00,
            Q1 => load01,
            Q2 => load02,
            Q3 => load03,
            Q4 => load04,
            Q5 => load05,
            Q6 => load06,
            Q7 => load07,
            Q8 => load08,
            Q9 => load09,
            Q10 => load10,
            Q11 => load11,
            Q12 => load12,
            Q13 => load13,
            Q14 => load14,
            Q15 => load15,
            Q16 => load16,
            Q17 => load17,
            Q18 => load18,
            Q19 => load19,
            Q20 => load20,
            Q21 => load21,
            Q22 => load22,
            Q23 => load23,
            Q24 => load24,
            Q25 => load25,
            Q26 => load26,
            Q27 => load27,
            Q28 => load28,
            Q29 => load29,
            Q30 => load30,
            Q31 => load31
        );
        
        load_reg0 <= write and load00 and (not TD);
        load_reg1 <= write and load01 and (not TD);
        load_reg2 <= write and load02 and (not TD);
        load_reg3 <= write and load03 and (not TD);
        load_reg4 <= write and load04 and (not TD);
        load_reg5 <= write and load05 and (not TD);
        load_reg6 <= write and load06 and (not TD);
        load_reg7 <= write and load07 and (not TD);
        load_reg8 <= write and load08 and (not TD);
        load_reg9 <= write and load09 and (not TD);
        load_reg10 <= write and load10 and (not TD);
        load_reg11 <= write and load11 and (not TD);
        load_reg12 <= write and load12 and (not TD);
        load_reg13 <= write and load13 and (not TD);
        load_reg14 <= write and load14 and (not TD);
        load_reg15 <= write and load15 and (not TD);
        load_reg16 <= write and load16 and (not TD);
        load_reg17 <= write and load17 and (not TD);
        load_reg18 <= write and load18 and (not TD);
        load_reg19 <= write and load19 and (not TD);
        load_reg20 <= write and load20 and (not TD);
        load_reg21 <= write and load21 and (not TD);
        load_reg22 <= write and load22 and (not TD);
        load_reg23 <= write and load23 and (not TD);
        load_reg24 <= write and load24 and (not TD);
        load_reg25 <= write and load25 and (not TD);
        load_reg26 <= write and load26 and (not TD);
        load_reg27 <= write and load27 and (not TD);
        load_reg28 <= write and load28 and (not TD);
        load_reg29 <= write and load29 and (not TD);
        load_reg30 <= write and load30 and (not TD);
        load_reg31 <= write and load31 and (not TD);
        load_tmp <= write and TD;
        
        -- register 0
        reg000: reg32 PORT MAP(
            D => data,
            load => load_reg0,
            Clk => Clk,
            Q => reg0_q 
        );
        -- register 1
        reg001: reg32 PORT MAP(
            D => data,
            load => load_reg1,
            Clk => Clk,
            Q => reg1_q 
        );
        -- register 2
        reg002: reg32 PORT MAP(
            D => data,
            load => load_reg2,
            Clk => Clk,
            Q => reg2_q 
        );
        -- register 3
        reg003: reg32 PORT MAP(
            D => data,
            load => load_reg3,
            Clk => Clk,
            Q => reg3_q 
        );
        -- register 4
        reg004: reg32 PORT MAP(
            D => data,
            load => load_reg4,
            Clk => Clk,
            Q => reg4_q 
        );
        -- register 5
        reg005: reg32 PORT MAP(
            D => data,
            load => load_reg5,
            Clk => Clk,
            Q => reg5_q 
        );
        -- register 6
        reg006: reg32 PORT MAP(
            D => data,
            load => load_reg6,
            Clk => Clk,
            Q => reg6_q 
        );
        -- register 7
        reg007: reg32 PORT MAP(
            D => data,
            load => load_reg7,
            Clk => Clk,
            Q => reg7_q 
        );
        -- register 8
        reg008: reg32 PORT MAP(
            D => data,
            load => load_reg8,
            Clk => Clk,
            Q => reg8_q 
        );
        -- register 9
        reg009: reg32 PORT MAP(
            D => data,
            load => load_reg9,
            Clk => Clk,
            Q => reg9_q 
        );
        -- register 10
        reg010: reg32 PORT MAP(
            D => data,
            load => load_reg10,
            Clk => Clk,
            Q => reg10_q 
        );
        -- register 11
        reg011: reg32 PORT MAP(
            D => data,
            load => load_reg11,
            Clk => Clk,
            Q => reg11_q 
        );
        -- register 12
        reg012: reg32 PORT MAP(
            D => data,
            load => load_reg12,
            Clk => Clk,
            Q => reg12_q 
        );
        -- register 13
        reg013: reg32 PORT MAP(
            D => data,
            load => load_reg13,
            Clk => Clk,
            Q => reg13_q 
        );
        -- register 14
        reg014: reg32 PORT MAP(
            D => data,
            load => load_reg14,
            Clk => Clk,
            Q => reg14_q 
        );
        -- register 15
        reg015: reg32 PORT MAP(
            D => data,
            load => load_reg15,
            Clk => Clk,
            Q => reg15_q 
        );
        -- register 16
        reg016: reg32 PORT MAP(
            D => data,
            load => load_reg16,
            Clk => Clk,
            Q => reg16_q 
        );
        -- register 17
        reg017: reg32 PORT MAP(
            D => data,
            load => load_reg17,
            Clk => Clk,
            Q => reg17_q 
        );
        -- register 18
        reg018: reg32 PORT MAP(
            D => data,
            load => load_reg18,
            Clk => Clk,
            Q => reg18_q 
        );
        -- register 19
        reg019: reg32 PORT MAP(
            D => data,
            load => load_reg19,
            Clk => Clk,
            Q => reg19_q 
        );
        -- register 20
        reg020: reg32 PORT MAP(
            D => data,
            load => load_reg20,
            Clk => Clk,
            Q => reg20_q 
        );
        -- register 21
        reg021: reg32 PORT MAP(
            D => data,
            load => load_reg21,
            Clk => Clk,
            Q => reg21_q 
        );
        -- register 22
        reg022: reg32 PORT MAP(
            D => data,
            load => load_reg22,
            Clk => Clk,
            Q => reg22_q 
        );
        -- register 23
        reg023: reg32 PORT MAP(
            D => data,
            load => load_reg23,
            Clk => Clk,
            Q => reg23_q 
        );
        -- register 24
        reg024: reg32 PORT MAP(
            D => data,
            load => load_reg24,
            Clk => Clk,
            Q => reg24_q 
        );
        -- register 25
        reg025: reg32 PORT MAP(
            D => data,
            load => load_reg25,
            Clk => Clk,
            Q => reg25_q 
        );
        -- register 26
        reg026: reg32 PORT MAP(
            D => data,
            load => load_reg26,
            Clk => Clk,
            Q => reg26_q 
        );
        -- register 27
        reg027: reg32 PORT MAP(
            D => data,
            load => load_reg27,
            Clk => Clk,
            Q => reg27_q 
        );
        -- register 28
        reg028: reg32 PORT MAP(
            D => data,
            load => load_reg28,
            Clk => Clk,
            Q => reg28_q 
        );
        -- register 29
        reg029: reg32 PORT MAP(
            D => data,
            load => load_reg29,
            Clk => Clk,
            Q => reg29_q 
        );
        -- register 30
        reg030: reg32 PORT MAP(
            D => data,
            load => load_reg30,
            Clk => Clk,
            Q => reg30_q 
        );
        -- register 31
        reg031: reg32 PORT MAP(
            D => data,
            load => load_reg31,
            Clk => Clk,
            Q => reg31_q 
        );
         -- register 32
        reg032: reg32 PORT MAP(
            D => data,
            load => load_tmp,
            Clk => Clk,
            Q => reg32_q 
        );
        
        -- 32 to 1 source register multiplexer
        A_mux32_32bit: mux32_32bit PORT MAP(
            In0 => reg0_q,
            In1 => reg1_q,
            In2 => reg2_q,
            In3 => reg3_q,
            In4 => reg4_q,
            In5 => reg5_q,
            In6 => reg6_q,
            In7 => reg7_q,
            In8 => reg8_q,
            In9 => reg9_q,
            In10 => reg10_q,
            In11 => reg11_q,
            In12 => reg12_q,
            In13 => reg13_q,
            In14 => reg14_q,
            In15 => reg15_q,
            In16 => reg16_q,
            In17 => reg17_q,
            In18 => reg18_q,
            In19 => reg19_q,
            In20 => reg20_q,
            In21 => reg21_q,
            In22 => reg22_q,
            In23 => reg23_q,
            In24 => reg24_q,
            In25 => reg25_q,
            In26 => reg26_q,
            In27 => reg27_q,
            In28 => reg28_q,
            In29 => reg29_q,
            In30 => reg30_q,
            In31 => reg31_q,
            S => src_A,
            Z => a_data
        );
        
       B_mux32_32bit: mux32_32bit PORT MAP(
            In0 => reg0_q,
            In1 => reg1_q,
            In2 => reg2_q,
            In3 => reg3_q,
            In4 => reg4_q,
            In5 => reg5_q,
            In6 => reg6_q,
            In7 => reg7_q,
            In8 => reg8_q,
            In9 => reg9_q,
            In10 => reg10_q,
            In11 => reg11_q,
            In12 => reg12_q,
            In13 => reg13_q,
            In14 => reg14_q,
            In15 => reg15_q,
            In16 => reg16_q,
            In17 => reg17_q,
            In18 => reg18_q,
            In19 => reg19_q,
            In20 => reg20_q,
            In21 => reg21_q,
            In22 => reg22_q,
            In23 => reg23_q,
            In24 => reg24_q,
            In25 => reg25_q,
            In26 => reg26_q,
            In27 => reg27_q,
            In28 => reg28_q,
            In29 => reg29_q,
            In30 => reg30_q,
            In31 => reg31_q,
            S => src_B,
            Z => b_data
        );
        
        data_A <= a_data when TA = '0' else reg32_q;
        data_B <= b_data when TB = '0' else reg32_q;
        
end Behavioral;
