module lab1(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oRESULT);
input iCLK, iRST_N, iSEL;
input iA0, iA1, iB0, iB1;
output oRESULT;

wire iCLK, iRST_N;
wire [7:0] iA0, iA1, iB0, iB1;
reg [16:0] oRESULT;

always @ (posedge iCLK) begin
  if(iRST_N)begin
    if(iSEL) begin
        oRESULT <= iA0 * iB0 + iA1 * iB1;
    end
    else begin
        oRESULT <= iA0 * iB0 + iA1 * iB1 + iA0 * iA1 * iB0 * iB1;
    end
  end
  else begin
    oRESULT <= 0;
  end
end

endmodule