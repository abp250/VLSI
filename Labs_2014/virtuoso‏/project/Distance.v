`timescale 10ns/1ps
module Distance (X, Y, Xc, Yc, D);
  input [7:0] X;
  input [7:0] Y;
  input [7:0] Xc;
  input [7:0] Yc;
  
  output [16:0] D;
  wire [7:0] dx, dy;
  
  
  assign dx = (X > Xc)? (X-Xc):(Xc-X);
  assign dy = (Y > Yc)? (Y-Yc):(Yc-Y);     
  assign  D = dx*dx + dy*dy;
  
endmodule

