
`timescale 10ns/1ps
module Center(sum, sumw, C);
 output [7:0] C;
  
 input [14:0] sum; // dividend (255 X 15 X 6) 
 input [6:0] sumw; // divisor (15 X 6)
 wire [5:0] half;
 wire [15:0] rem;
 wire [7:0] c;
 wire R;

 assign C = (rem >= (half + R))?(c+1):(c);  
 assign c = sum/sumw;
 assign rem = sum % sumw;
 assign half = sumw/2;
 assign R = sumw %2;

endmodule
  
   
