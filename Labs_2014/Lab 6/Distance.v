module Distance (x, y, distance);
  input [7:0] x;
  input [7:0] y;
  
  output [16:0] distance;
  
  assign distance = x*x + y*y;

endmodule

  
