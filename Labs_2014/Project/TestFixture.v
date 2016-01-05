`timescale 10ns/1ps
module TestFixture();
  
reg CLK, RESET;
reg [7:0] X, Y;
reg [3:0] W;
wire [7:0] Xc, Yc;
wire READY;

GCC GCC(CLK, RESET, X, Y, W, READY, Xc, Yc);
initial begin 
  CLK = 0;
  RESET <= 0;
  X  <= 0;
  Y  <= 0;
  W  <= 0;

  //counter = 0;
  
// First Six Points
  #3 RESET <= 1;
  #4  begin X   = 8'hff;  Y   = 8'hff;  W   = 8'h01; end
  #2  begin X   = 8'h00;  Y   = 8'hff;  W   = 8'h01; end
  #2  begin X   = 8'h00;  Y   = 8'h00;  W   = 8'h01; end
  #2  begin X   = 8'hff;  Y   = 8'h00;  W   = 8'h01; end
  #2  begin X   = 8'hff;  Y   = 8'hff;  W   = 8'h0f; end
  #2  begin X   = 8'h00;  Y   = 8'hff;  W   = 8'h0f; end 
  
// NEW POINTS
  #2  begin X   = 8'h00;  Y   = 8'h00;  W   = 8'h0f; end
  #2  begin X   = 8'hff;  Y   = 8'h00;  W   = 8'h0f; end
  #2  begin X   = 8'he4;  Y   = 8'he4;  W   = 8'h09; end
  #2  begin X   = 8'he4;  Y   = 8'h80;  W   = 8'h09; end    
  #2  begin X   = 8'he4;  Y   = 8'h1c;  W   = 8'h09; end
  #2  begin X   = 8'h1c;  Y   = 8'he4;  W   = 8'h09; end
  #2  begin X   = 8'h1c;  Y   = 8'h80;  W   = 8'h09; end
  #2  begin X   = 8'h1c;  Y   = 8'h1c;  W   = 8'h09; end
  #2  begin X   = 8'hb3;  Y   = 8'hb3;  W   = 8'h07; end
  #2  begin X   = 8'hb3;  Y   = 8'h80;  W   = 8'h07; end
  #2  begin X   = 8'hb3;  Y   = 8'h4d;  W   = 8'h07; end
  #2  begin X   = 8'h4d;  Y   = 8'hb3;  W   = 8'h07; end
  #2  begin X   = 8'h4d;  Y   = 8'h80;  W   = 8'h07; end
  #2  begin X   = 8'h4d;  Y   = 8'h4d;  W   = 8'h07; end
  #2  begin X   = 8'h80;  Y   = 8'h8d;  W   = 8'h03; end
  #2  begin X   = 8'h73;  Y   = 8'h8d;  W   = 8'h03; end
  #2  begin X   = 8'h73;  Y   = 8'h73;  W   = 8'h03; end
  #2  begin X   = 8'h8d;  Y   = 8'h8d;  W   = 8'h03; end
  #2  begin X   = 8'h80;  Y   = 8'h73;  W   = 8'h03; end
  #2  begin X   = 8'h8d;  Y   = 8'h73;  W   = 8'h03; end
  #2  begin X   = 8'h80;  Y   = 8'h87;  W   = 8'h01; end
  #2  begin X   = 8'h79;  Y   = 8'h87;  W   = 8'h01; end
  #2  begin X   = 8'h79;  Y   = 8'h79;  W   = 8'h01; end
  #2  begin X   = 8'h87;  Y   = 8'h87;  W   = 8'h01; end
  #2  begin X   = 8'h80;  Y   = 8'h79;  W   = 8'h01; end
  #2  begin X   = 8'h87;  Y   = 8'h79;  W   = 8'h01; end
  #2  begin X   = 8'h80;  Y   = 8'h80;  W   = 8'h05; end
  #2  begin X   = 8'h33;  Y   = 8'h82;  W   = 8'h03; end
  #2  begin X   = 8'hd0;  Y   = 8'hc9;  W   = 8'h0e; end
  #2  begin X   = 8'hef;  Y   = 8'hfc;  W   = 8'h05; end
  #2  begin X   = 8'hda;  Y   = 8'h0b;  W   = 8'h08; end
  #2  begin X   = 8'h01;  Y   = 8'ha6;  W   = 8'h07; end
  #2  begin X   = 8'h94;  Y   = 8'h3d;  W   = 8'h02; end

    
     
end
  
  
    


always #1 CLK = ~CLK;

endmodule
