library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Random Access Memory
entity memory is
    Port (
        address : in std_logic_vector(31 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        write_enable : in std_logic;
        clock : in std_logic;
        read_data : out std_logic_vector(31 downto 0)
        );
end memory;

architecture Behavioral of memory is
    -- we will use the least significant 9 bit of the address - array(0 to 511)
    type mem_array is array(0 to 511) of std_logic_vector(31 downto 0); 
    -- initialize data memory, X denotes hexadecimal number
    signal data_mem : mem_array := (
    X"00000091", X"00000092", X"00000093", X"00000094", X"00000095", X"00000096", X"00000097", X"00000098",
    X"00000099", X"0000009A", X"0000009B", X"0000009C", X"0000009D", X"0000009E", X"0000009F", X"000000A0",
    X"000000A1", X"000000A2", X"000000A3", X"000000A4", X"000000A5", X"000000A6", X"000000A7", X"000000A8",
    X"000000A9", X"000000AA", X"000000AB", X"000000AC", X"000000AD", X"000000AE", X"000000AF", X"000000B0",
    X"000000B1", X"000000B2", X"000000B3", X"000000B4", X"000000B5", X"000000B6", X"000000B7", X"000000B8",
    X"000000B9", X"000000BA", X"000000BB", X"000000BC", X"000000BD", X"000000BE", X"000000BF", X"000000C0",
    X"000000C1", X"000000C2", X"000000C3", X"000000C4", X"000000C5", X"000000C6", X"000000C7", X"000000C8",
    X"000000C9", X"000000CA", X"000000CB", X"000000CC", X"000000CD", X"000000CE", X"000000CF", X"000000D0",
    X"000000D1", X"000000D2", X"000000D3", X"000000D4", X"000000D5", X"000000D6", X"000000D7", X"000000D8",
    X"000000D9", X"000000DA", X"000000DB", X"000000DC", X"000000DD", X"000000DE", X"000000DF", X"000000E0",
    X"000000E1", X"000000E2", X"000000E3", X"000000E4", X"000000E5", X"000000E6", X"000000E7", X"000000E8",
    X"000000E9", X"000000EA", X"000000EB", X"000000EC", X"000000ED", X"000000EE", X"000000EF", X"000000F0",
    X"000000F1", X"000000F2", X"000000F3", X"000000F4", X"000000F5", X"000000F6", X"000000F7", X"000000F8",
    X"000000F9", X"000000FA", X"000000FB", X"000000FC", X"000000FD", X"000000FE", X"000000FF", X"00000100",
    X"00000101", X"00000102", X"00000103", X"00000104", X"00000105", X"00000106", X"00000107", X"00000108",
    X"00000109", X"0000010A", X"0000010B", X"0000010C", X"0000010D", X"0000010E", X"0000010F", X"00000110",
    X"00000111", X"00000112", X"00000113", X"00000114", X"00000115", X"00000116", X"00000117", X"00000118",
    X"00000119", X"0000011A", X"0000011B", X"0000011C", X"0000011D", X"0000011E", X"0000011F", X"00000120",
    X"00000121", X"00000122", X"00000123", X"00000124", X"00000125", X"00000126", X"00000127", X"00000128",
    X"00000129", X"0000012A", X"0000012B", X"0000012C", X"0000012D", X"0000012E", X"0000012F", X"00000130",
    X"00000131", X"00000132", X"00000133", X"00000134", X"00000135", X"00000136", X"00000137", X"00000138",
    X"00000139", X"0000013A", X"0000013B", X"0000013C", X"0000013D", X"0000013E", X"0000013F", X"00000140",
    X"00000141", X"00000142", X"00000143", X"00000144", X"00000145", X"00000146", X"00000147", X"00000148",
    X"00000149", X"0000014A", X"0000014B", X"0000014C", X"0000014D", X"0000014E", X"0000014F", X"00000150",
    X"00000151", X"00000152", X"00000153", X"00000154", X"00000155", X"00000156", X"00000157", X"00000158",
    X"00000159", X"0000015A", X"0000015B", X"0000015C", X"0000015D", X"0000015E", X"0000015F", X"00000160",
    X"00000161", X"00000162", X"00000163", X"00000164", X"00000165", X"00000166", X"00000167", X"00000168",
    X"00000169", X"0000016A", X"0000016B", X"0000016C", X"0000016D", X"0000016E", X"0000016F", X"00000170",
    X"00000171", X"00000172", X"00000173", X"00000174", X"00000175", X"00000176", X"00000177", X"00000178",
    X"00000179", X"0000017A", X"0000017B", X"0000017C", X"0000017D", X"0000017E", X"0000017F", X"00000180",
    X"00000181", X"00000182", X"00000183", X"00000184", X"00000185", X"00000186", X"00000187", X"00000188",
    X"00000189", X"0000018A", X"0000018B", X"0000018C", X"0000018D", X"0000018E", X"0000018F", X"00000190",
    X"00000191", X"00000192", X"00000193", X"00000194", X"00000195", X"00000196", X"00000197", X"00000198",
    X"00000199", X"0000019A", X"0000019B", X"0000019C", X"0000019D", X"0000019E", X"0000019F", X"000001A0",
    X"000001A1", X"000001A2", X"000001A3", X"000001A4", X"000001A5", X"000001A6", X"000001A7", X"000001A8",
    X"000001A9", X"000001AA", X"000001AB", X"000001AC", X"000001AD", X"000001AE", X"000001AF", X"000001B0",
    X"000001B1", X"000001B2", X"000001B3", X"000001B4", X"000001B5", X"000001B6", X"000001B7", X"000001B8",
    X"000001B9", X"000001BA", X"000001BB", X"000001BC", X"000001BD", X"000001BE", X"000001BF", X"000001C0",
    X"000001C1", X"000001C2", X"000001C3", X"000001C4", X"000001C5", X"000001C6", X"000001C7", X"000001C8",
    X"000001C9", X"000001CA", X"000001CB", X"000001CC", X"000001CD", X"000001CE", X"000001CF", X"000001D0",
    X"000001D1", X"000001D2", X"000001D3", X"000001D4", X"000001D5", X"000001D6", X"000001D7", X"000001D8",
    X"000001D9", X"000001DA", X"000001DB", X"000001DC", X"000001DD", X"000001DE", X"000001DF", X"000001E0",
    X"000001E1", X"000001E2", X"000001E3", X"000001E4", X"000001E5", X"000001E6", X"000001E7", X"000001E8",
    X"000001E9", X"000001EA", X"000001EB", X"000001EC", X"000001ED", X"000001EE", X"000001EF", X"000001F0",
    X"000001F1", X"000001F2", X"000001F3", X"000001F4", X"000001F5", X"000001F6", X"000001F7", X"000001F8",
    X"000001F9", X"000001FA", X"000001FB", X"000001FC", X"000001FD", X"000001FE", X"000001FF", X"00000200",
    X"00000201", X"00000202", X"00000203", X"00000204", X"00000205", X"00000206", X"00000207", X"00000208",
    X"00000209", X"0000020A", X"0000020B", X"0000020C", X"0000020D", X"0000020E", X"0000020F", X"00000210",
    X"00000211", X"00000212", X"00000213", X"00000214", X"00000215", X"00000216", X"00000217", X"00000218",
    X"00000219", X"0000021A", X"0000021B", X"0000021C", X"0000021D", X"0000021E", X"0000021F", X"00000220",
    X"00000221", X"00000222", X"00000223", X"00000224", X"00000225", X"00000226", X"00000227", X"00000228",
    X"00000229", X"0000022A", X"0000022B", X"0000022C", X"0000022D", X"0000022E", X"0000022F", X"00000230",
    X"00000231", X"00000232", X"00000233", X"00000234", X"00000235", X"00000236", X"00000237", X"00000238",
    X"00000239", X"0000023A", X"0000023B", X"0000023C", X"0000023D", X"0000023E", X"0000023F", X"00000240",
    X"00000241", X"00000242", X"00000243", X"00000244", X"00000245", X"00000246", X"00000247", X"00000248",
    X"00000249", X"0000024A", X"0000024B", X"0000024C", X"0000024D", X"0000024E", X"0000024F", X"00000250",
    X"00000251", X"00000252", X"00000253", X"00000254", X"00000255", X"00000256", X"00000257", X"00000258",
    X"00000259", X"0000025A", X"0000025B", X"0000025C", X"0000025D", X"0000025E", X"0000025F", X"00000260",
    X"00000261", X"00000262", X"00000263", X"00000264", X"00000265", X"00000266", X"00000267", X"00000268",
    X"00000269", X"0000026A", X"0000026B", X"0000026C", X"0000026D", X"0000026E", X"0000026F", X"00000270",
    X"00000271", X"00000272", X"00000273", X"00000274", X"00000275", X"00000276", X"00000277", X"00000278",
    X"00000279", X"0000027A", X"0000027B", X"0000027C", X"0000027D", X"0000027E", X"0000027F", X"00000280",
    X"00000281", X"00000282", X"00000283", X"00000284", X"00000285", X"00000286", X"00000287", X"00000288",
    X"00000289", X"0000028A", X"0000028B", X"0000028C", X"0000028D", X"0000028E", X"0000028F", X"00000290"
    ); 
    
    begin
       mem_process: process(clock)
       begin
           if(rising_edge(clock)) then
               if(write_enable='1') then
                   data_mem(to_integer(unsigned(address(8 downto 0)))) <= write_data after 2ns;
               end if;
           end if;
       end process;
       read_data <= data_mem(to_integer(unsigned(address(8 downto 0)))) after 2ns;
end Behavioral;
