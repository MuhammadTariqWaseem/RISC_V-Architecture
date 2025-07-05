module processor_5_stage (
	input logic clk  ,
	input logic reset
);

	logic [31:0] PCPlus4  ;
	logic [31:0] PCPlus41 ;
	logic [31:0] PCTargetE;
	logic [31:0] PCNext   ;
	logic [31:0] PCNext1  ;
	logic [31:0] PC       ;
	logic [31:0] Instr    ;
	logic [31:0] InstrX   ;
	logic        PCSrc    ;

	logic [31:0] InstrD    ;
	logic [31:0] InstrL    ;
	logic [31:0] InstrK    ;
	logic [31:0] InstrY    ;
	logic [31:0] PCD       ;
	logic [31:0] PCPlus4D  ;
	logic [31:0] WriteDataW;
	logic [31:0] RD1       ;
	logic [31:0] RD2       ;
	logic [31:0] ImmExt    ;
	logic [ 4:0] WriteAddW ;
	logic [ 2:0] ALUControl;
	logic [ 1:0] ResultSrc ;
	logic [ 1:0] ImmSrc    ;
	logic        Branch    ;
	logic        MemWrite  ;
	logic        ALUSrc    ;
	logic        RegWrite  ;
	logic        Jump      ;
	logic        RegWriteW ;
	logic        SS1       ;
	logic        SS2       ;

	logic [31:0] RD1E          ;
	logic [31:0] RD2E          ;
	logic [31:0] PCE           ;
	logic [31:0] ImmExtE       ;
	logic [31:0] PCPlus4E      ;
	logic [31:0] SrcE          ;
	logic [31:0] ALUResultE    ;
	logic [31:0] A32           ;
	logic [31:0] B32           ;
	logic [ 4:0] WriteAddE     ;
	logic [ 4:0] rs1           ;
	logic [ 4:0] rs2           ;
	logic [ 4:0] IS1           ;
	logic [ 4:0] IS2           ;
	logic [ 2:0] ALUControlE   ;
	logic [ 2:0] funct3        ;
	logic [ 1:0] ResultSrcE    ;
	logic [ 1:0] forword_path_A;
	logic [ 1:0] forword_path_B;
	logic        RegWriteE     ;
	logic        MemWriteE     ;
	logic        JumpE         ;
	logic        BranchE       ;
	logic        ALUSrcE       ;
	logic        Zero          ;

	logic [31:0] ALUResultM;
	logic [31:0] RD2M      ;
	logic [31:0] PCPlus4M  ;
	logic [31:0] ReadDataM ;
	logic [ 4:0] WriteAddM ;
	logic [ 1:0] ResultSrcM;
	logic        RegWriteM ;
	logic        MemWriteM ;
	logic        SS11      ;

	logic [31:0] ReadDataW ;
	logic [31:0] ALUResultW;
	logic [31:0] PCPlus4W  ;
	logic [ 1:0] ResultSrcW;

	assign PCNext1 = (reset)? 32'h0 : (PCSrc)? (PCTargetE) : (PCPlus4);

	flip_flop #(
		.WIDTH(32)
		) flipflop_0 (
		.clk  (clk    ),
		.reset(reset  ),
		.ST   (1'b0   ),
		.d    (PCNext1),
		.q    (PC     )
	);

// ---------------------------------------------------------------------------------------------------------------
// -------------------------------- FETCHING THE INSTRUCTION -----------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------

  assign PCNext  = (SS1)?   (PCNext1)  : (PC)    ;
  assign Instr   = (PCSrc)? (32'h13)   : (InstrX);
  assign PCPlus4 = (SS1)?   (PCPlus41) : (PC)    ;
	
	adder adder_0 (
		.in1(PC      ),
		.in2(32'd4   ),
		.out(PCPlus41)
	);

	flip_flop #(.WIDTH(107)) flipflop_1 (
		.clk  (clk                                             ),
		.reset(reset                                           ),
		.ST   (1'b0                                            ),
		.d    ({Instr,PC,PCPlus4,Instr[19:15],Instr[24:20],SS1}),
		.q    ({InstrL,PCD,PCPlus4D,IS1,IS2,SS11}              )
	);

// ---------------------------------------------------------------------------------------------------------------
// -------------------------------- DECODING THE INSTRUCTION -----------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------

	assign InstrY = (SS11)?  (InstrL) : (InstrK);
	assign InstrD = (PCSrc)? (32'h13) : (InstrY);

	controller controller (
		.op        (InstrD[6:0]  ),
		.funct3    (InstrD[14:12]),
		.funct7b5  (InstrD[30]   ),
		.SS2       (SS2          ),
		.funct7b1  (InstrD[25]   ),
		.MemWrite  (MemWrite     ),
		.Branch    (Branch       ),
		.ALUSrc    (ALUSrc       ),
		.RegWrite  (RegWrite     ),
		.Jump      (Jump         ),
		.ALUControl(ALUControl   ),
		.ResultSrc (ResultSrc    ),
		.ImmSrc    (ImmSrc       )
	);

	register_up register_up (
		.clk         (clk          ),
		.reset       (reset        ),
		.write_enable(RegWriteW    ),
		.read_addr1  (InstrD[19:15]),
		.read_addr2  (InstrD[24:20]),
		.write_addr  (WriteAddW    ),
		.write_data  (WriteDataW   ),
		.read_data1  (RD1          ),
		.read_data2  (RD2          )
	);

	extend extend (
		.instr (InstrD[31:7]),
		.immsrc(ImmSrc      ),
		.immext(ImmExt      )
	);

	hazardunit hazardunit (
		.ResultSrcE(ResultSrcE[0]),
		.PCSrc     (PCSrc        ),
		.WriteAddE (WriteAddE    ),
		.rs1       (IS1          ),
		.rs2       (IS2          ),
		.SS1       (SS1          ),
		.SS2       (SS2          )
	);
  
	flip_flop #(
		.WIDTH(220)
		) flip_flop_2 (
		.clk  (clk                                                                            ),
		.reset(reset                                                                          ),
		.ST   (1'b0                                                                           ),
		.d    ({RegWrite,ResultSrc,MemWrite,Jump,Branch,ALUControl,ALUSrc,RD1,RD2,PCD,
		       InstrD[11:7],ImmExt,PCPlus4D,InstrD[19:15], InstrD[24:20],InstrD,InstrD[14:12]}),
		.q    ({RegWriteE,ResultSrcE,MemWriteE,JumpE,BranchE,ALUControlE,ALUSrcE,
		       RD1E,RD2E,PCE,WriteAddE,ImmExtE,PCPlus4E,rs1,rs2,InstrK,funct3}                )
	);

// ---------------------------------------------------------------------------------------------------------------
// -------------------------------- EXECUTING THE INSTRUCTION -----------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------

  assign A32  = (forword_path_A[1])? (WriteDataW) : ((forword_path_A[0])? ALUResultM : RD1E );
  assign B32  = (forword_path_B[1])? (WriteDataW) : ((forword_path_B[0])? ALUResultM : RD2E );
	assign SrcE = (ALUSrcE)? (ImmExtE) : (B32);  

	ALU ALU (
		.A        (A32        ),
		.B        (SrcE       ),
		.ALUOp    (ALUControlE),
		.funct3   (funct3     ),
		.ALUResult(ALUResultE ),
		.zero     (Zero       )
	);

	adder adder_1 (
		.in1(PCE      ),
		.in2(ImmExtE  ),
		.out(PCTargetE)
	);

  forwardingunit forwardingunit (
		.rdM           (WriteAddM     ),
		.rdW           (WriteAddW     ),
		.rs1           (rs1           ),
		.rs2           (rs2           ),
		.RegWriteM     (RegWriteM     ),
		.RegWriteW     (RegWriteW     ),
		.forword_path_A(forword_path_A),
		.forword_path_B(forword_path_B)
	);
  
	always_comb begin
		if((BranchE & Zero) | JumpE)
			PCSrc = 1;
		else
			PCSrc = 0;
	end

	flip_flop #(
		.WIDTH(105)
		) flipflop_3 (
		.clk  (clk                                                                ),
		.reset(reset                                                              ),
		.ST   (1'b0                                                               ),
		.d    ({RegWriteE,ResultSrcE,MemWriteE,ALUResultE,B32,WriteAddE,PCPlus4E} ),
		.q    ({RegWriteM,ResultSrcM,MemWriteM,ALUResultM,RD2M,WriteAddM,PCPlus4M})
	);

// ---------------------------------------------------------------------------------------------------------------
// -------------------------------- READ/WRITE MEMORY ------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------

	memory memory_0 (
		.aclr     (1'b0                    ),
		.address_a({PCNext    [14:2],2'b00}),
		.address_b({ALUResultE[14:2],2'b00}),
		.clock    (clk                     ),
		.data_a   (8'b0                    ),
		.data_b   (B32       [7:0]         ),
		.wren_a   (1'b0                    ),
		.wren_b   (MemWriteE               ),
		.q_a      (InstrX    [7:0]         ),
		.q_b      (ReadDataM [7:0]         )
	);

	memory memory_1 (
		.aclr     (1'b0                    ),
		.address_a({PCNext    [14:2],2'b01}),
		.address_b({ALUResultE[14:2],2'b01}),
		.clock    (clk                     ),
		.data_a   (8'b0                    ),
		.data_b   (B32       [15:8]        ),
		.wren_a   (1'b0                    ),
		.wren_b   (MemWriteE               ),
		.q_a      (InstrX    [15:8]        ),
		.q_b      (ReadDataM [15:8]        )
	);

	memory memory_2 (
		.aclr     (1'b0                    ),
		.address_a({PCNext    [14:2],2'b10}),
		.address_b({ALUResultE[14:2],2'b10}),
		.clock    (clk                     ),
		.data_a   (8'b0                    ),
		.data_b   (B32       [23:16]       ),
		.wren_a   (1'b0                    ),
		.wren_b   (MemWriteE               ),
		.q_a      (InstrX    [23:16]       ),
		.q_b      (ReadDataM [23:16]       )
	);

	memory memory_3 (
		.aclr     (1'b0                    ),
		.address_a({PCNext    [14:2],2'b11}),
		.address_b({ALUResultE[14:2],2'b11}),
		.clock    (clk                     ),
		.data_a   (8'b0                    ),
		.data_b   (B32       [31:24]       ),
		.wren_a   (1'b0                    ),
		.wren_b   (MemWriteE               ),
		.q_a      (InstrX    [31:24]       ),
		.q_b      (ReadDataM [31:24]       )
	);

	flip_flop #(
		.WIDTH(104)
		) flipflop_4 (
		.clk  (clk                                                           ),
		.reset(reset                                                         ),
		.ST   (1'b0                                                          ),
		.d    ({RegWriteM,ResultSrcM,ALUResultM,ReadDataM,WriteAddM,PCPlus4M}),
		.q    ({RegWriteW,ResultSrcW,ALUResultW,ReadDataW,WriteAddW,PCPlus4W})
	);

// ---------------------------------------------------------------------------------------------------------------
// -------------------------------- WRITE BACK IN REGISTER -------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------

	assign WriteDataW = (ResultSrcW[1])? (PCPlus4W) : ((ResultSrcW[0])? (ReadDataW) : (ALUResultW));

endmodule
