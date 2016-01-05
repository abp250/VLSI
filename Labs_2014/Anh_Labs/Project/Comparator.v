`timescale 10ns/1ps
module Comparator(x0, y0, w0, d0, i, x1, y1, w1, d1, j, max); 
input [7:0] x0, x1;
input [7:0] y0, y1;
input [3:0] w0, w1;
input [16:0] d0, d1;
input [2:0] i, j;

output reg [2:0] max;

always @ (x0 or x1 or y0 or y1 or w0 or w1 or d0 or d1) begin  
  if (d1 > d0) begin
    max <= j;
  end  
  else if (d1 < d0) begin 
    max <= i;
  end  
  else if (x1 > x0) begin
    max <= j;
  end  
  else if (x1 < x0) begin 
    max <= i;
  end    
  else if (y1 > y0) begin 
    max <= j;
  end  
  else if (y1 < y0) begin 
    max <= i;
  end    
  else if (w1 > w0) begin 
    max <= j;
  end
  else if (w1 < w0) begin 
    max <= i;
  end
 
end
endmodule 

