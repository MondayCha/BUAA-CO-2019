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
	input [3:0] ALUOp,
	/**************/
	output reg [31:0] Result,
	output overflow
	);
	
	/*	
	* 添指令第八步：在这里修改ALU运算方式（4'b1011）
	*/
	wire [32:0] tmp_Result;
	assign tmp_Result =	(ALUOp == `op_add) ? {A[31],A} + {B[31],B} :
								(ALUOp == `op_sub) ? {A[31],A} - {B[31],B} :
								33'b0;
								
	assign overflow = (tmp_Result[32] ^ tmp_Result[31]);
	
	always@(*) begin
		case (ALUOp)
			`op_add: begin
							Result = A + B;
						end
			`op_sub: begin
							Result = A - B;
						end
			`op_and: begin
							Result = A & B;
						end
			`op_or: 	begin
							Result = A | B;
						end
			`op_xor: begin
							Result = A ^ B;	// XOR
						end
			`op_nor: begin
							Result = ~(A | B);	// NOR
						end
			`op_sll: begin
							Result = B << A[4:0];	//SLL(shamt)/SLLV(rd) 逻辑左移
						end
			`op_srl: begin
							Result = B >> A[4:0];	//SRL(shamt)/SRLV(rd) 逻辑右移
						end
			`op_sra: begin
							Result = $signed($signed(B) >>> A[4:0]);	//SRA(shamt)/SRAV(rd) 逻辑右移
						end
			`op_slt: begin
							Result = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0; //SLT/SLTI
						end
			`op_sltu: begin
							Result = (A < B) ? 32'b1 : 32'b0; // SLTU/SLTIU
						end
			default: begin
							Result = A + B;
						end
		endcase
	end
						 
endmodule
