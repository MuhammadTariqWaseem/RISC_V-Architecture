module multiplier (
	input  logic        clk  ,
	input  logic        reset,
	input  logic [31:0] in_1 ,
	input  logic [31:0] in_2 ,
	input  logic        slect,
	output logic [31:0] out
);

logic [31:0] and_ans[31:0];
logic [33:0] carry_0[ 9:0];
logic [33:0] sum_0  [ 9:0];

logic [39:0] carry_1 [5:0];
logic [39:0] sum_1   [5:0];
logic [35:0] carry_16     ;
logic [35:0] sum_16       ;

logic [39:0] carry_1f [5:0];
logic [39:0] sum_1f   [5:0];
logic [35:0] sum_16f       ;
logic [35:0] carry_16f     ;
logic [33:0] sum_0_9f      ;

logic [57:0] carry_2  [3:0];
logic [57:0] sum_2    [3:0];
logic [37:0] carry_24      ;
logic [37:0] sum_24        ;
logic [37:0] carry_24f     ;

logic [58:0] carry_3 [1:0];
logic [58:0] sum_3   [1:0];
logic [62:0] carry_32     ;
logic [62:0] sum_32       ;

logic [59:0] carry_40;
logic [59:0] sum_40  ;
logic [63:0] carry_41;
logic [63:0] sum_41  ;

logic [60:0] carry_5;
logic [60:0] sum_5;

logic [65:0] carry_6;
logic [65:0] sum_6;

logic [66:0] carry_70;
logic [66:0] sum_70;
logic [66:0] carry_71;
logic [66:0] sum_71;

logic [63:0] sum;

generate
	for(int j=0; j<32; j=j+1) begin : AND_ROW
		assign and_ans[j] = in_1[j] & in_2[j];
	end
endgenerate 

