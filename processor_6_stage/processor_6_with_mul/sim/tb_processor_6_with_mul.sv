`timescale 1ns/1ps
module tb_processor_6_with_mul ();

	logic clk   = 0;
	logic reset = 1;
    logic MemWriteX;
    logic [31:0] ALUResultX;
    logic [31:0] RD2X;
	
	processor_6_with_mul processor_6_with_mul (
		.clk       (clk       ),
		.reset     (reset     ),
		.ALUResultX(ALUResultX),
		.RD2X      (RD2X      ),
		.MemWriteX (MemWriteX )
	);

	always #5 clk <= ~clk;

initial begin
	repeat(20) @(posedge clk);
	reset = 0;
	repeat(30000000) @(posedge clk);
	$stop;
end

endmodule