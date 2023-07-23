`include "ULA.v"
`include "ULAControl.v"
module MIPS(input             clk,
						input      [0:1]  OpALU,
						input      [0:5]  funct,
						input      [0:31] a,
						input      [0:31] b,
						output     [0:31] outputULA);
	
	
	wire [0:3] inputALU;
		ULAControl ULAControl_Module(
			.clk(clk),
			.OpALU(OpALU),
			.funct(funct),
			.inputALU(inputALU)
		);

		ULA ULA_Module(
			.clk(clk),
			.inputULA(inputALU),
			.a(a),
			.b(b),
			.outputULA(outputULA)
		);


endmodule