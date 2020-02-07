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
	input [31:0] Instr,
	// input RegJudge,
	/**************/
	output [5:0] MIPS,
	output [3:0] ALUOp,
	output [1:0] RegDst,
	output ALUSrcA,
	output ALUSrcB,
	output RegWrite,
	output MemRead,
	output MemWrite,
	output [2:0] MemtoReg, // 顶层未改
	output [3:0] Branch, // NPC未改
	output [1:0] EXTOp,
	output [1:0] CMPOp,
	output Start,
	output CP0Write,
	output this_is_jb
	);
	
	compiler COMPILER (
		 .Instr(Instr), 
		 .MIPS(MIPS)
		 );
	
	// 添指令第三步：在这里写上名字!
	wire _ADD, _ADDI, _ADDIU, _ADDU, _AND, _ANDI, _BEQ, _BGEZ, _BGTZ, _BLEZ, _BLTZ, _BNE, 
			_DIV, _DIVU, _J, _JAL, _JALR, _JR, _LB, _LBU, _LH, _LHU, _LUI, _LW, _MFHI, _MFLO, _MTHI, 
			_MTLO, _MULT, _MULTU, _NOR, _OR, _ORI, _SB, _SH, _SLL, _SLLV, _SLT, _SLTI, _SLTIU, _SLTU, 
			_SRA, _SRAV, _SRL, _SRLV, _SUB, _SUBU, _SW, _XOR, _XORI, _ERET, _MFC0, _MTC0;
			
	wire CAL_R, CAL_I, LOAD_, STORE, B_CMP, JUMP_, MOVE_;
	/********************************************/
	/*000& 001| 010+ 011-*/
	/*	
	* 添指令第六步：在这里修改CTRL的控制信号！
	*/
	assign ALUOp   	=	(_ADD|_ADDI|_ADDIU|_ADDU|_LB|_LBU|_LH|_LHU|_LUI|_LW|_SW|_SB|_SH)	? `op_add :
								(_SUB|_SUBU|_BEQ|_BGEZ|_BGTZ|_BLEZ|_BLTZ|_BNE)	? `op_sub :
								(_AND|_ANDI)			? `op_and :
								(_ORI|_OR)				? `op_or :
								(_XOR|_XORI)			? `op_xor :
								(_NOR)					? `op_nor :
								(_SLL|_SLLV)			? `op_sll :
								(_SLT|_SLTI)			? `op_slt :
								(_SLTIU|_SLTU)			? `op_sltu :
								(_SRA|_SRAV)			? `op_sra :
								(_SRL|_SRLV)			? `op_srl :
								4'b1111; //未考虑J/MUL/DIV
	
	assign ALUSrcA 	= (_SLL|_SRL|_SRA);
	assign ALUSrcB 	= (CAL_I|LOAD_|STORE);
	
	assign RegDst		=	(CAL_R|_JALR|_MFHI|_MFLO)	? 2'b01 :
								(_JAL)				? 2'b10 :
								2'b00;
	
	assign RegWrite 	= CAL_R|CAL_I|LOAD_|_JALR|_JAL|_MFHI|_MFLO|_MFC0;
	
	// 是否写入取决于RegJudge是否需要
	
	assign MemRead 	= LOAD_;
	assign MemWrite 	= STORE;
	
	assign MemtoReg	=	(LOAD_) 			? 3'b001 :
								(_JALR|_JAL)	? 3'b010 :
								(_MFHI|_MFLO)	? 3'b011 :
								(_MFC0)			? 3'b100 :
								3'b000;
	
	assign Branch   	=	(_BEQ)	? 4'b0001 :
								(_JAL)	? 4'b0010 :
								(_JR)		? 4'b0011 :
								(_JALR)	? 4'b0100 :
								(_J)		? 4'b0101 :
								(_BGEZ)	? 4'b0110 :
								(_BGTZ)	? 4'b0111 :
								(_BLEZ)	? 4'b1000 :
								(_BLTZ)	? 4'b1001 :
								(_BNE)	? 4'b1010 :
								(_ERET)	? 4'b1011 :
								4'b0000;
	
	assign EXTOp		=	(_ANDI|_ORI|_XORI)	? 2'b01 :
								(_LUI)	? 2'b10 :
								2'b00;
								
	assign CMPOp		=	(_BGTZ|_BLEZ)	? 2'b01 :
								(_BGEZ|_BLTZ)	? 2'b10 :
								2'b00;

	assign Start		=	(_MULT|_MULTU|_DIV|_DIVU);
	
	assign CP0Write	=	_MTC0;
	
	assign this_is_jb = _BEQ | _JAL | _JR | _JALR | _J | _BGEZ | _BGTZ | _BLEZ | _BLTZ | _BNE;
	/***************************************************************************/
	/*	
	* 添指令第四步：在头文件补充指令识别码，在这里写上assign语句！
	*  参考示例：
	* assign xxx = (Op == `typeR && Func == `xxx)	? 1'b1:1'b0;
	* assign xxx	= (Op == `xxx)	? 1'b1:1'b0;
	*/
	
	assign _ADD 	= (MIPS == `mips_ADD)	? 1'b1:1'b0;
	assign _ADDU 	= (MIPS == `mips_ADDU)	? 1'b1:1'b0;
	assign _AND 	= (MIPS == `mips_AND)	? 1'b1:1'b0;
	assign _DIV 	= (MIPS == `mips_DIV)	? 1'b1:1'b0;
	assign _DIVU 	= (MIPS == `mips_DIVU)	? 1'b1:1'b0;
	assign _JALR	= (MIPS == `mips_JALR)	? 1'b1:1'b0;
	assign _JR		= (MIPS == `mips_JR) 	? 1'b1:1'b0;
	assign _MFHI	= (MIPS == `mips_MFHI)	? 1'b1:1'b0;
	assign _MFLO	= (MIPS == `mips_MFLO)	? 1'b1:1'b0;
	assign _MTHI	= (MIPS == `mips_MTHI)	? 1'b1:1'b0;
	assign _MTLO	= (MIPS == `mips_MTLO)	? 1'b1:1'b0;
	assign _MULT	= (MIPS == `mips_MULT)	? 1'b1:1'b0;
	assign _MULTU	= (MIPS == `mips_MULTU)	? 1'b1:1'b0;
	assign _NOR 	= (MIPS == `mips_NOR)	? 1'b1:1'b0;
	assign _OR 		= (MIPS == `mips_OR)		? 1'b1:1'b0;
	assign _SLL		= (MIPS == `mips_SLL)	? 1'b1:1'b0;
	assign _SLLV	= (MIPS == `mips_SLLV)	? 1'b1:1'b0;
	assign _SLT		= (MIPS == `mips_SLT)	? 1'b1:1'b0;
	assign _SLTU	= (MIPS == `mips_SLTU)	? 1'b1:1'b0;
	assign _SRA		= (MIPS == `mips_SRA)	? 1'b1:1'b0;
	assign _SRAV	= (MIPS == `mips_SRAV)	? 1'b1:1'b0;
	assign _SRL		= (MIPS == `mips_SRL)	? 1'b1:1'b0;
	assign _SRLV	= (MIPS == `mips_SRLV)	? 1'b1:1'b0;
	assign _SUB		= (MIPS == `mips_SUB)	? 1'b1:1'b0;
	assign _SUBU	= (MIPS == `mips_SUBU)	? 1'b1:1'b0;
	assign _XOR 	= (MIPS == `mips_XOR)	? 1'b1:1'b0;
	
	assign _ADDI	= (MIPS == `mips_ADDI)	? 1'b1:1'b0;
	assign _ADDIU	= (MIPS == `mips_ADDIU)	? 1'b1:1'b0;
	assign _ANDI	= (MIPS == `mips_ANDI)	? 1'b1:1'b0;
	assign _BEQ		= (MIPS == `mips_BEQ)	? 1'b1:1'b0;
	assign _BGTZ	= (MIPS == `mips_BGTZ)	? 1'b1:1'b0;
	assign _BLEZ	= (MIPS == `mips_BLEZ)	? 1'b1:1'b0;
	assign _BNE		= (MIPS == `mips_BNE)	? 1'b1:1'b0;
	assign _J		= (MIPS == `mips_J)		? 1'b1:1'b0;
	assign _JAL		= (MIPS == `mips_JAL)	? 1'b1:1'b0;
	assign _LB		= (MIPS == `mips_LB)		? 1'b1:1'b0;
	assign _LBU		= (MIPS == `mips_LBU)	? 1'b1:1'b0;
	assign _LH		= (MIPS == `mips_LH)		? 1'b1:1'b0;
	assign _LHU		= (MIPS == `mips_LHU)	? 1'b1:1'b0;
	assign _LUI		= (MIPS == `mips_LUI)	? 1'b1:1'b0;
	assign _LW		= (MIPS == `mips_LW)		? 1'b1:1'b0;
	assign _ORI		= (MIPS == `mips_ORI)	? 1'b1:1'b0;
	assign _SB		= (MIPS == `mips_SB)		? 1'b1:1'b0;
	assign _SH		= (MIPS == `mips_SH)		? 1'b1:1'b0;
	assign _SLTI	= (MIPS == `mips_SLTI)	? 1'b1:1'b0;
	assign _SLTIU	= (MIPS == `mips_SLTIU)	? 1'b1:1'b0;
	assign _SW		= (MIPS == `mips_SW)		? 1'b1:1'b0;
	assign _XORI	= (MIPS == `mips_XORI)	? 1'b1:1'b0;
	
	assign _BGEZ	= (MIPS == `mips_BGEZ)	? 1'b1:1'b0;
	assign _BLTZ	= (MIPS == `mips_BLTZ)	? 1'b1:1'b0;
	
	assign _ERET	= (MIPS == `mips_ERET)	? 1'b1:1'b0;
	assign _MFC0	= (MIPS == `mips_MFC0)	? 1'b1:1'b0;
	assign _MTC0	= (MIPS == `mips_MTC0)	? 1'b1:1'b0;
	/***************************************************************************/
	assign CAL_R = _ADD|_ADDU|_SUB|_SUBU|
						_SLT|_SLTU|_SLL|_SRL|_SRA|_SLLV|_SRLV|_SRAV|_AND|_OR|_XOR|_NOR;
						
	assign CAL_I = _ADDI|_ADDIU|_ANDI|_ORI|_XORI|_LUI|_SLTI|_SLTIU;
	
	assign LOAD_ =	_LB|_LBU|_LH|_LHU|_LW;
	
	assign STORE = _SB|_SH|_SW;
	
	assign B_CMP = _BEQ|_BGEZ|_BGTZ|_BLEZ|_BLTZ|_BNE;
	
	assign JUMP_ = _J|_JAL|_JALR|_JR;
	
	assign MOVE_ = _MFHI|_MFLO|_MTHI|_MTLO;
	/***************************************************************************/
	
endmodule
