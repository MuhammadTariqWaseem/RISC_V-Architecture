module register (
	input  logic        clk         , // Clock
	input  logic        write_enable, // Reset
	input  logic [ 4:0] read_addr1  , // Read address 1
	input  logic [ 4:0] read_addr2  ,
	input  logic [ 4:0] write_addr  , // Write address
	input  logic [31:0] write_data  , // Read address 2
	output logic [31:0] read_data1  , // Read data 1
	output logic [31:0] read_data2    // Read data 2
);

  logic [31:0]register[31:0];
    
  always@(read_addr1, read_addr2) begin
		read_data1 = (read_addr1 == 5'b00000)? 32'b0 : register[read_addr1] ;
	  read_data2 = (read_addr2 == 5'b00000)? 32'b0 : register[read_addr2] ;
  end

  always@(*) begin
		if(write_enable & (write_addr != 5'b00000)) 
      register[write_addr] = write_data;
  end

endmodule
