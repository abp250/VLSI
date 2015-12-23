
module ALT_MULTADD (
  input         iCLK,
  input         iRST_N,
  input  [7:0]  iA0,
  input  [7:0]  iB0,
  input  [7:0]  iA1,
  input  [7:0]  iB1,
  output [16:0] oRESULT,
);

reg [7:0] a0;
reg [7:0] a1;
reg [7:0] b0;
reg [7:0] b1;
reg [16:0] result;

assign oRESULT = result;

always@(posedge iCLK, negedge iRST_N) begin
  if (!iRST_N) begin
    a0     <= 0;
    a1     <= 0;
    b0     <= 0;
    b1     <= 0;
    result <= 0;
  end
  else begin
    a0     <= iA0;
    a1     <= iA1;
    b0     <= iB0;
    b1     <= iB1;
    
    result <= a0 * b0 + a1 * b1;
  end    
end

endmodule