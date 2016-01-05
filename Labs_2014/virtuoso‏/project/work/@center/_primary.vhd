library verilog;
use verilog.vl_types.all;
entity Center is
    port(
        clk             : in     vl_logic;
        x0              : in     vl_logic_vector(7 downto 0);
        x1              : in     vl_logic_vector(7 downto 0);
        x2              : in     vl_logic_vector(7 downto 0);
        x3              : in     vl_logic_vector(7 downto 0);
        x4              : in     vl_logic_vector(7 downto 0);
        x5              : in     vl_logic_vector(7 downto 0);
        y0              : in     vl_logic_vector(7 downto 0);
        y1              : in     vl_logic_vector(7 downto 0);
        y2              : in     vl_logic_vector(7 downto 0);
        y3              : in     vl_logic_vector(7 downto 0);
        y4              : in     vl_logic_vector(7 downto 0);
        y5              : in     vl_logic_vector(7 downto 0);
        w0              : in     vl_logic_vector(3 downto 0);
        w1              : in     vl_logic_vector(3 downto 0);
        w2              : in     vl_logic_vector(3 downto 0);
        w3              : in     vl_logic_vector(3 downto 0);
        w4              : in     vl_logic_vector(3 downto 0);
        w5              : in     vl_logic_vector(3 downto 0);
        xcc             : in     vl_logic_vector(7 downto 0);
        ycc             : in     vl_logic_vector(7 downto 0);
        RESET           : in     vl_logic;
        sum             : in     vl_logic_vector(14 downto 0);
        sumw            : in     vl_logic_vector(6 downto 0);
        C               : out    vl_logic_vector(7 downto 0)
    );
end Center;
