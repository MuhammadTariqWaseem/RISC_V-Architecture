module adder (
  input  logic [31:0] in1,
  input  logic [31:0] in2,
  output logic [31:0] out
);

  assign out = in1 + in2;

endmodule
 