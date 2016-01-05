library verilog;
use verilog.vl_types.all;
entity Compare45 is
    port(
        x4              : in     vl_logic_vector(7 downto 0);
        x5              : in     vl_logic_vector(7 downto 0);
        y4              : in     vl_logic_vector(7 downto 0);
        y5              : in     vl_logic_vector(7 downto 0);
        w4              : in     vl_logic_vector(3 downto 0);
        w5              : in     vl_logic_vector(3 downto 0);
        d4              : in     vl_logic_vector(16 downto 0);
        d5              : in     vl_logic_vector(16 downto 0);
        max45           : out    vl_logic_vector(2 downto 0)
    );
end Compare45;
