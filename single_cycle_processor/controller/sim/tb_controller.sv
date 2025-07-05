module tb_controller ();

	logic [6:0] op         = 0;
	logic [2:0] funct3     = 0;
	logic       funct7b5   = 0;
	logic       SS2        = 0;
	logic       funct7b1   = 0;
	logic       MemWrite      ;
	logic       Branch        ;
	logic       ALUSrc        ;
	logic       RegWrite      ;
	logic       Jump          ;
	logic [2:0] ALUControl    ;
	logic [1:0] ResultSrc     ;
	logic [1:0] ImmSrc        ;

	controller controller (
		.op        (op        ),
		.funct3    (funct3    ),
		.funct7b5  (funct7b5  ),
		.SS2       (SS2       ),
		.funct7b1  (funct7b1  ),
		.MemWrite  (MemWrite  ),
		.Branch    (Branch    ),
		.ALUSrc    (ALUSrc    ),
		.RegWrite  (RegWrite  ),
		.Jump      (Jump      ),
		.ALUControl(ALUControl),
		.ResultSrc (ResultSrc ),
		.ImmSrc    (ImmSrc    )
	);

always  #70 funct3[0] <= ~funct3[0];
always #140 funct3[1] <= ~funct3[1];
always #210 funct3[2] <= ~funct3[2];
always #420 funct7b5  <= ~funct7b5 ;
always #840 funct7b1  <= ~funct7b1 ;
always #1680     SS2  <= ~SS2      ; 

initial begin
	for (int i = 0; i < 64; i++) begin
	      op = 7'b0000011;
		#10 op = 7'b0100011;
		#10 op = 7'b0110011;
		#10 op = 7'b1100011;
		#10 op = 7'b0010011;
		#10 op = 7'b1101111;
		#10 op = 7'b0110011;
		#10;
	end
	$stop;
end

endmodule 