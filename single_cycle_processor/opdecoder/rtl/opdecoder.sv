module opdecoder (
  input  logic [6:0] op       ,
  output logic [1:0] ResultSrc,
  output logic [1:0] ImmSrc   ,
  output logic [1:0] ALUOp    ,
  output logic       MemWrite ,
  output logic       Branch   ,
  output logic       ALUSrc   ,
  output logic       RegWrite ,
  output logic       Jump
);

  logic [10:0] controls;

  assign {RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, Branch, ALUOp, Jump} = controls;
  always@(*)
    case(op)
      7'b0000011 : controls = 11'b1_00_1_0_01_0_00_0;
      7'b0100011 : controls = 11'b0_01_1_1_00_0_00_0;
      7'b0110011 : controls = 11'b1_00_0_0_00_0_10_0;
      7'b1100011 : controls = 11'b0_10_0_0_00_1_01_0;
      7'b0010011 : controls = 11'b1_00_1_0_00_0_10_0;
      7'b1101111 : controls = 11'b1_11_1_0_10_0_00_1;
      //7'b0110011 : controls = 11'b1_00_0_1_11_0_11_0;
      default    : controls = 11'b0_00_0_0_00_0_00_0;
    endcase
endmodule