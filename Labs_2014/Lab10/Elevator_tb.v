`timescale 100ns/100ns
module Elevator_tb ();
  

  reg clk, rst;
  reg [3:0] req;
  wire up, dwn, trigger, complete;
 // reg [3:0] floor;
  
  Elevator test(clk, rst, req, up, dwn, trigger, complete);


initial begin
  clk =0;
  rst =0;
  req =0;
//  floor =0;
  #5 rst <=1;
  #50 req <=2;
  #50 req <=1;
  #100 req<=5;  
  #300 req<=0;
end



  






/*always @ (posedge clk)
    #10 begin
    
    if (req >floor)
      begin floor=floor+1; end
    else if (req < floor)
      begin floor=floor-1; end        
    
    end
*/
  


always #5 clk=~clk;


endmodule
