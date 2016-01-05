`timescale 10ns/1ps
module Center(clk, x0, x1, x2, x3, x4, x5,
                   y0, y1, y2, y3, y4, y5,
                   w0, w1, w2, w3, w4, w5,
                   xcc, ycc, RESET, sumxw, sumyw, sumw, C, XC, YC);
 
 input clk, RESET;
 
 
 input [7:0] x0, x1, x2, x3, x4, x5,
             y0, y1, y2, y3, y4, y5;
 input [3:0] w0, w1, w2, w3, w4, w5;
 input [7:0] xcc, ycc;
 
 output [16:0] d0, d1, d2, d3, d4, d5;
 output [7:0] XC, YC;
              
  
 input [14:0] sum; // dividend (255 X 15 X 6) 
 input [6:0] sumw; // divisor (15 X 6)
 reg [5:0] half;
 reg [15:0] remx, remy;
 reg [7:0] xc, yc;
 reg R;
  
 
 output [7:0] C;
 assign xcc = xc;
 assign ycc = yc;
 assign XC = (remx >= (half + R))?(xc+1):(xc);
 assign YC = (remy >= (half + R))?(yc+1):(yc);  

 always @ (posedge clk or RESET) begin
    xc <= sumxw / sumw; 
    yc <= sumyw / sumw;
    remx <= sumxw % sumw;
    remy <= sumyw % sumw;
    half <= sumw / 2;        
    R <= sumw % 2;
end

Distance distance0(x0, y0, xcc, ycc, d0);
Distance distance1(x1, y1, xcc, ycc, d1);
Distance distance2(x2, y2, xcc, ycc, d2);
Distance distance3(x3, y3, xcc, ycc, d3);
Distance distance4(x4, y4, xcc, ycc, d4);
Distance distance5(x5, y5, xcc, ycc, d5);
 
endmodule
  
   
