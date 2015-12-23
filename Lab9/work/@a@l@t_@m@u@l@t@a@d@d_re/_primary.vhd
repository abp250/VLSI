library verilog;
use verilog.vl_types.all;
entity ALT_MULTADD_re is
    port(
        iCLK            : in     vl_logic;
        iRST_N          : in     vl_logic;
        iSEL            : in     vl_logic;
        iSEL2           : in     vl_logic;
        iA0             : in     vl_logic_vector(7 downto 0);
        iA1             : in     vl_logic_vector(7 downto 0);
        iB0             : in     vl_logic_vector(7 downto 0);
        iB1             : in     vl_logic_vector(7 downto 0);
        \oR\            : out    vl_logic_vector(16 downto 0)
    );
end ALT_MULTADD_re;
