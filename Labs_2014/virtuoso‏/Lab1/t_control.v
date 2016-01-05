module t_control ();  
   reg[5:0] opcode;          // instruction opcode
   wire regdst;              // which register to write?
   wire[1:0] aluop;          // ALU opcode
   wire alusrc;              // immediate used as an ALU input?
   wire branch;              // branch inst?
   wire memread;             // read memory?
   wire memwrite;            // write memory?
   wire regwrite;            // write register?
   wire memtoreg;            // write value from memory? 
	
	/* the control unit instance */
   control M1 (opcode, alusrc, aluop, branch, 
      memread, memwrite, regwrite, regdst, memtoreg);

   /* output header */
	initial $display ("Test control");
	initial $display ("%10s %10s %10s %10s %10s %10s %10s %10s %10s",
      "opcode", "alusrc", "aluop", "branch", "memread", 
      "memwrite", "regwrite", "regdst", "memtoreg");
   initial $monitor ("%10b %10b %10b %10b %10b %10b %10b %10b %10b",
      opcode, alusrc, aluop, branch, memread, memwrite, 
      regwrite, regdst, memtoreg);

	/* test inputs */
	initial fork
		#0 opcode = 6'b000000;      // opcode for R-type
		#2 opcode = 6'b100011;      // opcode for LW
		#3 opcode = 6'b101011;      // opcode for SW
		#4 opcode = 6'b000100;      // opcode for BEQ
	join
	
	initial #5 $stop;
endmodule
