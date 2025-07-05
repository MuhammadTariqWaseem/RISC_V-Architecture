module tb_processor_without_memory ();
  // Inputs
  logic        clk      = 0;
  logic        reset    = 1;
  logic [31:0] Instr   ;
  logic [31:0] ReadData;

  // Outputs
  logic [31:0] PC       ;
  logic        MemWrite ;
  logic [31:0] ALUResult;
  logic [ 1:0] ResultSrc;
  logic [31:0] WriteData;

  // Instantiate the Unit Under Test (UUT)
  processor_without_memory processor_without_memory (
    .clk      (clk      ),
    .reset    (reset    ),
    .Instr    (Instr    ),
    .ReadData (ReadData ),
    .PC       (PC       ),
    .MemWrite (MemWrite ),
    .ALUResult(ALUResult),
    .WriteData(WriteData),
    .ResultSrc(ResultSrc)
  );

  // Clock generation
  always #5 clk <= ~clk;

  // Initial block for test stimulus
  initial begin
    // Apply reset
    reset = 1;
    #15;

    reset = 0;
    
    // Apply instructions at specific time intervals
    @(posedge clk);
    Instr = 32'h00500113;  
    @(posedge clk);
    Instr = 32'h00C00193;  
    @(posedge clk);
    Instr = 32'hFF718393;  
    @(posedge clk);
    Instr = 32'h0023E233;  
    @(posedge clk);
    Instr = 32'h0041F2B3;  
    @(posedge clk);
    Instr = 32'h004282B3;  
    @(posedge clk);
    Instr = 32'h02728863;  
    @(posedge clk);
    Instr = 32'h0041A233;  
    @(posedge clk);
    Instr = 32'h00020463;  
    @(posedge clk);
    // Stop simulation after running all instructions
    $stop;
  end
endmodule
