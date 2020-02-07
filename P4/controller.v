`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:50 11/17/2019 
// Design Name: 
// Module Name:    controller 
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
module controller(
	input [5:0] op,
	input [5:0] Fu,
	/**************/
	output [2:0] ALUOp,
	output [1:0] RegDst,
	output ALUSrc,
	output [1:0] MemtoReg,
	output RegWrite,
	output MemRead,
	output MemWrite,
	output [1:0] Branch,
	output EXTOp);
	
	wire R, addu, subu, ori, lw, sw, beq, lui, jal, jr;
	
	/***************************************************************************/
	assign R		= !op[5] && !op[4] && !op[3] && !op[2] && !op[1] && !op[0];
	
	assign addu	=  Fu[5] && !Fu[4] && !Fu[3] && !Fu[2] && !Fu[1] &&  Fu[0] && R;
	assign subu	=  Fu[5] && !Fu[4] && !Fu[3] && !Fu[2] &&  Fu[1] &&  Fu[0] && R;
	assign jr	= !Fu[5] && !Fu[4] &&  Fu[3] && !Fu[2] && !Fu[1] && !Fu[0] && R;
	
	assign ori	= !op[5] && !op[4] &&  op[3] &&  op[2] && !op[1] &&  op[0];
	assign lw	=  op[5] && !op[4] && !op[3] && !op[2] &&  op[1] &&  op[0];
	assign sw	=  op[5] && !op[4] &&  op[3] && !op[2] &&  op[1] &&  op[0];
	assign beq	= !op[5] && !op[4] && !op[3] &&  op[2] && !op[1] && !op[0];
	assign lui	= !op[5] && !op[4] &&  op[3] &&  op[2] &&  op[1] &&  op[0];
	assign jal	= !op[5] && !op[4] && !op[3] && !op[2] &&  op[1] &&  op[0];
	/***************************************************************************/
	
	/********************************************/
	/*000& 001| 010+ 011-*/
	assign ALUOp[2] 		= jal||lui;
	assign ALUOp[1] 		= beq||sw||lw||lui||addu||subu||jr||jal;
	assign ALUOp[0] 		= beq||lui||ori||subu||jal;
	assign RegDst[1] 		= jal;
	assign RegDst[0] 		= R;
	assign ALUSrc 			= lw||sw||ori;
	assign MemtoReg[1] 	= lui||jal;
	assign MemtoReg[0] 	= lw||jal;
	assign RegWrite 		= R||lui||ori||lw||jal;
	assign MemRead 		= lw;
	assign MemWrite 		= sw;
	assign Branch[1] 		= jal||jr;
	assign Branch[0] 		= beq||jr;
	assign EXTOp 			= ori;
	/********************************************/
	
endmodule
