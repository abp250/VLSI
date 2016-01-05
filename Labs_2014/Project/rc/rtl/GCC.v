`timescale 10ns/1ps
module GCC (CLK,RESET,X, Y, W, READY, Xc, Yc);
// I/OS
input CLK, RESET;
input [7:0] X;
input [7:0] Y;
input [3:0] W;
output [7:0] Xc, Yc;
output READY;


// REGISTERS
reg [2:0] i;
reg [7:0] x [0:5];
reg [7:0] y [0:5];
reg [3:0] w [0:5];
wire [16:0] d [0:5]; // 2*255*255
reg [2:0] j [0:5];


// WIRES
wire [14:0] SUMXW, SUMYW;
wire [6:0] SUMW;
wire [7:0] dx [0:5];
wire [7:0] dy [0:5];
wire [7:0] xc, yc;
wire [7:0] xx [0:5];
wire [7:0] yy [0:5];
wire [3:0] ww [0:5];
wire [16:0] dd [0:5];
wire [2:0] I0, I1, I2, I3, I4;


//ASSIGN INPUTS
assign xx[0] = x[0], xx[1] = x[1], xx[2] = x[2], xx[3] = x[3], xx[4] = x[4], xx[5] = x[5];
assign yy[0] = y[0], yy[1] = y[1], yy[2] = y[2], yy[3] = y[3], yy[4] = y[4], yy[5] = y[5];
assign ww[0] = w[0], ww[1] = w[1], ww[2] = y[2], ww[3] = w[3], ww[4] = w[4], ww[5] = w[5];
assign dd[0] = d[0], dd[1] = d[1], dd[2] = d[2], dd[3] = d[3], dd[4] = d[4], dd[5] = d[5]; 


// CHANGE IN DISTANCE FROM CENTER OF MASS
assign dx[0] = (x[0] > Xc)? (x[0]-Xc):(Xc-x[0]);
assign dy[0] = (y[0] > Yc)? (y[0]-Yc):(Yc-y[0]);

assign dx[1] = (x[1] > Xc)? (x[1]-Xc):(Xc-x[1]);
assign dy[1] = (y[1] > Yc)? (y[1]-Yc):(Yc-y[1]);
assign dx[2] = (x[2] > Xc)? (x[2]-Xc):(Xc-x[2]);
assign dy[2] = (y[2] > Yc)? (y[2]-Yc):(Yc-y[2]);
assign dx[3] = (x[3] > Xc)? (x[3]-Xc):(Xc-x[3]);
assign dy[3] = (y[3] > Yc)? (y[3]-Yc):(Yc-y[3]);
assign dx[4] = (x[4] > Xc)? (x[4]-Xc):(Xc-x[4]);
assign dy[4] = (y[4] > Yc)? (y[4]-Yc):(Yc-y[4]);
assign dx[5] = (x[5] > Xc)? (x[5]-Xc):(Xc-x[5]);
assign dy[5] = (y[5] > Yc)? (y[5]-Yc):(Yc-y[5]);

assign d[0] = dx[0]*dx[0] + dy[0]*dy[0];
assign d[1] = dx[1]*dx[1] + dy[1]*dy[1];
assign d[2] = dx[2]*dx[2] + dy[2]*dy[2];
assign d[3] = dx[3]*dx[3] + dy[3]*dy[3];
assign d[4] = dx[4]*dx[4] + dy[4]*dy[4];
assign d[5] = dx[5]*dx[5] + dy[5]*dy[5];



// SUMMATION OF POINTS
assign SUMXW = x[0]*w[0] + x[1]*w[1] + x[2]*w[2] + x[3]*w[3] + x[4]*w[4] + x[5]*w[5];
assign SUMYW = y[0]*w[0] + y[1]*w[1] + y[2]*w[2] + y[3]*w[3] + y[4]*w[4] + y[5]*w[5];
assign SUMW = w[0] + w[1] + w[2] + w[3] + w[4] + w[5];


// OUTPUTS
//assign Xc = xcc;
//assign Yc = ycc;

always @ (posedge CLK) begin
  if (RESET == 0) begin
    x[0] <= 0;  y[0] <= 0; w[0] <= 0;
    x[1] <= 0;  y[1] <= 0; w[1] <= 0;
    x[2] <= 0;  y[2] <= 0; w[2] <= 0;
    x[3] <= 0;  y[3] <= 0; w[3] <= 0;
    x[4] <= 0;  y[4] <= 0; w[4] <= 0;
    x[5] <= 0;  y[5] <= 0; w[5] <= 0;
    i <= 0;    
  end
  
    
  if (RESET == 1) begin
    
    if (i <= 5) begin      
      if ((X != x[i] || Y != y[i] || W != w[i]) && (W != 0)) begin
        x[i] <= X;
        y[i] <= Y;
        w[i] <= W;

        
//        if (i == 0) begin
//          dx <= X;
//         dy <= Y;
//          d[i] <= dx*dx+dy*dy;
//        end // end if (i == 0)
        
//        else if (i>=1) begin
//          dx <= (X > Xc)? (X-Xc):(Xc-X);
//          dy <= (Y > Yc)? (Y-Yc):(Yc-Y);
//          d[i] <= dx*dx+dy*dy;
//        end

        i <= i+1;
      end   
   
    end // end first 6 points
    
    else begin //if ((w[5] != 0) && (W != 0)) begin // new point comparison
      x[I4] <= X;
      y[I4] <= Y;
      w[I4] <= W;
 //     dx <= (X > Xc)? (X-Xc):(Xc-X);
 //     dy <= (Y > Yc)? (Y-Yc):(Yc-Y);
 //     d[I4] <= dx*dx+dy*dy;
    end  
    
  end
  
end


Comparator compare01(xx[0], yy[0], ww[0], dd[0], 3'b000, xx[1], yy[1], ww[1], dd[1], 3'b001, I0);
Comparator Compare23(xx[2], yy[2], ww[2], dd[2], 3'b010, xx[3], yy[3], ww[3], dd[3], 3'b011, I1);
Comparator Compare45(xx[4], yy[4], ww[4], dd[4], 3'b100, xx[5], yy[5], ww[5], dd[5], 3'b101, I2);

Comparator Compare0123(xx[I0], yy[I0], ww[I0], dd[I0], I0, xx[I1], yy[I1], ww[I1], dd[I1], I1, I3);
Comparator CompareAll(xx[I2], yy[I2], ww[I2], dd[I2], I2, xx[I3], yy[I3], ww[I3], dd[I3], I3, I4);

            
Center centerx(.clk(CLK), .RESET(RESET), .sum(SUMXW), .sumw(SUMW), .C(xc));
Center centery(.clk(CLK), .RESET(RESET), .sum(SUMYW), .sumw(SUMW), .C(yc));
endmodule

