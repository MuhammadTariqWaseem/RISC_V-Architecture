module flip_flop #(parameter WIDTH = 8) (
  input                    clk  ,
  input                    reset,
  input                    ST   ,
  input        [WIDTH-1:0] d    ,
  output logic [WIDTH-1:0] q
);

always_ff @(posedge clk) begin
  if(reset) begin
    q <= 0;
  end 
  else if(!ST) begin
    q <= d;
  end
end

endmodule
