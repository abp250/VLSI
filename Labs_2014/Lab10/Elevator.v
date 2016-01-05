module Elevator (clk,rst,req, up, dwn, trigger, complete);
input clk, rst;
input [3:0] req;
reg [3:0] floor;
reg [8:0] counter;
reg slpmode;
output reg up, dwn, complete, trigger;


always @(posedge clk)begin
  if (rst == 0)begin 
      up<=1'b0;
      dwn<=1'b0;
      trigger <=1'b0;
      floor <=1'b0;
      //complete <=1'b1;
      counter <=1'b0;
      slpmode<=1'b0;
  end
  
  else if (rst ==1)begin 
    // GOING UP
      if (req > floor)begin 
          up<=1;
          dwn<=0;
          trigger<=0;
          complete <=0;
          floor <= floor + 1; 
          slpmode<=0;            
      end
    // GOING DOWN 
      else if (req < floor)begin 
          dwn<=1;
          up<=0;
          complete <=0;
          trigger <=0;
          complete <=0;          
          floor <= floor - 1;
          slpmode<=0;
      end
    // IDLE 
      else if (req == floor)begin
          up <=0;
          dwn <=0;
          trigger <=1; 
          complete <=1;
          if (complete ==1)begin 
             trigger<=0;
             counter <= counter +1;
             slpmode<=0;
             if (counter >= 20)//begin 
                slpmode <= 1; 
             //end
          end     //DOUBLE CHECK ON THIS
          
          else begin counter <=0;end  
      end
      
      
      
      
            
  end    
   
end

  
  
    

endmodule

  
              
      
