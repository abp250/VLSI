library verilog;
use verilog.vl_types.all;
entity triangle is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        nt              : in     vl_logic;
        xi              : in     vl_logic_vector(2 downto 0);
        yi              : in     vl_logic_vector(2 downto 0);
        busy            : out    vl_logic;
        po              : out    vl_logic;
        xo              : out    vl_logic_vector(2 downto 0);
        yo              : out    vl_logic_vector(2 downto 0)
    );
end triangle;
