library verilog;
use verilog.vl_types.all;
entity Compare23 is
    port(
        x2              : in     vl_logic_vector(7 downto 0);
        x3              : in     vl_logic_vector(7 downto 0);
        y2              : in     vl_logic_vector(7 downto 0);
        y3              : in     vl_logic_vector(7 downto 0);
        w2              : in     vl_logic_vector(3 downto 0);
        w3              : in     vl_logic_vector(3 downto 0);
        d2              : in     vl_logic_vector(16 downto 0);
        d3              : in     vl_logic_vector(16 downto 0);
        max23           : out    vl_logic_vector(2 downto 0)
    );
end Compare23;
