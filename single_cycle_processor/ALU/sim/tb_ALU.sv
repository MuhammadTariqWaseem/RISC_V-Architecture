module tb_ALU ();

logic [31:0] A      = 0;
logic [31:0] B      = 0;
logic [ 2:0] ALUOp  = 0;
logic [ 2:0] funct3 = 0;
logic [31:0] Result    ;
logic        zero      ;

ALU ALU (
	.A     (A     ),
	.B     (B     ),
	.ALUOp (ALUOp ),
	.funct3(funct3),
	.Result(Result),
	.zero  (zero  )
);

always #5   ALUOp[0]  <= ~ALUOp[0] ;
always #10  funct3[0] <= ~funct3[0];
always #20  funct3[1] <= ~funct3[1];
always #40  funct3[2] <= ~funct3[2];
always #80  ALUOp[1]  <= ~ALUOp[1] ;
always #160 ALUOp[2]  <= ~ALUOp[2] ;

initial begin
	A = $urandom_range(100000000,0);
	B = $urandom_range(100000000,0);
	#320;
	$stop;
end

endmodule