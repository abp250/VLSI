module lab1(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oRESULT);
input iCLK, iRST_N, iSEL;
input iA0, iA1, iB0, iB1;
output oRESULT;

wire iCLK, iRST_N;
wire [7:0] iA0, iA1, iB0, iB1, A, B, C;
reg [16:0] oRESULT;

always @ (posedge iCLK) begin
  if(iRST_N)begin

	A=iA0 * iB0;
	B=iA1 * iB1;
	C=A*B;
    if(iSEL) begin
        oRESULT <= A+B;
    end
    else begin
        oRESULT <= A+B+C;
    end
  end
  else begin
    	oRESULT <= 0;
  end
end

endmodule
