library verilog;
use verilog.vl_types.all;
entity Distance is
    port(
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        Xc              : in     vl_logic_vector(7 downto 0);
        Yc              : in     vl_logic_vector(7 downto 0);
        D               : out    vl_logic_vector(16 downto 0)
    );
end Distance;
