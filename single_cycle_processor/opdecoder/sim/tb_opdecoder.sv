module tb_opdecoder ();

	logic [6:0] op       ;
	logic [1:0] ResultSrc;
	logic [1:0] ImmSrc   ;
	logic [1:0] ALUOp    ;
	logic       MemWrite ;
	logic       Branch   ;
	logic       ALUSrc   ;
	logic       RegWrite ;
	logic       Jump     ;

	opdecoder i_opdecoder (
		.op       (op       ),
		.ResultSrc(ResultSrc),
		.ImmSrc   (ImmSrc   ),
		.ALUOp    (ALUOp    ),
		.MemWrite (MemWrite ),
		.Branch   (Branch   ),
		.ALUSrc   (ALUSrc   ),
		.RegWrite (RegWrite ),
		.Jump     (Jump     )
	);

	initial begin
		    op = 7'b0000011;
		#20 op = 7'b0100011;
		#20 op = 7'b0110011;
		#20 op = 7'b1100011;
		#20 op = 7'b0010011;
		#20 op = 7'b1101111;
		#20 op = 7'b0110011;
		#20;
		$stop;
	end
endmodule