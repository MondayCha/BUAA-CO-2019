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
`include "macrodefine.v"

module controller(
	input [5:0] Op,
	input [5:0] Func,
	// input RegJudge,
	/**************/
	output [2:0] ALUOp,
	output [1:0] RegDst,
	output ALUSrcA,
	output ALUSrcB,
	output RegWrite,
	output MemRead,
	output MemWrite,
	output [1:0] MemtoReg,
	output [2:0] Branch,
	output [1:0] EXTOp,
	output [1:0] CMPOp
	);
	
	// 添指令第一步：在这里写上名字！
	wire addu, subu, ori, lw, sw, beq, lui, j, jal, jr, jalr, sll;
	
	/***************************************************************************/
	/*	
	* 添指令第二步：在头文件补充指令识别码，在这里写上assign语句！
	*  参考示例：
	* assign xxx = (Op == `R && Func == `xxx)	? 1'b1:1'b0;
	* assign xxx	= (Op == `xxx)	? 1'b1:1'b0;
	*/
	
	assign addu = (Op == `R && Func == `addu)	? 1'b1:1'b0;
	assign subu	= (Op == `R && Func == `subu)	? 1'b1:1'b0;
	assign jr	= (Op == `R && Func == `jr) 	? 1'b1:1'b0;
	assign jalr	= (Op == `R && Func == `jalr)	? 1'b1:1'b0;
	assign sll	= (Op == `R && Func == `sll)	? 1'b1:1'b0;
	
	assign ori	= (Op == `ori)	? 1'b1:1'b0;
	assign lw	= (Op == `lw)	? 1'b1:1'b0;
	assign sw	= (Op == `sw)	? 1'b1:1'b0;
	assign beq	= (Op == `beq)	? 1'b1:1'b0;
	assign lui	= (Op == `lui)	? 1'b1:1'b0;
	assign j		= (Op == `j)	? 1'b1:1'b0;
	assign jal	= (Op == `jal)	? 1'b1:1'b0;
	/***************************************************************************/
	
	/********************************************/
	/*000& 001| 010+ 011-*/
	/*	
	* 添指令第四步：在这里修改CTRL的控制信号！
	*/
	
	assign ALUOp[2] 		=             jr||jalr||sll||                       jal||j;
	assign ALUOp[1] 		= addu||subu||jr||jalr||          lw||sw||beq||lui||jal||j;
	assign ALUOp[0] 		=       subu||jr||jalr||     ori||        beq||     jal||j;
	
	assign ALUSrcA 		= sll;
	assign ALUSrcB 		= ori||lw||sw||lui;
	
	assign RegDst[1] 		= jal;
	assign RegDst[0] 		= addu||subu||jr||jalr||sll;
	
	assign RegWrite 		= addu||subu||jr||jalr||sll||ori||lw||lui||jal;
	// 是否写入取决于RegJudge是否需要
	
	assign MemRead 		= lw;
	assign MemWrite 		= sw;
	
	assign MemtoReg[1] 	= jalr||    jal;
	assign MemtoReg[0] 	=       lw;
	
	assign Branch[2] 		=               jalr||j;
	assign Branch[1] 		=      jal||jr;
	assign Branch[0] 		= beq||     jr||      j;
	
	assign EXTOp[1] 		=      lui;
	assign EXTOp[0]		= ori;
	
	assign CMPOp[1] 		= 1'b0;
	assign CMPOp[0]		= 1'b0;
	/********************************************/
	
endmodule
