library verilog;
use verilog.vl_types.all;
entity control is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        alusrc          : out    vl_logic;
        aluop           : out    vl_logic_vector(1 downto 0);
        branch          : out    vl_logic;
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        regwrite        : out    vl_logic;
        regdst          : out    vl_logic;
        memtoreg        : out    vl_logic
    );
end control;
