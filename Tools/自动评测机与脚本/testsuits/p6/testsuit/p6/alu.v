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
	output reg [31:0] Result
	);
	
	/*	
	* ��ָ��ڰ˲����������޸�ALU���㷽ʽ��4'b1011��
	*/
	
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
							Result = B << A[4:0];	//SLL(shamt)/SLLV(rd) �߼�����
						end
			`op_srl: begin
							Result = B >> A[4:0];	//SRL(shamt)/SRLV(rd) �߼�����
						end
			`op_sra: begin
							Result = $signed($signed(B) >>> A[4:0]);	//SRA(shamt)/SRAV(rd) �߼�����
						end
			`op_slt: begin
							Result = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0; //SLT/SLTI
						end
			`op_sltu: begin
							Result = (A < B) ? 32'b1 : 32'b0; // SLTU/SLTIU
						end
			4'b1011: begin
							Result = 32'b0;
						end
			default: begin
							Result = 32'b0;
						end
		endcase
	end
						 
endmodule
