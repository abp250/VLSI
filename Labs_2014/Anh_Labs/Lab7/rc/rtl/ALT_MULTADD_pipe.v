module ALT_MULTADD_pipe(iCLK, iRST_N, iSEL,  iA0, iA1, iB0, iB1, oRESULT);
input iCLK, iRST_N, iSEL;
input [7:0] iA0, iA1, iB0, iB1;
output reg [16:0] oRESULT;
reg  [7:0] A0, B0, A1, B1;
reg SEL,sel;
wire [16:0] re, AB0, AB1, AB01m, AB01p;
reg [16:0] AB01M, AB01P;

assign AB0= A0 * B0;
assign AB1= A1 * B1;
assign AB01m= AB0 * AB1;
assign AB01p= AB0 + AB1;

always @ (posedge iCLK or negedge iRST_N) 
	if (iRST_N ==0)
	begin
	A0<=8'h0;
	A1<=8'h0;
	B0<=8'h0;
	B1<=8'h0;
	oRESULT<=17'h0;
	end
	else if (iRST_N ==1)
	begin
	sel<=SEL;
	AB01M<=AB01m;
	AB01P<=AB01p;
	A0<=iA0;
	A1<=iA1;
	B0<=iB0;
	B1<=iB1;
	SEL<=iSEL;
	oRESULT<=re;
	
	end

assign re=sel?(AB01P):(AB01P+AB01M);

endmodule

