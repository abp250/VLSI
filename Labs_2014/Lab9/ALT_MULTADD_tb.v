`timescale 100ns/1ps
module ALT_MULTADD_tb ();
  

  reg iCLK, iRST_N, iSEL;
  reg [7:0] iA0, iA1, iB0, iB1;
  reg EN; 
  wire [16:0] oRESULT;
  
  ALT_MULTADD test(.iCLK(iCLK), .iRST_N(iRST_N), .iSEL(iSEL),  .iA0(iA0), .iA1(iA1), 
  .iB0(iB0), .iB1(iB1), .oRESULT(oRESULT));
  
/*  initial begin
    
    iCLK = 0;
    iRST_N = 0;
    iSEL = 0;
    EN = 0;
    iA0 = 8'b00000000;
    iA1 = 8'b00000000;
    iB0 = 8'b00000000;
    iB1 = 8'b00000000;
 end 
 always @(posedge EN)
 begin
    #0.5
      begin
      iRST_N = 1;
      iSEL=1;
      end
  
   
    #0.5  
      begin
        iA0 = 8'b00000010;
        iA1 = 8'b00000010;
        iB0 = 8'b00000010;
        iB1 = 8'b00000010;
      end
    #2 
      begin
        iSEL=0;
      end 
/*   #4 iSEL=1;
   #4   
       begin
        iA0 = 8'b00000101;
        iA1 = 8'b00000010;
        iB0 = 8'b00000101;
        iB1 = 8'b00000010;
      end
   #2 iSEL=0;

         "#": 
   #2 
      begin
        iA1=8'b00000100;

        iB1=8'b00000100;        

      end
      
  end        
*/

  always #1 iCLK = ~iCLK;
  always @(negedge iCLK)
    begin EN = ~EN; end
    
  
endmodule
