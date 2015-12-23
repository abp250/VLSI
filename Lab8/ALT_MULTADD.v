module ALT_MULTADD_re(iCLK, iRST_N, iSEL, iSEL2,  iA0, iA1, iB0, iB1, oR);
input iCLK, iRST_N, iSEL, iSEL2, iA0, iA1, iB0, iB1;
output oR;

wire iCLK, iRST_N, iSEL, iSEL2;
wire [7:0] iA0, iA1, iB0, iB1;
reg SEL1, SEL2, sel_tmp;
reg [7:0] A0, A1, B0, B1, A01, B01, AxB;
reg [16:0] oR;

always @ (posedge iCLK or negedge iRST_N)begin
A0 <= iA0;
B0 <= iB0;

A1 <= iA1;
B1 <= iB1;
A01 <= A0;
B01 <= B0;
SEL1 <= iSEL;
SEL2 <= SEL1;
sel_tmp <= iSEL2;

  if(iRST_N)begin
    if(~sel_tmp)begin
      AxB <= A01 * B01;
    end
    else begin
      AxB <= A1 * B1;
    end
    
    if(SEL2) begin
      oR <= AxB + A1 * B1;
    end
    else begin
      oR <= AxB + A1 * B1 + AxB * A1 * B1;   
    end
  end
  else begin
    sel_tmp <= 0;
    oR <= 0;
  end
end


endmodule
