library verilog;
use verilog.vl_types.all;
entity triangle_tb is
    generic(
        INPUT_DATA      : string  := "input.dat";
        EXPECT_DATA     : string  := "expect.dat";
        period          : integer := 1000000
    );
end triangle_tb;
