module gcc (CLK,RESET,X, Y, W, READY, Xc, Yc);
input CLK, RESET;
input [7:0] X, Y;
input [3:0] W;
reg [9:0] SumXW, SumYW, SumW;
reg [9:0] sumxw, sumyw, sumw;
reg [2:0] counter;
reg [7:0] farthest;
reg [3:0] w;
reg [8:0] D0, D1, D2, D3, D4, D5, D6;
reg [7:0] X0, X1, X2, X3, X4, X5, X6, x;
reg [7:0] Y0, Y1, Y2, Y3, Y4, Y5, Y6, y;
reg [7:0] W0, W1, W2, W3, W4, W5, W6;




// Testing Remainder
reg [4:0] Rx, Ry;

output reg [7:0] Xc, Yc;
output READY;



 
always @ (posedge CLK) begin
w <= W;
x <= X;
y <= Y;
sumxw <= SumXW;
sumyw <= SumYW;
sumw <= SumW; 
Xc <= sumxw / sumw;
Yc <= sumyw / sumw;
Rx = sumxw % sumw;
Ry = sumyw % sumw;
  
  if(!RESET)begin
    counter <= 0;
    SumXW <= 0;
    SumYW <= 0;
    SumW <= 0; 
    Xc <= 0;
    Yc <= 0;
    farthest <= 0; 
  end
  


else if ((W!= w || X != x || Y != y) && W != 0 && counter <=6) begin
  counter <= counter +1;
  SumXW <= sumxw +X * W;
  SumYW <= sumyw + Y * W;
  SumW <= sumw + W;
  case (counter) 
    0: begin
              X0 <= X;
              Y0 <= Y;
              W0 <= W;
              D0 <= (X)^2+(Y)^2;
    end         
      
    1: begin
              X1 <= X;
              Y1 <= Y;
              W1 <= W;
              D1 <= (X-Xc)^2+(Y-Yc)^2;                                  
    end    
        
    2: begin
              X2 <= X;
              Y2 <= Y;
              W2 <= W;
              D2 <= (X-Xc)^2+(Y-Yc)^2;              
    end 
    
    3: begin
              X3 <= X;
              Y3 <= Y;
              W3 <= W;
              D3 <= (X-Xc)^2+(Y-Yc)^2;       
    end     
    
    4: begin
              X4 <= X;
              Y4 <= Y;
              W4 <= W;
              D4 <= (X-Xc)^2+(Y-Yc)^2;
    end
    
    5: begin
              X5 <= X;
              Y5 <= Y;
              W5 <= W;
              D5 <= (X-Xc)^2+(Y-Yc)^2;
    end
    
  endcase 
end

/*if (sumxw % sumw <= 2) begin
  Xc <= Xc +1;
end
if (sumyw % sumw <= 2) begin
  Yc <= Yc +1;
end
*/

  
else if (counter > 6) begin
  D6 <= (X-Xc)^2+(Y-Yc)^2;
  case (D6)
    (D6 < D0): begin
      D0 <= D6;
      D1 <= D0;
      D2 <= D1;
      D3 <= D2;
      D4 <= D3;
      D5 <= D4;
    end
  
    (D6 < D1): begin
      D1 <= D6;
      D2 <= D1;
      D3 <= D2;
      D4 <= D3;
      D5 <= D4;
    end
  
    (D6 < D2): begin
      D2 <= D6;
      D3 <= D2;
      D4 <= D3;
      D5 <= D4;
    end
    (D6 < D2): begin
      D2 <= D6;
      D3 <= D2;
      D4 <= D3;
      D5 <= D4;
    end
  
    (D6 < D3): begin
      D3 <= D6;
      D4 <= D3;
      D5 <= D4;
    end
  
    (D6 < D4): begin
      D4 <= D6;
      D5 <= D4;
    end
  
    (D6 < D4): begin
      D5 <= D6;
    end
  endcase
    
end
 
end

endmodule 
