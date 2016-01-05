library verilog;
use verilog.vl_types.all;
entity Center is
    port(
        sum             : in     vl_logic_vector(14 downto 0);
        sumw            : in     vl_logic_vector(6 downto 0);
        C               : out    vl_logic_vector(7 downto 0)
    );
end Center;
