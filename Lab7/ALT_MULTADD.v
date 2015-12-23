module ALT_MULTADD(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oR);
input iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1;
output oR;

wire iCLK, iRST_N, iSEL;
wire [7:0] iA0, iA1, iB0, iB1;
reg SEL;
reg [7:0] A0, A1, B0, B1;
reg [16:0] oR;

always @ (posedge iCLK, negedge iRST_N)begin

A0 <= iA0;
A1 <= iA1;
B0 <= iB0;
B1 <= iB1;
SEL <= iSEL;
  if(iRST_N)begin
    if(SEL) begin
      oR <= A0 * B0 + A1 * B1;
    end
    else begin
      oR <= A0 * B0 + A1 * B1 + A0 * A1 * B0 * B1;   
    end
  end
  else begin
    oR <= 0;
  end
end

endmodule
