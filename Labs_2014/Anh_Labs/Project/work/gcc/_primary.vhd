library verilog;
use verilog.vl_types.all;
entity gcc is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        W               : in     vl_logic_vector(3 downto 0);
        READY           : out    vl_logic;
        Xc              : out    vl_logic_vector(7 downto 0);
        Yc              : out    vl_logic_vector(7 downto 0)
    );
end gcc;