generate
	for (int i = 0; i < 10; i++) begin
		carry_save_adder #(.WIDTH(34)) carry_save_adder_0 (
			.in_1 ({2'b00,and_ans[3*i  ]}      ),
			.in_2 ({1'b0 ,and_ans[3*i+1],1'b0 }),
			.c_in ({      and_ans[3*i+2],2'b00}),
			.sum  (sum_0  [i]                  ),
			.c_out(carry_0[i]                  )
		);
	end
endgenerate

generate
	for (int k = 0; k < 3; k++) begin
		carry_save_adder #(.WIDTH(40)) carry_save_adder_1 (
			.in_1 ({6'b0,sum_0  [3*k  ]     }),
			.in_2 ({3'b0,sum_0  [3*k+1],3'b0}),
			.c_in ({     sum_0  [3*k+2],6'b0}),
			.sum  (sum_1  [k  ]              ),
			.c_out(carry_1[k  ]              )
		);
		carry_save_adder #(.WIDTH(40)) carry_save_adder_2 (
			.in_1 ({6'b0,carry_0[3*k  ]     }),
			.in_2 ({3'b0,carry_0[3*k+1],3'b0}),
			.c_in ({     carry_0[3*k+2],6'b0}),
			.sum  (sum_1  [k  ]              ),
			.c_out(carry_1[k  ]              )
		);
	end
endgenerate

carry_save_adder #(.WIDTH(36)) carry_save_adder_3 (
	.in_1 ({2'b0,carry_0[9]      }),
	.in_2 ({1'b0,and_ans[30],3'b0}),
	.c_in ({     and_ans[31],4'b0}),
	.sum  (sum_16                 ),
	.c_out(carry_16               )
);

flipflop #(.WIDTH(586)) flipflop_0 (
	.clk(clk), 
	.reset(reset), 
	.ST(1'b0), 
	.d({sum_1, carry_1, sum_16, carry_16, sum_0[9]}), 
	.q({sum_1f, carry_1f, sum_16f, carry_16f, sum_0_9f})
);

generate
	for (int l = 0; l < 2; l++) begin
		carry_save_adder #(.WIDTH(58)) carry_save_adder_4 (
			.in_1 ({18'b0,sum_1f  [3*l  ]     }),
			.in_2 ({ 9'b0,sum_1f  [3*l+1], 9'b0}),
			.c_in ({      sum_1f  [3*l+2],18'b0}),
			.sum  (sum_2  [l  ]                 ),
			.c_out(carry_2[l  ]                 )
		);
		carry_save_adder #(.WIDTH(58)) carry_save_adder_5 (
			.in_1 ({18'b0,carry_1f[3*l  ]      }),
			.in_2 ({ 9'b0,carry_1f[3*l+1], 9'b0}),
			.c_in ({      carry_1f[3*l+2],18'b0}),
			.sum  (sum_2  [l  ]                 ),
			.c_out(carry_2[l  ]                 )
		);
	end
endgenerate

carry_save_adder #(.WIDTH(38)) carry_save_adder_6 (
	.in_1 ({4'b0,sum_0_9f          }),
	.in_2 ({1'b0,sum_16f[30]  ,1'b0}),
	.c_in ({     carry_16f[31],2'b0}),
	.sum  (sum_24                   ),
	.c_out(carry_24                 )
);

carry_save_adder #(.WIDTH(59)) carry_save_adder_7 (
	.in_1 ({1'b0,sum_2  [0]     }),
	.in_2 ({    ,sum_2  [1],1'b0}),
	.c_in ({     sum_2  [2],1'b0}),
	.sum  (sum_3  [0]            ),
	.c_out(carry_3[0]            )
);
carry_save_adder #(.WIDTH(59)) carry_save_adder_8 (
	.in_1 ({1'b0,carry_2[0]     }),
	.in_2 ({    ,carry_2[1],1'b0}),
	.c_in ({     carry_2[2],1'b0}),
	.sum  (sum_3  [1]            ),
	.c_out(carry_3[1]            )
);

carry_save_adder #(.WIDTH(63)) carry_save_adder_9 (
	.in_1 ({5'b0,sum_2[3]        }),
	.in_2 ({4'b0,carry_2[3], 1'b0}),
	.c_in ({     sum_24    ,25'b0}),
	.sum  (sum_32                 ),
	.c_out(carry_32               )
);

carry_save_adder #(.WIDTH(60)) carry_save_adder_10 (
	.in_1 ({1'b0,sum_3[0]       }),
	.in_2 ({     sum_3[1]  ,1'b0}),
	.c_in ({     carry_3[0],1'b0}),
	.sum  (sum_40                ),
	.c_out(carry_40              )
);

carry_save_adder #(.WIDTH(64)) carry_save_adder_11 (
	.in_1 ({1'b0,sum_32        }),
	.in_2 ({     carry_24,26'b0}),
	.c_in ({     carry_32, 1'b0}),
	.sum  (sum_41               ),
	.c_out(carry_41             )
);

carry_save_adder #(.WIDTH(61)) carry_save_adder_12 (
	.in_1 ({1'b0,sum_40         }),
	.in_2 ({     carry_40,  1'b0}),
	.c_in ({     carry_3[1],2'b0}),
	.sum  (sum_5                 ),
	.c_out(carry_5               )
);

carry_save_adder #(.WIDTH(66)) carry_save_adder_13 (
	.in_1 ({4'b0,sum_5       }),
	.in_2 ({     sum_41 ,2'b0}),
	.c_in ({3'b0,carry_5,1'b0}),
	.sum  (sum_6              ),
	.c_out(carry_6            )
);

carry_save_adder #(.WIDTH(67)) carry_save_adder_14 (
	.in_1 ({1'b0,sum_6         }),
	.in_2 ({     carry_41, 3'b0}),
	.c_in ({     carry_6 ,26'b0}),
	.sum  (sum_70               ),
	.c_out(carry_70             )
);

flipflop #(.WIDTH(134)) flipflop_1 (
	.clk(clk), 
	.reset(reset), 
	.ST(ST), 
	.d({sum_70,carry_70}), 
	.q({sum_71,carry_71})
);

assign sum = sum_71[63:0] + carry_71[63:0];
assign out = (slect)? sum[63:32] : sum[31:0];

endmodule 