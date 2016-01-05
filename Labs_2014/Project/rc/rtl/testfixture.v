`timescale 10us/1ps
module testfixture();
  
reg CLK, RESET;
reg [7:0] X, Y;
reg [3:0] W;
reg [2:0] counter;
wire [7:0] Xc, Yc;
wire READY;

gcc test(.CLK(CLK), .RESET(RESET), .X(X), .Y(Y), .W(W), .READY(READY), .Xc(Xc), .Yc(Yc));
initial begin 
  CLK = 0;
  RESET <= 0;
  X <= 0;
  Y <= 0;
  W <= 0;
  //counter = 0;
  
  #1 RESET <=1;
  #10 begin
  X <= 8'h03;
  Y <= 8'h04;
  W <= 1;
  end
  
  #10 begin
  X <= 8'h06;
  Y <= 8'h08;
  W <= 2;
  end

  #10 begin  
  X <= 8'h02;
  Y <= 8'h02;
  W <= 8'h01;
  end
  
  #10 begin 
  X <= 8'h02;
  Y <= 8'h01;
  W <= 8'h04;
  end
  
  #10 begin 
  X <= 8'h02;
  Y <= 8'h01;
  W <= 8'h02;
  end
  
  #10 begin 
  X <= 8'h02;
  Y <= 8'h01;
  W <= 8'h0A;
  end
  
  #10 begin 
  X <= 8'h01;
  Y <= 8'h01;
  W <= 8'h0A;
  end
  

end
  
  
    


always #1 CLK = ~CLK;

endmodule