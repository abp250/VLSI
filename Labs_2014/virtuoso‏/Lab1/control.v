// Translate op-code into control signals

module control (
   input[5:0] opcode,         // instruction opcode
   output alusrc,             // rt or immediate value?
   output[1:0] aluop,         // ALU opcode
   output branch,             // branch inst?
   output memread,            // read memory?
   output memwrite,           // write memory?
   output regwrite,           // write register?
   output regdst,             // which register to write?
   output memtoreg);          // rt or rd?

   /* ROM implementation: storage and initialization */
   reg[8:0] control_rom[0:63];
   initial $readmemb ("control.mif", control_rom);
   
   /* rom output format: alusrc, aluop1, aluop0, branch, memread, memwrite,
      regwrite, regdst, memtoreg */
   wire[8:0] control = control_rom[opcode];
   assign alusrc = control[8];
   assign aluop[1] = control[7];
   assign aluop[0] = control[6];
   assign branch = control[5];
   assign memread = control[4];
   assign memwrite = control[3];
   assign regwrite = control[2];
   assign regdst = control[1];
   assign memtoreg = control[0];
endmodule
