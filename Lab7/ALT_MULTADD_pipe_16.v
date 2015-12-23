module ALT_MULTADD_pipe(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oR);
input iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1;
output oR;

wire iCLK, iRST_N, iSEL;
wire [7:0] iA0, iA1, iB0, iB1;
reg SEL, SEL1;
reg [7:0] A0, A1, B0, B1, M0, M1;
reg [16:0] oR;

always @ (posedge iCLK)begin

A0 <= iA0;
A1 <= iA1;
B0 <= iB0;
B1 <= iB1;
M0 <= A0 * B0;
M1 <= A1 * B1;
SEL1 <= iSEL;
SEL <= SEL1;

  if(iRST_N)begin
  if(SEL) begin
    oR <= M0 + M1;
  end
  else begin
    oR <= M0 + M1 + M0 * M1;    
  end
  end
  else begin
    oR <= 0;
  end
end

endmodule
