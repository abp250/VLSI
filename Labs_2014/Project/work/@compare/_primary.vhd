library verilog;
use verilog.vl_types.all;
entity Compare is
    port(
        x0              : in     vl_logic_vector(7 downto 0);
        x1              : in     vl_logic_vector(7 downto 0);
        y0              : in     vl_logic_vector(7 downto 0);
        y1              : in     vl_logic_vector(7 downto 0);
        w0              : in     vl_logic_vector(3 downto 0);
        w1              : in     vl_logic_vector(3 downto 0);
        d0              : in     vl_logic_vector(16 downto 0);
        d1              : in     vl_logic_vector(16 downto 0);
        max             : out    vl_logic_vector(7 downto 0)
    );
end Compare;
