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
`include "macrodefine.v"

module alu(
	input [31:0] A,
	input [31:0] B,
	input [2:0] ALUOp,
	/**************/
	output reg [31:0] Result
	);
	
	/*	
	* 添指令第五步：在这里修改ALU运算方式
	*/
	
	always@(*) begin
		case(ALUOp)
			`op_and: begin
				Result = A & B;
			end
			`op_or: begin
				Result = A | B;
			end
			`op_add: begin
				Result = A + B;
			end
			`op_sub: begin
				Result = A - B;
			end
			`op_sll: begin
				Result = B << A[4:0]; //现在还用不到……
			end
			3'b101: begin
				Result = 32'h0;
			end
			3'b110: begin
				Result = 32'h0;
			end
			3'b111: begin
				Result = 32'h0;
			end
			default: begin
				Result = 32'h0;
			end
		endcase
	end
						 
endmodule
