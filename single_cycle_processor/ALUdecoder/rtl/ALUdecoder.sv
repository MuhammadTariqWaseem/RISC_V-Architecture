module ALUdecoder (
  input  logic       funct7b5  ,
  input  logic       opb5      ,
  input  logic [2:0] funct3    ,
  input  logic [1:0] ALUOp     ,
  input  logic       funct7b1  ,
  output logic [2:0] ALUControl
);

  logic RtypeSub;

  assign RtypeSub = funct7b5 & opb5;
  always@(*)
    case(ALUOp)
      2'b00 : ALUControl <= 3'b000;
      2'b01 : ALUControl <= 3'b001;
      2'b10 : // if(funct7b1) ALUControl <= 3'b100; // slt, slti
              begin
                case(funct3)
                  3'b000  : if (RtypeSub)
                              ALUControl <= 3'b001;
                            else
                              ALUControl <= 3'b000;
                  3'b010  : ALUControl <= 3'b101; // slt, slti
                  3'b110  : ALUControl <= 3'b011; // or, ori
                  3'b111  : ALUControl <= 3'b010; // and, andi
                  default : ALUControl <= 3'b000; // ???
                endcase
              end
      2'b11 : ALUControl <= 3'b110;
    endcase
endmodule