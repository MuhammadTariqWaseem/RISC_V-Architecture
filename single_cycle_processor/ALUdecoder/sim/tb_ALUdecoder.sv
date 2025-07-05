module tb_ALUdecoder ();

	logic       funct7b5   = 0;
	logic       opb5       = 0;
	logic [2:0] funct3     = 0;
	logic [1:0] ALUOp      = 0;
	logic       funct7b1   = 0;
	logic [2:0] ALUControl    ;

	ALUdecoder i_ALUdecoder (
		.funct7b5  (funct7b5  ),
		.opb5      (opb5      ),
		.funct3    (funct3    ),
		.ALUOp     (ALUOp     ),
		.funct7b1  (funct7b1  ),
		.ALUControl(ALUControl)
	);

	always #5    funct7b5  <= ~funct7b5 ;
	always #10   funct7b1  <= ~funct7b1 ;
	always #20   opb5      <= ~opb5     ;
	always #40   funct3[0] <= ~funct3[0];
	always #80   funct3[1] <= ~funct3[1];
	always #160  funct3[2] <= ~funct3[2];
	always #320  ALUOp[0]  <= ~ALUOp[0] ;
	always #640  ALUOp[1]  <= ~ALUOp[1] ;

	initial begin
		#1280;
		$stop;
	end

endmodule