`timescale 10ns/1ps
module ALT_MULTADD_pipe_tb ();
  

  reg iCLK, iRST_N, iSEL;
  reg [7:0] iA0, iA1, iB0, iB1; 
  wire [16:0] oRESULT;
  
  ALT_MULTADD_pipe test(.iCLK(iCLK), .iRST_N(iRST_N), .iSEL(iSEL),  .iA0(iA0), .iA1(iA1), 
  .iB0(iB0), .iB1(iB1), .oRESULT(oRESULT));
  
  initial begin
    
    iCLK = 0;
    iRST_N = 0;
    iRST_N = 1;
    
 

    #1
      begin
        iSEL = 0;
        iA0 = 8'b00000011;
        iA1 = 8'b00000011;
        iB0 = 8'b00000011;
        iB1 = 8'b00000011;
      end
      
    #2
       begin
        iSEL = 1;
        iA0 = 8'b00000001;
        iA1 = 8'b00000001;
        iB0 = 8'b00000001;
        iB1 = 8'b00000001;
      end
    end 
  always #1 iCLK = ~iCLK;
//  always #10 iSEL = ~iSEL;
  
endmodule

