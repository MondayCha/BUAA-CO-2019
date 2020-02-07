`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:53 11/17/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(
	input [31:0] A,
	input [31:0] B,
	input [2:0] ALUOp,
	/**************/
	output [31:0] Result,
	output Zero);
	
	assign Zero = (A == B) ? 1'b1 : 1'b0;
	assign Result = (ALUOp == 3'b000) ? (A & B) :
						 (ALUOp == 3'b001) ? (A | B) :
						 (ALUOp == 3'b010) ? (A + B) :
						 (ALUOp == 3'b011) ? (A - B) :
						 (ALUOp == 3'b100) ? 0 :
						 (ALUOp == 3'b101) ? 0 :
						 (ALUOp == 3'b110) ? 0 :
						 (ALUOp == 3'b111) ? 0 : 
						 0;
						 
endmodule
