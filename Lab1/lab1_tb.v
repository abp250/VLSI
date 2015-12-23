`timescale 10ns/1ns
module lab1_tb ();
  

  reg iCLK_t, iRST_N_t, iSEL_t;
  reg [7:0] iA0_t, iA1_t, iB0_t, iB1_t; 
  wire [16:0] oRESULT_t;
  
  lab1 X(iCLK_t, iRST_N_t, iSEL_t,  iA0_t, iA1_t, iB0_t, iB1_t, oRESULT_t);
  
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
    iA0_t = 0;
    iA1_t = 0;
    iB0_t = 0;
    iB1_t = 0;
    
    #1 
    iRST_N_t = 1;
    
    #3
    iSEL_t = 1;
    iA0_t = 53;
    iA1_t = 26;
    iB0_t = 120;
    iB1_t = 0;
    
    #10
    iSEL_t = 0;
    iA0_t = 53;
    iA1_t = 26;
    iB0_t = 120;
    iB1_t = 0;
    
    #10
    iSEL_t = 1;
    iA0_t = 53;
    iA1_t = 26;
    iB0_t = 120;
    iB1_t = 5;
    
    #10
    iSEL_t = 0;
    iA0_t = 53;
    iA1_t = 26;
    iB0_t = 120;
    iB1_t = 5;
    
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
  
  /* 
  
  always
   #2 begin
    if(iA0_t == 127)
      iA0_t = 0;
    else
      iA0_t = iA0_t + 1;
  end
  
  always
   #256 begin
    if(iA1_t == 127)
      iA1_t = 0;
    else
      iA1_t = iA1_t + 1;
  end
  
  always
   #32768 begin
    if(iB0_t == 127)
      iB0_t = 0;
    else
      iB0_t = iB0_t + 1;
  end
  
  always
   #4194304 begin
    if(iB1_t == 127)
      iB1_t = 0;
    else
      iB1_t = iB1_t + 1;
  end
  
  always #536870912 iSEL_t = ~iSEL_t;
  */
  
endmodule