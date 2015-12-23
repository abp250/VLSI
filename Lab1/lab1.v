
module lab1(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oR);
input iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1;
output oR;

wire iCLK, iRST_N;
wire [7:0] iA0, iA1, iB0, iB1;
//wire [16:0] oRA, oRB;
reg [7:0] A0, A1, B0, B1;
reg [16:0] oR, oRA, oRB;



always @ (posedge iCLK)begin
A0 <= iA0;
A1 <= iA1;
B0 <= iB0;
B1 <= iB1;

  if(iRST_N)begin
  if(iSEL) begin
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