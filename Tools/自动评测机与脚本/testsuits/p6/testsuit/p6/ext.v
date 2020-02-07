`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:12 11/17/2019 
// Design Name: 
// Module Name:    ext 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ext(
	input [15:0] in,
	input [1:0] EXTOp,
	/**************/
	output reg [31:0] out
	);
	
	always @(*) begin
		case(EXTOp)
			2'b00: out <= {{16{in[15]}},in[15:0]};
			// EXTOp=0: Signed extension
			2'b01: out <= {{16{1'b0}},in[15:0]};
			// EXTOp=1: Unsigned extension
			2'b10: out <= {in[15:0],{16{1'b0}}};
			// EXTOp=2: Lui extension
			2'b11: out <= 32'b0; 
		endcase
	end
	
endmodule
