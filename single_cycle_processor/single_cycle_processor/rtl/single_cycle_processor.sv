module single_cycle_processor (
	input  logic        clk      , // Clock
	input  logic        clk1     ,
	input  logic        reset    ,
	output logic [31:0] WriteData,
	output logic [31:0] DataAdr  ,
	output logic        MemWrite
);

logic [31:0] PC       ;
logic [31:0] Instr    ;
logic [31:0] ReadData ;
logic [ 1:0] ResultSrc;

processor_without_memory processor_without_memory (
	.clk      (clk      ),    
	.reset    (reset    ),    
	.Instr    (Instr    ),    
	.ReadData (ReadData ),    
	.PC       (PC       ),    
	.MemWrite (MemWrite ),    
	.ALUResult(DataAdr  ),    
	.WriteData(WriteData),    
	.ResultSrc(ResultSrc)     
);

memory memory_0 (
	.aclr     (reset                ),
	.clock    (clk1                 ),
	.data_a   (8'b0                 ),
	.address_a({PC[14:2],2'b00}     ),
	.wren_a   (1'b0                 ),
	.q_a      (Instr[7:0]           ),
	.address_b({DataAdr[14:2],2'b00}),
	.data_b   (WriteData[7:0]       ),
	.wren_b   (MemWrite             ),
	.q_b      (ReadData[7:0]        )
);

memory memory_1 (
	.aclr     (reset                ),
	.clock    (clk1                 ),
	.address_a({PC[14:2],2'b01}     ),
	.data_a   (8'b0                 ),
	.wren_a   (1'b0                 ),
	.q_a      (Instr[15:8]          ),
	.address_b({DataAdr[14:2],2'b01}),
	.data_b   (WriteData[15:8]      ),
	.wren_b   (MemWrite             ),
	.q_b      (ReadData[15:8]       )
);

memory memory_2 (
	.aclr     (reset                ),
	.clock    (clk1                 ),
	.address_a({PC[14:2],2'b10}     ),
	.data_a   (8'b0                 ),
	.wren_a   (1'b0                 ),
	.q_a      (Instr[23:16]         ),
	.address_b({DataAdr[14:2],2'b10}),
	.data_b   (WriteData[23:16]     ),
	.wren_b   (MemWrite             ),
	.q_b      (ReadData[23:16]      )
);

memory memory_3 (
	.aclr     (reset                ),
	.clock    (clk1                 ),
	.address_a({PC[14:2],2'b11}     ),
	.data_a   (8'b0                 ),
	.wren_a   (1'b0                 ),
	.q_a      (Instr[31:24]         ),
	.address_b({DataAdr[14:2],2'b11}),
	.data_b   (WriteData[31:24]     ),
	.wren_b   (MemWrite             ),
	.q_b      (ReadData[31:24]      )
);

endmodule