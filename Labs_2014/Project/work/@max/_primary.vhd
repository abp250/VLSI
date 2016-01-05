library verilog;
use verilog.vl_types.all;
entity Max is
    port(
        max0            : in     vl_logic_vector(16 downto 0);
        max1            : in     vl_logic_vector(16 downto 0);
        MAX             : out    vl_logic_vector(16 downto 0)
    );
end Max;
