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
//ALU定义
	`define op_add		4'b0000
	`define op_sub		4'b0001
	`define op_and		4'b0010
	`define op_or		4'b0011
	`define op_xor		4'b0100
	`define op_nor		4'b0101
	`define op_sll		4'b0110
	`define op_srl		4'b0111
	`define op_sra		4'b1000
	`define op_slt		4'b1001
	`define op_sltu	4'b1010
	

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
	* 添指令第一步：在头文件补充指令type识别码
	*  参考示例：
	* `define xxx 	6'bxxxxxx
	*/

// 指令定义
`define typeR 			6'b000000
`define typeBZ 		6'b000001

`define type_ADD 		6'b100000 
`define type_ADDI 	6'b001000
`define type_ADDIU 	6'b001001 
`define type_ADDU 	6'b100001 
`define type_AND		6'b100100 
`define type_ANDI 	6'b001100 
`define type_BEQ 		6'b000100 
`define type_BGEZ 	5'b00001		// RT 
`define type_BGTZ 	6'b000111 
`define type_BLEZ 	6'b000110 
`define type_BLTZ 	5'b00000 	// RT 
`define type_BNE 		6'b000101 
`define type_DIV 		6'b011010 
`define type_DIVU 	6'b011011 
`define type_J 		6'b000010 
`define type_JAL 		6'b000011 
`define type_JALR 	6'b001001 
`define type_JR 		6'b001000
`define type_LB 		6'b100000 
`define type_LBU 		6'b100100
`define type_LH 		6'b100001 
`define type_LHU 		6'b100101 
`define type_LUI 		6'b001111 
`define type_LW 		6'b100011 
`define type_MFHI 	6'b010000 
`define type_MFLO 	6'b010010 
`define type_MTHI 	6'b010001 
`define type_MTLO 	6'b010011 
`define type_MULT 	6'b011000 
`define type_MULTU 	6'b011001 
`define type_NOR 		6'b100111 
`define type_OR 		6'b100101 
`define type_ORI 		6'b001101 
`define type_SB 		6'b101000 
`define type_SH 		6'b101001 
`define type_SLL 		6'b000000 
`define type_SLLV 	6'b000100 
`define type_SLT 		6'b101010 
`define type_SLTI 	6'b001010 
`define type_SLTIU 	6'b001011 
`define type_SLTU 	6'b101011 
`define type_SRA 		6'b000011 
`define type_SRAV 	6'b000111 
`define type_SRL 		6'b000010 
`define type_SRLV 	6'b000110 
`define type_SUB 		6'b100010 
`define type_SUBU 	6'b100011 
`define type_SW 		6'b101011 
`define type_XOR 		6'b100110 
`define type_XORI 	6'b001110

	/*	
	* 添指令第二步：在头文件补充指令mips识别码
	*  参考示例：
	* `define mips_XXX 	6'd51
	*/

`define mips_ADD 		6'd1 
`define mips_ADDI 	6'd2
`define mips_ADDIU 	6'd3
`define mips_ADDU 	6'd4 
`define mips_AND		6'd5 
`define mips_ANDI 	6'd6 
`define mips_BEQ 		6'd7 
`define mips_BGEZ 	6'd8
`define mips_BGTZ 	6'd9 
`define mips_BLEZ 	6'd10
`define mips_BLTZ 	6'd11
`define mips_BNE 		6'd12
`define mips_DIV 		6'd13 
`define mips_DIVU 	6'd14
`define mips_J 		6'd15 
`define mips_JAL 		6'd16
`define mips_JALR 	6'd17
`define mips_JR 		6'd18
`define mips_LB 		6'd19
`define mips_LBU 		6'd20
`define mips_LH 		6'd21 
`define mips_LHU 		6'd22 
`define mips_LUI 		6'd23
`define mips_LW 		6'd24
`define mips_MFHI 	6'd25 
`define mips_MFLO 	6'd26 
`define mips_MTHI 	6'd27 
`define mips_MTLO 	6'd28 
`define mips_MULT 	6'd29 
`define mips_MULTU 	6'd30 
`define mips_NOR 		6'd31 
`define mips_OR 		6'd32 
`define mips_ORI 		6'd33
`define mips_SB 		6'd34
`define mips_SH 		6'd35
`define mips_SLL 		6'd36
`define mips_SLLV 	6'd37
`define mips_SLT 		6'd38
`define mips_SLTI 	6'd39
`define mips_SLTIU 	6'd40
`define mips_SLTU 	6'd41
`define mips_SRA 		6'd42
`define mips_SRAV 	6'd43
`define mips_SRL 		6'd44
`define mips_SRLV 	6'd45
`define mips_SUB 		6'd46
`define mips_SUBU 	6'd47
`define mips_SW 		6'd48
`define mips_XOR 		6'd49
`define mips_XORI 	6'd50
// `define mips_XXX 		6'd51
`define mips_NOP 		6'd0

// CMP定义
	`define CMP_equal 	2'b00
	`define CMP_greater 	2'b01
	`define CMP_less 		2'b10

//NPC定义
	`define NPC_beq		4'b0001
	`define NPC_jal		4'b0010
	`define NPC_jr			4'b0011
	`define NPC_jalr		4'b0100
	`define NPC_j			4'b0101
	`define NPC_bgez 		4'b0110
	`define NPC_bgtz 		4'b0111
	`define NPC_blez 		4'b1000
	`define NPC_bltz 		4'b1001
	`define NPC_bne 		4'b1010



// Tnew初始化
	`define Tnew_MAX 3'd4











//////////////////////////////////////////////////////////////////////////////////
`endif
