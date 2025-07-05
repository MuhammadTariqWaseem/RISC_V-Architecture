module m_u_x #(
	parameter WIDTH   = 2,
	parameter SEL_BIT = 2
) (
	input  logic [2**SEL_BIT*WIDTH-1:0] inputs, // Concatenated inputs
	input  logic [         SEL_BIT-1:0] sel   , // Selection signal
	output logic [           WIDTH-1:0] out     // Output
);

assign out = inputs[sel * WIDTH +: WIDTH];

endmodule 