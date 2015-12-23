 `timescale 1ns/1ns
  
 module p2s_tb;
 
 reg clk;
 reg rst_n;
 reg load;
 reg [3:0] pi;
 wire so;
 
 initial begin
   load = 1'b0;
   pi = 4'h0;
   #10;
   load <= 1'b1;
   pi <= 4'b1010;
   #20;
   load <= 1'b0;
   pi <= 4'h0;
 end
 
 initial clk = 1'b0;
 always #10 clk = ~clk;
 
 initial begin
   rst_n = 1'b0;
   #5;
   rst_n = 1'b1;
 end
 
 initial begin
   #150;
   $finish;
 end
 
 p2s p2s_0 (
   .clk(clk),
   .rst_n(rst_n),
   .load(load),
   .pi(pi),
   .so(so)
 );
 
 endmodule