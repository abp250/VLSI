library verilog;
use verilog.vl_types.all;
entity Distance is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        distance        : out    vl_logic_vector(16 downto 0)
    );
end Distance;
