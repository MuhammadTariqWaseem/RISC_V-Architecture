module tb_extend ();

	logic [31:7] instr  = 0;
	logic [ 1:0] immsrc = 0;
	logic [31:0] immext    ;
	
	extend extend (
		.instr (instr ),
		.immsrc(immsrc),
		.immext(immext)
	);
  
  always #5  immsrc[0] <= ~immsrc[0];
  always #10 immsrc[1] <= ~immsrc[1];

initial begin
	for (int i = 0; i < 4; i++) begin
		instr = $urandom_range(100000,0);
		#5;
	end
	$stop;
end

endmodule