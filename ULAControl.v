module ULAControl(input            clk,
									input      [0:1] OpALU,
									input      [0:5] funct,
									output reg [0:3] inputALU);

	always @ (*) begin
		case ({OpALU, funct})
			{2'b00,6'b000000}: inputALU <= 4'b0010; // LW / SW
			{2'b01,6'b000000}: inputALU <= 4'b0110; // BEQ
			{2'b10,6'b100000}: inputALU <= 4'b0010; // add
			{2'b10,6'b100010}: inputALU <= 4'b0110; // subtract
			{2'b10,6'b100100}: inputALU <= 4'b0000; // AND 
			{2'b10,6'b100101}: inputALU <= 4'b0001; // OR 
			{2'b10,6'b101010}: inputALU <= 4'b0111; // SLT
			default;
		endcase
	end
endmodule