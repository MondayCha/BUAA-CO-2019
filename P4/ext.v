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
	input EXTOp,
	/**************/
	output [31:0] out);
	
	assign out = EXTOp ? {{16{1'b0}},in[15:0]} : {{16{in[15]}},in[15:0]};
	// EXTOp=1: Unsigned extension, EXTOp=0: Signed extension
	
endmodule
