`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:47 12/13/2019 
// Design Name: 
// Module Name:    compiler 
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

module compiler(
	input [31:0] Instr,
	output [5:0] MIPS
    );

	wire [5:0] Op, Func;
	wire [4:0] Rs, Rt;
	
	wire _ADD, _ADDI, _ADDIU, _ADDU, _AND, _ANDI, _BEQ, _BGEZ, _BGTZ, _BLEZ, _BLTZ, _BNE, 
			_DIV, _DIVU, _J, _JAL, _JALR, _JR, _LB, _LBU, _LH, _LHU, _LUI, _LW, _MFHI, _MFLO, _MTHI, 
			_MTLO, _MULT, _MULTU, _NOR, _OR, _ORI, _SB, _SH, _SLL, _SLLV, _SLT, _SLTI, _SLTIU, _SLTU, 
			_SRA, _SRAV, _SRL, _SRLV, _SUB, _SUBU, _SW, _XOR, _XORI, _NOP, _ERET, _MFC0, _MTC0;
	
	assign Op 	= Instr[`i_op];
	assign Func = Instr[`i_func];
	assign Rs 	= Instr[`i_rs];
	assign Rt 	= Instr[`i_rt];
	
	assign _NOP		= (Instr == 32'h00000000)					? 1'b1:1'b0;
	assign _ERET	= (Instr == 32'h42000018)					? 1'b1:1'b0;
	
	assign _ADD 	= (Op == `typeR && Func == `type_ADD)	? 1'b1:1'b0;
	assign _ADDU 	= (Op == `typeR && Func == `type_ADDU)	? 1'b1:1'b0;
	assign _AND 	= (Op == `typeR && Func == `type_AND)	? 1'b1:1'b0;
	assign _DIV 	= (Op == `typeR && Func == `type_DIV)	? 1'b1:1'b0;
	assign _DIVU 	= (Op == `typeR && Func == `type_DIVU)	? 1'b1:1'b0;
	// assign _ERET 	= (Op == `typeCOP0 && Func == `type_ERET)	? 1'b1:1'b0;
	assign _JALR	= (Op == `typeR && Func == `type_JALR)	? 1'b1:1'b0;
	assign _JR		= (Op == `typeR && Func == `type_JR) 	? 1'b1:1'b0;
	assign _MFHI	= (Op == `typeR && Func == `type_MFHI)	? 1'b1:1'b0;
	assign _MFLO	= (Op == `typeR && Func == `type_MFLO)	? 1'b1:1'b0;
	assign _MTHI	= (Op == `typeR && Func == `type_MTHI)	? 1'b1:1'b0;
	assign _MTLO	= (Op == `typeR && Func == `type_MTLO)	? 1'b1:1'b0;
	assign _MULT	= (Op == `typeR && Func == `type_MULT)	? 1'b1:1'b0;
	assign _MULTU	= (Op == `typeR && Func == `type_MULTU)? 1'b1:1'b0;
	assign _NOR 	= (Op == `typeR && Func == `type_NOR)	? 1'b1:1'b0;
	assign _OR 		= (Op == `typeR && Func == `type_OR)	? 1'b1:1'b0;
	assign _SLL		= (Op == `typeR && Func == `type_SLL && Instr != 32'h00000000)	? 1'b1:1'b0;
	assign _SLLV	= (Op == `typeR && Func == `type_SLLV)	? 1'b1:1'b0;
	assign _SLT		= (Op == `typeR && Func == `type_SLT)	? 1'b1:1'b0;
	assign _SLTU	= (Op == `typeR && Func == `type_SLTU)	? 1'b1:1'b0;
	assign _SRA		= (Op == `typeR && Func == `type_SRA)	? 1'b1:1'b0;
	assign _SRAV	= (Op == `typeR && Func == `type_SRAV)	? 1'b1:1'b0;
	assign _SRL		= (Op == `typeR && Func == `type_SRL)	? 1'b1:1'b0;
	assign _SRLV	= (Op == `typeR && Func == `type_SRLV)	? 1'b1:1'b0;
	assign _SUB		= (Op == `typeR && Func == `type_SUB)	? 1'b1:1'b0;
	assign _SUBU	= (Op == `typeR && Func == `type_SUBU)	? 1'b1:1'b0;
	assign _XOR 	= (Op == `typeR && Func == `type_XOR)	? 1'b1:1'b0;
	
	assign _ADDI	= (Op == `type_ADDI)		? 1'b1:1'b0;
	assign _ADDIU	= (Op == `type_ADDIU)	? 1'b1:1'b0;
	assign _ANDI	= (Op == `type_ANDI)		? 1'b1:1'b0;
	assign _BEQ		= (Op == `type_BEQ)		? 1'b1:1'b0;
	assign _BGTZ	= (Op == `type_BGTZ)		? 1'b1:1'b0;
	assign _BLEZ	= (Op == `type_BLEZ)		? 1'b1:1'b0;
	assign _BNE		= (Op == `type_BNE)		? 1'b1:1'b0;
	assign _J		= (Op == `type_J)			? 1'b1:1'b0;
	assign _JAL		= (Op == `type_JAL)		? 1'b1:1'b0;
	assign _LB		= (Op == `type_LB)		? 1'b1:1'b0;
	assign _LBU		= (Op == `type_LBU)		? 1'b1:1'b0;
	assign _LH		= (Op == `type_LH)		? 1'b1:1'b0;
	assign _LHU		= (Op == `type_LHU)		? 1'b1:1'b0;
	assign _LUI		= (Op == `type_LUI)		? 1'b1:1'b0;
	assign _LW		= (Op == `type_LW)		? 1'b1:1'b0;
	assign _ORI		= (Op == `type_ORI)		? 1'b1:1'b0;
	assign _SB		= (Op == `type_SB)		? 1'b1:1'b0;
	assign _SH		= (Op == `type_SH)		? 1'b1:1'b0;
	assign _SLTI	= (Op == `type_SLTI)		? 1'b1:1'b0;
	assign _SLTIU	= (Op == `type_SLTIU)	? 1'b1:1'b0;
	assign _SW		= (Op == `type_SW)		? 1'b1:1'b0;
	assign _XORI	= (Op == `type_XORI)		? 1'b1:1'b0;
	
	assign _BGEZ	= (Op == `typeBZ && Rt == `type_BGEZ)	? 1'b1:1'b0;
	assign _BLTZ	= (Op == `typeBZ && Rt == `type_BLTZ)	? 1'b1:1'b0;
	
	assign _MFC0	= (Op == `typeCOP0 && Rs == `type_MFC0)	? 1'b1:1'b0;
	assign _MTC0	= (Op == `typeCOP0 && Rs == `type_MTC0)	? 1'b1:1'b0;
	
	assign MIPS		=	(_ADD) ? `mips_ADD :
							(_ADDI) ? `mips_ADDI :
							(_ADDIU) ? `mips_ADDIU :
							(_ADDU) ? `mips_ADDU :
							(_AND) ? `mips_AND :
							(_ANDI) ? `mips_ANDI :
							(_BEQ) ? `mips_BEQ :
							(_BGEZ) ? `mips_BGEZ :
							(_BGTZ) ? `mips_BGTZ :
							(_BLEZ) ? `mips_BLEZ :
							(_BLTZ) ? `mips_BLTZ :
							(_BNE) ? `mips_BNE :
							(_DIV) ? `mips_DIV :
							(_DIVU) ? `mips_DIVU :
							(_J) ? `mips_J :
							(_JAL) ? `mips_JAL :
							(_JALR) ? `mips_JALR :
							(_JR) ? `mips_JR :
							(_LB) ? `mips_LB :
							(_LBU) ? `mips_LBU :
							(_LH) ? `mips_LH :
							(_LHU) ? `mips_LHU :
							(_LUI) ? `mips_LUI :
							(_LW) ? `mips_LW :
							(_MFHI) ? `mips_MFHI :
							(_MFLO) ? `mips_MFLO :
							(_MTHI) ? `mips_MTHI :
							(_MTLO) ? `mips_MTLO :
							(_MULT) ? `mips_MULT :
							(_MULTU) ? `mips_MULTU :
							(_NOR) ? `mips_NOR :
							(_OR) ? `mips_OR :
							(_ORI) ? `mips_ORI :
							(_SB) ? `mips_SB :
							(_SH) ? `mips_SH :
							(_SLL) ? `mips_SLL :
							(_SLLV) ? `mips_SLLV :
							(_SLT) ? `mips_SLT :
							(_SLTI) ? `mips_SLTI :
							(_SLTIU) ? `mips_SLTIU :
							(_SLTU) ? `mips_SLTU :
							(_SRA) ? `mips_SRA :
							(_SRAV) ? `mips_SRAV :
							(_SRL) ? `mips_SRL :
							(_SRLV) ? `mips_SRLV :
							(_SUB) ? `mips_SUB :
							(_SUBU) ? `mips_SUBU :
							(_SW) ? `mips_SW :
							(_XOR) ? `mips_XOR :
							(_XORI) ? `mips_XORI :
							/****************/
							(_NOP) ? `mips_NOP :
							(_ERET) ? `mips_ERET :
							(_MFC0) ? `mips_MFC0 :
							(_MTC0) ? `mips_MTC0 :
							`mips_RI;


endmodule
