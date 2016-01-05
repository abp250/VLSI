module p2s (
  clk,
  rst_n,
  load,
  pi,
  so
);

input clk;
input rst_n;
input load;
input [3:0] pi;
output so;

reg [3:0] r;

always@(posedge clk or negedge rst_n) 
  if (~rst_n)
    r <= 4'h0;
  else if (load)
    r <= pi;
  else
    r <= {r, 1'b0};
    
assign so = r[3];
    
endmodule