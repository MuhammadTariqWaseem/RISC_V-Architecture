module controller (
  input  logic [6:0] op        ,
  input  logic [2:0] funct3    ,
  input  logic       funct7b5  ,
  input  logic       SS2       ,
  input  logic       funct7b1  ,
  output logic       MemWrite  ,
  output logic       Branch    ,
  output logic       ALUSrc    ,
  output logic       RegWrite  ,
  output logic       Jump      ,
  output logic [2:0] ALUControl,
  output logic [1:0] ResultSrc ,
  output logic [1:0] ImmSrc
);

  logic [1:0] ALUOp      ;
  logic [1:0] ResultSrc1 ;
  logic [1:0] ImmSrc1    ;
  logic       MemWrite1  ;
  logic       Branch1    ;
  logic       ALUSrc1    ;
  logic       RegWrite1  ;
  logic       Jump1      ;
  logic [2:0] ALUControl1;

  opdecoder opdecoder (
    .op       (op        ),
    .ResultSrc(ResultSrc1),
    .ImmSrc   (ImmSrc1   ),
    .ALUOp    (ALUOp     ),
    .MemWrite (MemWrite1 ),
    .Branch   (Branch1   ),
    .ALUSrc   (ALUSrc1   ),
    .RegWrite (RegWrite1 ),
    .Jump     (Jump1     )
  );

  ALUdecoder ALUdecoder (
    .funct7b5  (funct7b5   ),
    .opb5      (op[5]      ),
    .funct3    (funct3     ),
    .ALUOp     (ALUOp      ),
    .funct7b1  (funct7b1   ),
    .ALUControl(ALUControl1)
  );

  assign {ResultSrc, ImmSrc, MemWrite, Branch, ALUSrc, RegWrite, Jump, ALUControl} = (SS2)?
          ({ResultSrc1, ImmSrc1, MemWrite1, Branch1, ALUSrc1, RegWrite1, Jump1, ALUControl1}) : (12'h000);

endmodule