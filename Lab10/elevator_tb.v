`timescale 1us/100ns
module elevator_tb();
  
  reg iclk_t, irst_t, icomplete_t;
  reg [2:0] ireq_t, ifloor_t;
  wire oup_t, odown_t, otrigger_t;
  
  
  elevator X(ifloor_t, ireq_t, icomplete_t, irst_t, iclk_t, oup_t, odown_t, otrigger_t);
  initial $display ("Test control");
  initial $display ("%10s %10s %10s %10s %10s %10s %10s %10s","ifloor_t", "ireq_t", "icomplete_t", "irst_t", "iclk_t", "oup_t", "odown_t", "otrigger_t");
  initial $monitor ("%10d %10d %10b %10b %10b %10b %10b %10b",ifloor_t, ireq_t, icomplete_t, irst_t, iclk_t, oup_t, odown_t, otrigger_t);
  
  
  initial begin
    
    iclk_t = 0;
    irst_t = 0;
    ireq_t = 0;
    icomplete_t = 0;
    ifloor_t = 0;
    #2
    irst_t = 1;
    
    #11
    ireq_t = 3;
    #20
    ifloor_t = 2;
    #20
    ifloor_t = 3;
    #10
    icomplete_t = 1;
    #10
    icomplete_t = 0;
    #3000
    
    #11
    ireq_t = 0;
    #20
    ifloor_t = 2;
    #20
    ifloor_t = 1;
    #20
    ifloor_t = 0;
    #20
    icomplete_t = 1;
    #10
    icomplete_t = 0;    
    
    #3000
    
    $stop;
    
    
    
    
  end
  always #1 iclk_t = ~iclk_t;
    
endmodule
  