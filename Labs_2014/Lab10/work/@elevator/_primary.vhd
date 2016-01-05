library verilog;
use verilog.vl_types.all;
entity Elevator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        req             : in     vl_logic_vector(3 downto 0);
        up              : out    vl_logic;
        dwn             : out    vl_logic;
        trigger         : out    vl_logic;
        complete        : out    vl_logic
    );
end Elevator;
