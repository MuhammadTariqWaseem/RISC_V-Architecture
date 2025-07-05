module ALU (
  input  logic [31:0] A        ,
  input  logic [31:0] B        , // ALU 32-bit inputs
  input  logic [ 2:0] ALUOp    , // ALU operation selector
  input  logic [ 2:0] funct3   ,
  output logic [31:0] ALUResult, // ALU 32-bit output
  output logic        zero       // zero flag
);

  always@(*) begin 
    case (ALUOp)
      3'b000  : begin
                  ALUResult = A + B;
                  zero      = 0    ;
                end
      3'b001  : begin
                  ALUResult = A - B;
                  if      (funct3 == 000) zero = (ALUResult == 32'b0) ? 1'b1 : 1'b0   ;
                  else if (funct3 == 001) zero = (ALUResult == 32'b0) ? 1'b0 : 1'b1   ;
                  else if (funct3 == 101) zero = (ALUResult[31] == 1'b1) ? 1'b0 : 1'b1;
                  else zero = 1'b0;
                end
      3'b101  : begin
                  ALUResult = (A < B) ? 32'b1 : 32'b0;
                  zero      = 0    ;
                end
      3'b011  : begin
                  ALUResult = A | B;
                  zero      = 0    ;
                end
      3'b010  : begin
                  ALUResult = A & B;
                  zero      = 0    ;
                end
      default : begin
                  ALUResult = 32'b0;
                  zero      = 0    ;
                end
    endcase
  end

endmodule
