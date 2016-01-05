`timescale 10ns/1ps

module EE465L1_tb();
	reg iCLK, iRST_N, iSEL;
	reg [7:0] iA0;
	reg [7:0] iA1;
	reg [7:0] iB0;
	reg [7:0] iB1;
	wire [16:0] oRESULT;

EE465L1 test(.iCLK(iCLK), .iRST_N(iRST_N), .iSEL(iSEL), .iA0(iA0),
		.iA1(iA1), .iB0(iB0), .iB1(iB1), .oRESULT(oRESULT));
initial begin
	iRST_N =0;
	iSEL =0;
	iCLK =0;
	iA0 =0;
	iA1 =0;
	iB0 =0;
	iB1 =0;


	#10 iA0=100;
	#10 iA1=50;
	#10 iB0=10;
	#10 iB1=20;

	#50 iSEL=1;
	
	#50 iA0=0;
	#10 iA1=10;
	#10 iB0=0;
	#10 iB1=10;

	#100 iSEL=0;

	#10 iA0=10;
	#10 iA1=5;
	#10 iB0=1;
	#10 iB1=2;

	#50 iSEL=1;


end
always #1 iCLK = ~ iCLK;		

endmodule


