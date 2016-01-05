`timescale 10ns/1ps
module MM (CLK,RESET,X, Y, W, READY, Xc, Yc);
// I/OS
input CLK, RESET;
input [7:0] X;
input [7:0] Y;
input [3:0] W;
output [7:0] Xc, Yc;
output READY;

reg [7:0] x [0:5];
reg [7:0] y [0:5];
reg [3:0] w [0:5];
reg [2:0] i;

wire [16:0] d [0:5];
wire [7:0] dx, dy;
wire [7:0] xx [0:5];
wire [7:0] yy [0:5];
wire [3:0] ww [0:5];
wire [16:0] dd [0:5];
wire [14:0] SUMXW, SUMYW;
wire [6:0] SUMW;
wire [7:0] xc, yc;
wire [2:0] I0, I1, I2, I3, I;

assign xx[0] = x[0], xx[1] = x[1], xx[2] = x[2], xx[3] = x[3], xx[4] = x[4], xx[5] = x[5];
assign yy[0] = y[0], yy[1] = y[1], yy[2] = y[2], yy[3] = y[3], yy[4] = y[4], yy[5] = y[5];
assign ww[0] = w[0], ww[1] = w[1], ww[2] = y[2], ww[3] = w[3], ww[4] = w[4], ww[5] = w[5];
assign dd[0] = d[0], dd[1] = d[1], dd[2] = d[2], dd[3] = d[3], dd[4] = d[4], dd[5] = d[5]; 


assign SUMXW = x[0]*w[0] + x[1]*w[1] + x[2]*w[2] + x[3]*w[3] + x[4]*w[4] + x[5]*w[5];
assign SUMYW = y[0]*w[0] + y[1]*w[1] + y[2]*w[2] + y[3]*w[3] + y[4]*w[4] + y[5]*w[5];
assign SUMW = w[0] + w[1] + w[2] + w[3] + w[4] + w[5];



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
  
  else if (W != 0)begin   
    if (i < 6) begin
      x[i] <= X;
      y[i] <= Y;
      w[i] <= W;
      i <= i +1;         
    end
    else begin
      x[I] <= X;
      y[I] <= Y;
      w[I] <= W;
    end
  end
end

Distance distance0(x[0], y[0], xc, yc, d[0]);
Distance distance1(x[1], y[1], xc, yc, d[1]);
Distance distance2(x[2], y[2], xc, yc, d[2]);
Distance distance3(x[3], y[3], xc, yc, d[3]);
Distance distance4(x[4], y[4], xc, yc, d[4]);
Distance distance5(x[5], y[5], xc, yc, d[5]);


Comparator compare01(xx[0], yy[0], ww[0], dd[0], 3'b000, xx[1], yy[1], ww[1], dd[1], 3'b001, I0);
Comparator Compare23(xx[2], yy[2], ww[2], dd[2], 3'b010, xx[3], yy[3], ww[3], dd[3], 3'b011, I1);
Comparator Compare45(xx[4], yy[4], ww[4], dd[4], 3'b100, xx[5], yy[5], ww[5], dd[5], 3'b101, I2);
Comparator Compare0123(xx[I0], yy[I0], ww[I0], dd[I0], I0, xx[I1], yy[I1], ww[I1], dd[I1], I1, I3);
Comparator CompareAll(xx[I2], yy[I2], ww[I2], dd[I2], I2, xx[I3], yy[I3], ww[I3], dd[I3], I3, I);


Center centerx(CLK, RESET, SUMXW, SUMW, xc);
Center centery(CLK, RESET, SUMYW, SUMW, yc);

assign Xc = xc;
assign Yc = yc;

endmodule

