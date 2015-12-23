
module elevator(ifloor, ireq, icomplete, irst, iclk, oup, odown, otrigger);
  input ifloor, ireq, icomplete, irst, iclk;
  output oup, odown, otrigger;
  
  wire icomplete, irst, iclk;
  wire [2:0] ifloor, ireq;
  reg [2:0] floor, req, req_tmp;
  reg [1:0] state, nextstate;
  reg [10:0] timer;
  reg complete;
  reg up, dn, tr, oup, odown, otrigger, power;
  
  always @ (posedge iclk) begin
    if(~irst)begin
      floor <= 0;
      req <= 0;
      req_tmp <= 0;
      state <= 0;
      nextstate = 0;
      complete <= 0;
      up = 0;
      dn = 0;
      odown <= 0;
      oup <= 0;
      tr = 0;
      otrigger <= 0;
      timer <= 0;
      power <= 0;

    end
    
    else begin
      if(ireq != floor)begin   //If there is a new requested floor, turn power back on
        power <= 1;
      end
      
      if(power) begin //here is where power register controls     
                
                
        // all pipelining for logic with clock gate to load only if next value is not equal to previous.
        if(ifloor != floor)begin
          floor <= ifloor;
        end
        if(ireq != req)begin
          req <= ireq;
        end
        if(icomplete != complete)begin
          complete <= icomplete;
        end
        if(odown != dn)begin
          odown <= dn;
        end
        if(oup != up)begin
          oup <= up;
        end
        if(otrigger != tr)begin
          otrigger <= tr;
        end
        if(nextstate != state)begin
          state <= nextstate;
        end
        
        //here is timer implimentation
        if(state == 0)begin
          if(timer >= 1023)begin
            power <= 0;
            timer <= 0;
          end
          else begin
          timer <= timer + 1;//incrament if timer is below 1023
          end
        end
        else begin
          timer <= 0;
        end
        
      
      end
    end 
  end
  


  
  always @(req, floor, state, complete)begin
    if(state == 0)begin//idle
      up = 0;
      dn = 0;
      tr = 0;
      if(req != floor)begin
        if(req > floor)begin
          nextstate = 2;
        end
        else if(req < floor)begin
          nextstate = 3;
        end
      end
    end
    
    
    if(state == 1)begin//stop
      up = 0;
      dn = 0;
      tr = 1;
      if(complete)begin
        nextstate = 0;
      end
    end
    
    
    if(state == 2)begin//going up
      up = 1;
      dn = 0;
      tr = 0;
      if(req <= floor)begin
        nextstate = 1;
      end
    end
    
    
    if(state == 3)begin//going dn
      up = 0;
      dn = 1;
      tr = 0;
      if(req >= floor)begin
        nextstate = 1;
      end
    end
  end
  
  
  
  
  
  
endmodule