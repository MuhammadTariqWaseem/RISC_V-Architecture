module hazardUnit_up (
	input  logic [4:0] WriteAddX ,
	input  logic [4:0] WriteAddM ,
	input  logic [4:0] rs1E      ,
	input  logic [4:0] rs2E      ,
	input  logic       ResultSrcX,
	input  logic       ResultSrcM,
	input  logic       RegWriteX ,
	input  logic       PCSrc     ,
	output logic       FF        ,
	output logic       FD        ,
	output logic       FE        ,
	output logic       STF       ,
  output logic       STD       ,
  output logic       STE       	
);

	always@(*) begin
		if ( ((WriteAddM == rs1E) | (WriteAddM == rs2E)) & ResultSrcM & (WriteAddM != 5'd0))
			FE = 1'b0;
		else if( ((WriteAddX == rs1E) | (WriteAddX == rs2E)) & (ResultSrcX | RegWriteX) & (WriteAddX != 5'd0))
			FE = 1'b0;
		else if (PCSrc)
			FE = 1'b0;
		else
			FE = 1'b1;
	end

	always@(*) begin
		if(((WriteAddX == rs1E) | (WriteAddX == rs2E)) & ResultSrcX & (WriteAddX != 5'd0))
			FD = 1'b0;
		else if (PCSrc)
			FD = 1'b0;
		else
			FD = 1'b1;
	end

	always@(*) begin
		if(PCSrc)
			FF = 1'b0;
		else
			FF = 1'b1;
	end

	always@(*) begin
		if ( ((WriteAddM == rs1E) | (WriteAddM == rs2E)) & ResultSrcM & (WriteAddM != 5'd0))
			{STF,STD,STE} = 3'b111;
		else if(((WriteAddX == rs1E) | (WriteAddX == rs2E)) & ResultSrcX & (WriteAddX != 5'd0))
			{STF,STD,STE} = 3'b111;
		else if(((WriteAddX == rs1E) | (WriteAddX == rs2E)) & RegWriteX & (WriteAddX != 5'd0))
			{STF,STD,STE} = 3'b111;
		else
			{STF,STD,STE} = 3'b000;
	end
endmodule
