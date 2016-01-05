library verilog;
use verilog.vl_types.all;
entity p2s is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        load            : in     vl_logic;
        pi              : in     vl_logic_vector(3 downto 0);
        so              : out    vl_logic
    );
end p2s;
