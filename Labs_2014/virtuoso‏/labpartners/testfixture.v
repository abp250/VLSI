
`timescale 100us/1ps;

module testfixture;
  
 reg        CLK; 
 reg [7:0]  Xi, Yi;
 reg [3:0]  Wi; 
 reg [7:0]  X[0:38];
 reg [7:0]  Y[0:38];
 reg [7:0]  W[0:38];
 reg        RESET;
 wire       READY;
 wire [7:0]      Xc, Yc;
 
 reg [8:0] ii;
 
 wire [36:0]  node[0:5];
 
  GCC  GCC_0(CLK, RESET, Xi, Yi, Wi, READY, Xc, Yc ,node[0], node[1], node[2], node[3], node[4], node[5]);
  
  initial begin
 
 
 X[0]    <= 8'hff;
 X[1]    <= 8'h00;
 X[2]    <= 8'h00;
 X[3]    <= 8'hff;
 X[4]    <= 8'hff;
 X[5]    <= 8'h00;
 X[6]    <= 8'h00;
 X[7]    <= 8'hff;
 X[8]    <= 8'he4;
 X[9]    <= 8'he4;
 X[10]   <= 8'he4;
 X[11]   <= 8'h1c;
 X[12]   <= 8'h1c;
 X[13]   <= 8'h1c;
 X[14]   <= 8'hb3;
 X[15]   <= 8'hb3;
 X[16]   <= 8'hb3;
 X[17]   <= 8'h4d;
 X[18]   <= 8'h4d;
 X[19]   <= 8'h4d;
 X[20]   <= 8'h80;
 X[21]   <= 8'h73;
 X[22]   <= 8'h73;
 X[23]   <= 8'h8d;
 X[24]   <= 8'h80;
 X[25]   <= 8'h8d;
 X[26]   <= 8'h80;
 X[27]   <= 8'h79;
 X[28]   <= 8'h79;
 X[29]   <= 8'h87;
 X[30]   <= 8'h80;
 X[31]   <= 8'h87;
 X[32]   <= 8'h80;
 X[33]   <= 8'h33;
 X[34]   <= 8'hd0;
 X[35]   <= 8'hef;
 X[36]   <= 8'hda;
 X[37]   <= 8'h01;
 X[38]   <= 8'h94;

 Y[0]    <= 8'hff;
 Y[1]    <= 8'hff;
 Y[2]    <= 8'h00;
 Y[3]    <= 8'h00;
 Y[4]    <= 8'hff;
 Y[5]    <= 8'hff;
 Y[6]    <= 8'h00;
 Y[7]    <= 8'h00;
 Y[8]    <= 8'he4;
 Y[9]    <= 8'h80;
 Y[10]   <= 8'h1c;
 Y[11]   <= 8'he4;
 Y[12]   <= 8'h80;
 Y[13]   <= 8'h1c;
 Y[14]   <= 8'hb3;
 Y[15]   <= 8'h80;
 Y[16]   <= 8'h4d;
 Y[17]   <= 8'hb3;
 Y[18]   <= 8'h80;
 Y[19]   <= 8'h4d;
 Y[20]   <= 8'h8d;
 Y[21]   <= 8'h8d;
 Y[22]   <= 8'h73;
 Y[23]   <= 8'h8d;
 Y[24]   <= 8'h73;
 Y[25]   <= 8'h73;
 Y[26]   <= 8'h87;
 Y[27]   <= 8'h87;
 Y[28]   <= 8'h79;
 Y[29]   <= 8'h87;
 Y[30]   <= 8'h79;
 Y[31]   <= 8'h79;
 Y[32]   <= 8'h80;
 Y[33]   <= 8'h82;
 Y[34]   <= 8'hc9;
 Y[35]   <= 8'hfc;
 Y[36]   <= 8'h0b;
 Y[37]   <= 8'ha6;
 Y[38]   <= 8'h3d;

 W[0]    <= 8'h01;   
 W[1]    <= 8'h01;   
 W[2]    <= 8'h01;   
 W[3]    <= 8'h01;   
 W[4]    <= 8'h0f;   
 W[5]    <= 8'h0f;   
 W[6]    <= 8'h0f;   
 W[7]    <= 8'h0f;   
 W[8]    <= 8'h09;  
 W[9]    <= 8'h09;  
 W[10]   <= 8'h09;  
 W[11]   <= 8'h09;   
 W[12]   <= 8'h09;   
 W[13]   <= 8'h09;   
 W[14]   <= 8'h07;   
 W[15]   <= 8'h07;   
 W[16]   <= 8'h07;   
 W[17]   <= 8'h07;   
 W[18]   <= 8'h07;  
 W[19]   <= 8'h07;  
 W[20]   <= 8'h03;   
 W[21]   <= 8'h03;   
 W[22]   <= 8'h03;   
 W[23]   <= 8'h03;   
 W[24]   <= 8'h03;   
 W[25]   <= 8'h03;   
 W[26]   <= 8'h01;   
 W[27]   <= 8'h01;   
 W[28]   <= 8'h01;  
 W[29]   <= 8'h01;  
 W[30]   <= 8'h01;   
 W[31]   <= 8'h01;   
 W[32]   <= 8'h05;   
 W[33]   <= 8'h03;   
 W[34]   <= 8'h0e;   
 W[35]   <= 8'h05;   
 W[36]   <= 8'h08;   
 W[37]   <= 8'h07;   
 W[38]   <= 8'h02; 

 
 


  Xi <= 0;
  Yi <= 0;
  Wi <= 0;
  RESET <= 0;
     
  #0.5
  RESET <= 1;
     
end


always@(posedge CLK or negedge RESET)begin
 if(!RESET) begin
    
    Xi <= 0;
    Yi <= 0;
    Wi <= 0;
 //   READY <= 0; 
    ii <= 0;
    end
    
 else begin
   
   ii <= ii+1;
   Xi <= X[ii];
   Yi <= Y[ii];
   Wi <= W[ii];
   end
end
   
initial CLK = 1'b0;


   
always #1 CLK = ~CLK;
  
  
  
endmodule
