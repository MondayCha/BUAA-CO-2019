`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:13 12/02/2019 
// Design Name: 
// Module Name:    macrodefine 
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
`ifndef _MACRO
`define _MACRO
//////////////////////////////////////////////////////////////////////////////////
// Instr定义
	`define i_op 		31:26
	`define i_rs 		25:21
	`define i_rt 		20:16
	`define i_rd 		15:11
	`define i_shamt 	10:6
	`define i_func 	5:0
	`define i_imm16 	15:0
	`define i_imm26 	25:0

	/*	
	* 添指令第三步：在头文件补充指令识别码
	*  参考示例：
	* `define xxx 	6'bxxxxxx
	*/

// 指令定义
	// op_code
	`define R 		6'b000000
	`define ori 	6'b001101
	`define lui 	6'b001111
	`define lw 		6'b100011
	`define sw 		6'b101011
	`define beq 	6'b000100
	`define j 		6'b000010
	`define jal 	6'b000011

	// func_code
	`define addu 	6'b100001
	`define subu 	6'b100011
	`define jr 		6'b001000
	`define jalr 	6'b001001
	`define sll		6'b000000
	
//NPC定义
	`define NPC_beq		3'b001
	`define NPC_jal		3'b010
	`define NPC_jr		3'b011
	`define NPC_jalr	3'b100
	`define NPC_j		3'b101

//ALU定义
	`define op_and	3'b000
	`define op_or	3'b001
	`define op_add	3'b010
	`define op_sub	3'b011
	`define op_sll	3'b100

// Tnew初始化
	`define Tnew_MAX 3'd4











//////////////////////////////////////////////////////////////////////////////////
`endif
