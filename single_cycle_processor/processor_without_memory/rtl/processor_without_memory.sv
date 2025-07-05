module processor_without_memory (
  input         clk      ,
  input         reset    ,
  input  [31:0] Instr    ,
  input  [31:0] ReadData ,
  output [31:0] PC       ,
  output        MemWrite ,
  output [31:0] ALUResult,
  output [31:0] WriteData,
  output [ 1:0] ResultSrc
);

  logic       ALUSrc    ;
  logic       RegWrite  ;
  logic       Jump      ;
  logic       Zero      ;
  logic       PCSrc     ;
  logic [1:0] ImmSrc    ;
  logic [2:0] ALUControl;
  logic [6:0] op        ;
  logic [2:0] funct3    ;
  logic       funct7b5  ;
  logic       SS2       ;
  logic       funct7b1  ;
  logic       Branch    ;

  controller controller (
    .op        (Instr[6:0]  ),
    .funct3    (Instr[14:12]),
    .funct7b5  (Instr[30]   ),
    .SS2       (1'b1        ),
    .funct7b1  (Instr[25]   ),
    .MemWrite  (MemWrite    ),
    .Branch    (Branch      ),
    .ALUSrc    (ALUSrc      ),
    .RegWrite  (RegWrite    ),
    .Jump      (Jump        ),
    .ALUControl(ALUControl  ),
    .ResultSrc (ResultSrc   ),
    .ImmSrc    (ImmSrc      )
  );

  assign PCSrc = (Branch & Zero) | Jump;

datapath datapath (
  .clk       (clk       ),
  .reset     (reset     ),
  .PCSrc     (PCSrc     ),
  .ALUSrc    (ALUSrc    ),
  .RegWrite  (RegWrite  ),
  .ResultSrc (ResultSrc ), 
  .ImmSrc    (ImmSrc    ),
  .ALUControl(ALUControl),
  .Instr     (Instr     ),
  .ReadData  (ReadData  ),
  .Zero      (Zero      ),
  .PC        (PC        ),
  .ALUResult (ALUResult ),
  .WriteData (WriteData )
);

endmodule