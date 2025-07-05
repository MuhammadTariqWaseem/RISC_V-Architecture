`timescale 1ns/1ps
module tb_single_cycle_processor ();

	logic        clk       = 0;
	logic        clk1      = 0;
	logic        reset     = 1;
	logic [31:0] DataAdr      ;
	logic [31:0] WriteData    ;
	logic        MemWrite     ;

	single_cycle_processor single_cycle_processor (
		.clk      (clk      ),
		.clk1     (clk1     ),
		.reset    (reset    ),
		.DataAdr  (DataAdr  ),
		.WriteData(WriteData),
		.MemWrite (MemWrite )
	);

  always #5 clk  <= ~clk ;
  always #2.5 clk1 <= ~clk1;

	always @(negedge clk) begin
		if(MemWrite) begin
			if(DataAdr === 100 & WriteData === 25) begin
				$display("Simulation succeeded");
				$stop;
			end else if (DataAdr !== 96) begin
				$display("Simulation failed");
				$stop;
			end
		end
	end

	initial begin
		repeat(4) @(posedge clk);
		reset = 0;
    repeat(23) @(posedge clk);
    $stop;
	end

endmodule