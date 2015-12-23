`timescale 100ns/1ns
module ALT_MULTADD_9(iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1, oRESULT);
input iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1;
output oRESULT;

wire iCLK, iRST_N, iSEL;
wire [7:0] iA0, iA1, iB0, iB1;
reg SEL1, SEL2, SEL3, EN, EN_1, EN_2, EN_3;
reg [7:0] A0, A1, B0, B1, A01, B01, A, B;
reg [16:0] oR, AB, oRESULT, AB1_FF, AB0_FF;
reg go, no, no_FF, go_FF;

always @ (posedge iCLK)begin
if(~iRST_N)begin
  
  A0 <= 0;
  B0 <= 0;
  A1 <= 0;
  B1 <= 0;
  A01 <= 0;
  B01 <= 0;
  
  SEL1 <= 0;
  SEL2 <= 0;
  SEL3 <= 0;
  
  EN = 0;
  EN_1 <= 0;
  EN_2 <= 0;
  EN_3 <= 0;
  
  AB = 0;
  AB1_FF <= 0;
  AB0_FF <= 0;
  
  go_FF <= 0;
  no_FF <= 0;
  go = 0;
  no = 0;
  
  oR = 0;
  oRESULT <= 0;
end
else begin
  //Input registers
  A0 <= iA0;
  B0 <= iB0;
  A1 <= iA1;
  B1 <= iB1;
  A01 <= A0;
  B01 <= B0;
  
  //Multiplied signal registers
  AB1_FF <= AB;
  AB0_FF <= AB1_FF; 
  
  //Select signal registers
  SEL1 <= iSEL;
  SEL2 <= SEL1;
  SEL3 <= SEL2;
  
  //enable(multiplexer select) signal registers
  EN_1 <= EN;
  EN_2 <= EN_1;
  EN_3 <= EN_2;
  
  //control logic stuff
  go_FF <= go;
  no_FF <= no;
  
  if(EN_3) begin
    oRESULT <= oR; //clock gate
  end
  //output register
  
end
end

//Select Control Logic
always@ (go_FF or EN_1 or no_FF)  begin  //
  if(go_FF ^ no_FF) begin   //whenever no_FF and go_FF are different, that means there is a new input.
    EN = 1;
    no = ~no_FF;
  end
  if(EN_1)begin
    EN = 0;
  end
end


// part of control logic
always @ (iA0 or iB0 or iA1 or iB1 or iSEL) begin
    go = ~go_FF;
end

//first stage of logic (multiplier)
always@ (EN_2 or A01 or B01 or A1 or B1)  begin  //
    if(EN_2)begin  // this is the “multiplexer” for the multiplier
      A = A01;
      B = B01;
    end
    else begin
      A = A1;
      B = B1;
    end
    AB = A * B;
end
 
  
// final stage of logic
always@ (A01 or B01 or A1 or B1 or AB1_FF or AB0_FF)  begin  // 
      if(SEL3) begin   // this is the “multiplexer” 1 input of interest.
        oR = AB0_FF + AB1_FF;
      end
    else begin   // this is the “multiplexer” 0 input of interest.
        oR = AB0_FF + AB1_FF + AB0_FF * AB1_FF;   
      end
    end
endmodule
