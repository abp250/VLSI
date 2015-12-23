`timescale 10ns/1ns
module ALT_MULTADD_TB ();
  

  reg iCLK_t, iRST_N_t, iSEL_t;
  reg [7:0] iA0_t, iA1_t, iB0_t, iB1_t; 
  wire [16:0] oRESULT_t;
  
  ALT_MULTADD_re X(iCLK_t, iRST_N_t, iSEL_t, iSEL2_t,  iA0_t, iA1_t, iB0_t, iB1_t, oRESULT_t);
  
  initial $display ("Test control");
  initial $display ("%10s %10s %10s %10s %10s %10s %10s %10s",
      "iCLK_t", "iRST_N_t", "iSEL_t", "iA0_t", "iA1_t", 
      "iB0_t", "iB1_t", "oRESULT_t");
   initial $monitor ("%10b %10b %10b %10d %10d %10d %10d %10d",
      iCLK_t, iRST_N_t, iSEL_t,  iA0_t, iA1_t, iB0_t, iB1_t, oRESULT_t);
  
  initial begin
    
    iCLK_t = 0;
    iRST_N_t = 0;
    iSEL_t = 0;
    iSEL2_t = 0;
    iA0_t = 0;
    iA1_t = 0;
    iB0_t = 0;
    iB1_t = 0;
    
    #1 
    iRST_N_t = 1;
    #1
    iA0_t = 3;
    iA1_t = 2;
    iB0_t = 3;
    iB1_t = 2;
    
    #4
    iSEL_t = 1;
    iSEL2_t = 1;
    iA0_t = 1;
    iA1_t = 1;
    iB0_t = 1;
    iB1_t = 1;
    #2
    iSEL_t = 0;
    
    #4
    iSEL_t = 0;
    iSEL2_t = 1;
    iA0_t = 2;
    iA1_t = 2;
    iB0_t = 2;
    iB1_t = 2;
    #2
    iSEL2_t = 0;
    
    #10
    iSEL_t = 1;
    iA0_t = 2;
    iA1_t = 2;
    iB0_t = 2;
    iB1_t = 2;
    
    #10
    iSEL_t = 0;
    iA0_t = 1;
    iA1_t = 1;
    iB0_t = 1;
    iB1_t = 1;
    
    #10
    iSEL_t = 0;
    iA0_t = 26;
    iA1_t = 1;
    iB0_t = 15;
    iB1_t = 19;
    
    
    #4
    $stop;
    
  end
    
  always #1 iCLK_t = ~iCLK_t;

endmodule