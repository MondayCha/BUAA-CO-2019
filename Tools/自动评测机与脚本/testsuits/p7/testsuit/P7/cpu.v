`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:57 12/13/2019 
// Design Name: 
// Module Name:    cpu 
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

module cpu(
	input clk,
   input reset,
	input [31:0] PrRD,
	input [7:2] HWInt,
	output [31:2] PrAddr,
	// output [3:0] PrBE,
	output [31:0] PC_addr,
	output [31:0] PrWD,
	output PrWe
    );
	 
	assign PrAddr 	= {ALUOut_M[31:2]};
	// assign PrBE		= ;
	assign PrWD		= MF_rt_M;
	assign PC_addr = PC_M;
	assign PrWe		= (con_o_MemWrite & (!cp0_IntReq));
	
	
	// ALU
	wire [31:0] alu_i_A_32, alu_i_B_32;
	wire [3:0] alu_i_ALUOp_4;
	wire [31:0] alu_o_Result_32;
	wire alu_o_overflow;
	//MUX_A
	wire [31:0] mux_o_A_32;
	//MUX_B
	wire [31:0] mux_o_B_32;
	// CONTROLLER
	wire [5:0] con_o_MIPS_6_D;
	wire [5:0] con_o_MIPS_6_E;
	wire [5:0] con_o_MIPS_6_M;
	wire [5:0] con_o_MIPS_6_W;
	wire [3:0] con_o_ALUOp_4;
	wire [1:0] con_o_RegDst_2_E;
	wire [1:0] con_o_RegDst_2_M;
	wire [1:0] con_o_RegDst_2_W;
	wire con_o_ALUSrcA;
	wire con_o_ALUSrcB;
	wire con_o_RegWrite_E;
	wire con_o_RegWrite_M;
	wire con_o_RegWrite_W;
	wire con_o_MemRead;
	wire con_o_MemWrite;
	wire con_o_start;
	wire con_o_CP0Write;
	wire con_o_jb;
	wire [2:0] con_o_MemtoReg_3_E;
	wire [2:0] con_o_MemtoReg_3_M;
	wire [2:0] con_o_MemtoReg_3_W;
	wire [3:0] con_o_Branch_4;
	wire [1:0] con_o_EXTOp_2;
	wire [1:0] con_o_CMPOp_2;
	// CMP
	wire [31:0] cmp_i_RD1_32, cmp_i_RD2_32;
	wire [1:0] cmp_i_op_2;
	wire cmp_judge;
	// DM
	wire dm_i_MemWrite, dm_i_MemRead;
	wire [5:0] dm_i_MIPS_6;
	wire [31:0] dm_i_addr_32;
	wire [31:0] dm_i_WriteData_32, dm_i_PC_32;
	wire [31:0] dm_o_ReadData_32;
	// DMB
	wire [31:0] dmb_i_Din; 
   wire [5:0] dmb_i_MIPS_6;
   wire [31:0] dmb_i_addr_32;
   wire [31:0] dmb_o_Dout;
	// EXT
	wire [15:0] ext_i_in_16;
	wire [1:0] ext_i_EXTOp_2;
	wire [31:0] ext_o_out_32;
	// GRF
	wire grf_i_WE;
	wire [4:0] grf_i_A1_5, grf_i_A2_5, grf_i_A3_5;
	wire [31:0] grf_i_WD_32, grf_i_PC_32;
	wire [31:0] grf_o_RD1_32, grf_o_RD2_32;
	//IM
	wire [31:0] im_i_PC_32;
	wire [31:0] im_o_Instr_32;
	// MDU
	wire mdu_i_start; 
	wire [31:0] mdu_i_D1_32;
	wire [31:0] mdu_i_D2_32;
	wire [5:0] mdu_i_MIPS_6;
	wire mdu_o_BUSY;
	wire [31:0] mdu_o_HI_32;
	wire [31:0] mdu_o_LO_32;
	// MUX_MF
	wire [31:0] mf_o_32;
	// NPC
	wire npc_i_cmp, npc_i_interrupt;
	wire [3:0] npc_i_branch_4;
	wire [25:0] npc_i_imm_26;
	wire [31:0] npc_i_jr_addr_32, npc_i_PC_32, npc_i_PC4D_32, npc_i_eret_addr_32;
	wire [31:0] npc_o_nextPC_32;
	// PC
	wire pc_i_en;
	wire [31:0] pc_i_nextPC_32;
	wire [31:0] pc_o_PC_32;
	// TIME
	wire time_o_need_rs;
	wire time_o_need_rt;
	wire [2:0] time_o_Tuse_rs; 
	wire [2:0] time_o_Tuse_rt;
	wire [2:0] time_o_Tnew;
	
	
	// IFID
	wire D_reset;
	wire [31:0] PC_D;
	wire [31:0] PC4_D;
	wire [31:0] PC8_D;
	wire [31:0] Instr_D;
	wire Delayslot_D;
	// IDEX
	wire E_reset;
	wire [31:0] Instr_E;
	wire [31:0] PC_E;
	wire [31:0] PC4_E;
	wire [31:0] PC8_E;
	wire [31:0] RD1_E;
	wire [31:0] RD2_E;
	wire [31:0] SignImm_E;
	wire [31:0] MFOut_E;
	// wire Newjudge_E;
	wire [2:0]  Tnew_E;
	wire Delayslot_E;
	// EXMEM
	wire M_reset;
	wire [31:0] Instr_M;
	wire [31:0] PC_M;
	wire [31:0] PC4_M;
	wire [31:0] PC8_M;
	wire [31:0] ALUOut_M;
	wire [31:0] RD2_M;
	wire [31:0] MFOut_M;
	// wire Newjudge_M;
	wire [2:0]  Tnew_M;
	wire [31:0] CP0_M;
	wire Delayslot_M;
	// MEMWB
	wire W_reset;
	wire [31:0] Instr_W;
	wire [31:0] PC_W;
	wire [31:0] PC4_W;
	wire [31:0] PC8_W;
	wire [31:0] ALUOut_W;
	wire [31:0] RD_W;
	wire [31:0] MFOut_W;
	// wire Newjudge_W;
	wire [2:0]  Tnew_W;
	wire [31:0] CP0_W;
	wire [31:0] PrRD_W;
	
	// STALL
	wire [31:0] DATA_W;
	wire pc_en;
	wire Instr_D_en;
	wire Instr_E_reset;
	wire [4:0] GRF_A3_W;
	wire [31:0] GRF_WD_W;
	wire [31:0] MF_rs_D;
	wire [31:0] MF_rt_D;
	wire [31:0] MF_rs_E;
	wire [31:0] MF_rt_E;
	wire [31:0] MF_rt_M;
	wire [31:0] MF_eret;
	
	// EXCCODE
	wire [6:2] ExcCode_F, ExcCode_D, ExcCode_E, ExcCode_M;
	wire [6:2] ExcCode_Ein, ExcCode_Min; 
	wire [6:2] ExcCode_Dout, ExcCode_Eout, ExcCode_Mout; 
	
	// CP0
	wire cp0_reset;
	wire [4:0] cp0_i_A1;
	wire [4:0] cp0_i_A2;
	wire [31:0] cp0_i_DIn;
	wire [31:0] cp0_i_PC;
	wire [6:2] cp0_i_ExcCode;
	wire [5:0] cp0_i_HWInt;
	wire cp0_i_We;
	// SR
	wire cp0_i_EXLSet;
	wire cp0_i_EXLClr;
	wire cp0_i_delayslot;
	/*******************/
	wire cp0_IntReq;
	wire [31:0] cp0_EPC;
	wire [31:0] cp0_DOut;
	
	pc F_PC (
		 .clk(clk), 
		 .reset(reset), 
		 .i_en(pc_i_en),
		 .i_nextPC(pc_i_nextPC_32), 
		 .o_PC(pc_o_PC_32),
		 .ExcCode_F(ExcCode_F)
		 );
	assign pc_i_en = pc_en | cp0_IntReq;
	assign pc_i_nextPC_32 = npc_o_nextPC_32;

	im F_IM (
		 .PC(im_i_PC_32), 
		 .instruction(im_o_Instr_32)
		 );
	assign im_i_PC_32 = pc_o_PC_32;
	
	IFID D_Register (
		 .clk(clk), 
		 .reset(D_reset), 
		 .i_en(Instr_D_en),
		 .ExcCode_F(ExcCode_F),
		 .PC_F(pc_o_PC_32), 
		 .Instr_F(im_o_Instr_32), 
		 .PC_D(PC_D), 
		 .PC4_D(PC4_D), 
		 .PC8_D(PC8_D), 
		 .Instr_D(Instr_D),
		 .ExcCode_D(ExcCode_D),
		 .Ein(ExcCode_F), 
		 .Eout(ExcCode_Dout),
		 .if_Delayslot(con_o_jb),
		 .Delayslot_D(Delayslot_D)
		 );
	assign D_reset = reset | cp0_IntReq | (Instr_D == `i_eret & Instr_D_en); // 在eret后插入一个nop
	
	grf D_GRF (
		 .clk(clk), 
		 .reset(reset), 
		 .WE(grf_i_WE), 
		 .A1(grf_i_A1_5), 
		 .A2(grf_i_A2_5), 
		 .A3(grf_i_A3_5), 
		 .WD(grf_i_WD_32), 
		 .PC(grf_i_PC_32), 
		 .RD1(grf_o_RD1_32), 
		 .RD2(grf_o_RD2_32)
		 );
	assign grf_i_WE = con_o_RegWrite_W;
	assign grf_i_A1_5 = Instr_D[`i_rs];
	assign grf_i_A2_5 = Instr_D[`i_rt];
	assign grf_i_A3_5 = GRF_A3_W;
	assign grf_i_WD_32 = GRF_WD_W;
	assign grf_i_PC_32 = PC_W;

	cmp D_CMP (
		 .RD1(cmp_i_RD1_32), 
		 .RD2(cmp_i_RD2_32), 
		 .CMPOp(cmp_i_op_2), 
		 .CMP_out(cmp_judge)
		 );
	assign cmp_i_RD1_32 = MF_rs_D;
	assign cmp_i_RD2_32 = MF_rt_D;
	assign cmp_i_op_2 = con_o_CMPOp_2;

	npc D_NPC (
		 .i_cmp(npc_i_cmp),
		 .interrupt(npc_i_interrupt),
		 .i_branch(npc_i_branch_4), 
		 .i_imm26(npc_i_imm_26), 
		 .i_jr_addr(npc_i_jr_addr_32), 
		 .i_eret_addr(npc_i_eret_addr_32),
		 .i_PC(npc_i_PC_32), 
		 .i_PC4_D(npc_i_PC4D_32), 
		 .o_nextPC(npc_o_nextPC_32)
		 );
	assign npc_i_cmp = cmp_judge;
	assign npc_i_interrupt = cp0_IntReq;
	assign npc_i_branch_4 = con_o_Branch_4;
	assign npc_i_imm_26 = Instr_D[`i_imm26];
	assign npc_i_jr_addr_32 = MF_rs_D;
	assign npc_i_eret_addr_32 = MF_eret;
	assign npc_i_PC_32 = pc_o_PC_32;
	assign npc_i_PC4D_32 = PC4_D;

	ext D_EXT (
		 .in(ext_i_in_16), 
		 .EXTOp(ext_i_EXTOp_2), 
		 .out(ext_o_out_32)
		 );
	assign ext_i_in_16 = Instr_D[`i_imm16];
	assign ext_i_EXTOp_2 = con_o_EXTOp_2;
		 
	controller D_CTRL (
		 .Instr(Instr_D),
		 .MIPS(con_o_MIPS_6_D),
		 .Branch(con_o_Branch_4), 
		 .EXTOp(con_o_EXTOp_2),
		 .CMPOp(con_o_CMPOp_2),
		 .this_is_jb(con_o_jb)
		 );
		 
	timecal D_TIME (
		 .MIPS(con_o_MIPS_6_D),
		 .need_rs(time_o_need_rs), 
		 .need_rt(time_o_need_rt), 
		 .Tuse_rs(time_o_Tuse_rs), 
		 .Tuse_rt(time_o_Tuse_rt), 
		 .Tnew(time_o_Tnew)
		 );

	IDEX E_Register (
		 .clk(clk), 
		 .reset(E_reset), 
		 .i_en({1'b1}),
		 .overflow(alu_o_overflow),
		 .Instr_D(Instr_D), 
		 .PC_D(PC_D), 
		 .PC4_D(PC4_D), 
		 .PC8_D(PC8_D), 
		 .RD1_D(MF_rs_D), 
		 .RD2_D(MF_rt_D),
		 // .Newjudge_D(Newjudge_D), // 进一步写连接线
		 .SignImm_D(ext_o_out_32), 
		 .Tnew_D(time_o_Tnew),
		 .Instr_E(Instr_E), 
		 .PC_E(PC_E), 
		 .PC4_E(PC4_E), 
		 .PC8_E(PC8_E), 
		 .RD1_E(RD1_E), 
		 .RD2_E(RD2_E), 
		 .SignImm_E(SignImm_E),
		 // .Newjudge_E(Newjudge_E), 
		 .Tnew_E(Tnew_E),
		 .ExcCode_E(ExcCode_E), 
		 .Ein(ExcCode_Ein), 
		 .Eout(ExcCode_Eout),
		 .Delayslot_D(Delayslot_D),
	    .Delayslot_E(Delayslot_E)
		 );
	assign E_reset = Instr_E_reset | reset | cp0_IntReq; //是否特判？
	assign ExcCode_Ein = (ExcCode_Dout == `Int) ? ExcCode_D : ExcCode_Dout;
	
	alu E_ALU (
		 .A(alu_i_A_32), 
		 .B(alu_i_B_32), 
		 .ALUOp(alu_i_ALUOp_4), 
		 .Result(alu_o_Result_32),
		 .overflow(alu_o_overflow)
		 );
	assign alu_i_A_32 = mux_o_A_32;
	assign alu_i_B_32 = mux_o_B_32;
	assign alu_i_ALUOp_4 = con_o_ALUOp_4;
		 
	mux_2_32 E_MUX_ALU_A (
		 .select(con_o_ALUSrcA), 
		 .mi1(MF_rs_E),
		 .mi2({27'b0,Instr_E[`i_shamt]}),
		 .mo(mux_o_A_32)
		 );
		 
	mux_2_32 E_MUX_ALU_B (
		 .select(con_o_ALUSrcB), 
		 .mi1(MF_rt_E),
		 .mi2(SignImm_E),
		 .mo(mux_o_B_32)
		 );
		 
	mdu E_MDU (
		 .clk(clk), 
		 .reset(reset), 
		 .interrupt(cp0_IntReq),
		 .start(mdu_i_start), 
		 .D1(mdu_i_D1_32), 
		 .D2(mdu_i_D2_32), 
		 .MIPS(mdu_i_MIPS_6), 
		 .BUSY(mdu_o_BUSY), 
		 .HI(mdu_o_HI_32), 
		 .LO(mdu_o_LO_32)
		 );
	
	assign mdu_i_start = con_o_start & (!cp0_IntReq); 
	assign mdu_i_D1_32 = MF_rs_E;
	assign mdu_i_D2_32 = MF_rt_E;
	assign mdu_i_MIPS_6 = con_o_MIPS_6_E;
	
	mf E_MF (
		 .MIPS(con_o_MIPS_6_E), 
		 .HI(mdu_o_HI_32), 
		 .LO(mdu_o_LO_32), 
		 .MFout(mf_o_32)
		 );
	
	controller E_CTRL (
		 .Instr(Instr_E),
		 // .RegJudge(Newjudge_E),
		 .MIPS(con_o_MIPS_6_E), 
		 .Start(con_o_start),
		 .RegDst(con_o_RegDst_2_E),
		 .RegWrite(con_o_RegWrite_E),
		 .ALUOp(con_o_ALUOp_4), 
		 .ALUSrcA(con_o_ALUSrcA), 
		 .ALUSrcB(con_o_ALUSrcB),
		 .MemtoReg(con_o_MemtoReg_3_E)
		 );

	EXMEM M_Register (
		 .clk(clk), 
		 .reset(M_reset), 
		 .i_en({1'b1}),
		 .Instr_E(Instr_E), 
		 .PC_E(PC_E), 
		 .PC4_E(PC4_E), 
		 .PC8_E(PC8_E), 
		 .ALUOut_E(alu_o_Result_32), 
		 .RD2_E(MF_rt_E),
		 .MFOut_E(mf_o_32),
		 // .Newjudge_E(Newjudge_E),
		 .Tnew_E(Tnew_E),
		 .Instr_M(Instr_M), 
		 .PC_M(PC_M), 
		 .PC4_M(PC4_M), 
		 .PC8_M(PC8_M), 
		 .ALUOut_M(ALUOut_M), 
		 .RD2_M(RD2_M),
		 .MFOut_M(MFOut_M),
		 // .Newjudge_M(Newjudge_M), 
		 .Tnew_M(Tnew_M),
		 .ExcCode_M(ExcCode_M), 
		 .Ein(ExcCode_Min), 
		 .Eout(ExcCode_Mout),
		 .Delayslot_E(Delayslot_E),
	    .Delayslot_M(Delayslot_M)
		 );
	assign M_reset = reset | cp0_IntReq;
	assign ExcCode_Min = (ExcCode_Eout == `Int) ? ExcCode_E : ExcCode_Eout;

	dm M_DM (
		 .clk(clk), 
		 .reset(reset), 
		 .MemWrite(dm_i_MemWrite), 
		 .MemRead(dm_i_MemRead), 
		 .MIPS(dm_i_MIPS_6),
		 .addr(dm_i_addr_32), 
		 .WriteData(dm_i_WriteData_32), 
		 .PC(dm_i_PC_32), 
		 .ReadData(dm_o_ReadData_32)
		 );
	assign dm_i_MemWrite = con_o_MemWrite & (!cp0_IntReq) & (ALUOut_M >= 32'h00000000 & ALUOut_M <= 32'h00002ffc);
	assign dm_i_MemRead = con_o_MemRead;
	assign dm_i_MIPS_6 =con_o_MIPS_6_M;
	assign dm_i_addr_32 = ALUOut_M;
	assign dm_i_WriteData_32 = MF_rt_M;
	assign dm_i_PC_32 = PC_M;
	
	cp0 CP0 (
		 .reset(cp0_reset), 
		 .clk(clk),
		 .A1(cp0_i_A1), 
		 .A2(cp0_i_A2), 
		 .DIn(cp0_i_DIn), 
		 .PC(cp0_i_PC), 
		 .ExcCode(cp0_i_ExcCode), 
		 .HWInt(cp0_i_HWInt), 
		 .We(cp0_i_We), 
		 .EXLSet(cp0_i_EXLSet), 
		 .EXLClr(cp0_i_EXLClr), 
		 .delayslot(cp0_i_delayslot),
		 .IntReq(cp0_IntReq), 
		 .EPC(cp0_EPC), 
		 .DOut(cp0_DOut)
		 );
	assign cp0_reset = reset;
	assign cp0_i_A1 = Instr_M[`i_rd];
	assign cp0_i_A2 = Instr_M[`i_rd];
	assign cp0_i_DIn = MF_rt_M;
	assign cp0_i_PC = PC_M;
	assign cp0_i_ExcCode = 	(|HWInt) ? `Int :
									(ExcCode_Mout == `Int) ? ExcCode_M : 
									ExcCode_Mout;
	assign cp0_i_HWInt = HWInt;
	assign cp0_i_We = con_o_CP0Write;
	assign cp0_i_EXLSet = cp0_IntReq;
	assign cp0_i_EXLClr = (Instr_W == `i_eret);
	assign cp0_i_delayslot = (Delayslot_M);
	
	controller M_CTRL (
		 .Instr(Instr_M),
		 // .RegJudge(Newjudge_M),
		 .MIPS(con_o_MIPS_6_M),
		 .RegDst(con_o_RegDst_2_M),
		 .RegWrite(con_o_RegWrite_M),
		 .MemRead(con_o_MemRead), 
		 .MemWrite(con_o_MemWrite),
		 .MemtoReg(con_o_MemtoReg_3_M),
		 .CP0Write(con_o_CP0Write)
		 );

	MEMWB W_Register (
		 .clk(clk), 
		 .reset(W_reset), 
		 .i_en({1'b1}),
		 .Instr_M(Instr_M), 
		 .PC_M(PC_M), 
		 .PC4_M(PC4_M), 
		 .PC8_M(PC8_M), 
		 .ALUOut_M(ALUOut_M), 
		 .RD_M(dm_o_ReadData_32),
		 .MFOut_M(MFOut_M),
		 // .Newjudge_M(Newjudge_M), 
		 .Tnew_M(Tnew_M),
		 .CP0_M(cp0_DOut),
		 .PrRD_M(PrRD),
		 .Instr_W(Instr_W), 
		 .PC_W(PC_W), 
		 .PC4_W(PC4_W), 
		 .PC8_W(PC8_W), 
		 .ALUOut_W(ALUOut_W), 
		 .RD_W(RD_W),
		 .MFOut_W(MFOut_W),
		 // .Newjudge_W(Newjudge_W),
		 .Tnew_W(Tnew_W),
		 .CP0_W(CP0_W),
		 .PrRD_W(PrRD_W)
		 );
	assign W_reset = reset | cp0_IntReq;
	
	dmb W_DMB (
		 .DataIn(dmb_i_Din), 
		 .MIPS(dmb_i_MIPS_6), 
		 .addr(dmb_i_addr_32), 
		 .DataOut(dmb_o_Dout)
		 );
	assign dmb_i_Din = RD_W; 
   assign dmb_i_MIPS_6 = con_o_MIPS_6_W;
   assign dmb_i_addr_32 = ALUOut_W; //
	assign DATA_W = (ALUOut_W >= 32'h00000000 & ALUOut_W <= 32'h00002ffc) ? dmb_o_Dout : 
							((ALUOut_W >= 32'h00007f00 & ALUOut_W <= 32'h00007f0b) | (ALUOut_W >= 32'h00007f10 & ALUOut_W <= 32'h00007f1b)) ? PrRD_W :
							32'b0;
	
	controller W_CTRL (
		 .Instr(Instr_W),
		 // .RegJudge(Newjudge_W),
		 .MIPS(con_o_MIPS_6_W),
		 .RegDst(con_o_RegDst_2_W),
		 .RegWrite(con_o_RegWrite_W),
		 .MemtoReg(con_o_MemtoReg_3_W)
		 );
	
	// Instantiate the module
	hazard HAZARD (
		 .Instr_D(Instr_D), 
		 .Instr_E(Instr_E), 
		 .Instr_M(Instr_M), 
		 .Instr_W(Instr_W), 
		 .con_o_RegDst_2_E(con_o_RegDst_2_E), 
		 .con_o_RegDst_2_M(con_o_RegDst_2_M), 
		 .con_o_RegDst_2_W(con_o_RegDst_2_W), 
		 .con_o_RegWrite_E(con_o_RegWrite_E), 
		 .con_o_RegWrite_M(con_o_RegWrite_M), 
		 .con_o_RegWrite_W(con_o_RegWrite_W), 
		 .con_o_MemtoReg_3_E(con_o_MemtoReg_3_E), 
		 .con_o_MemtoReg_3_M(con_o_MemtoReg_3_M), 
		 .con_o_MemtoReg_3_W(con_o_MemtoReg_3_W), 
		 .ALUOut_32_M(ALUOut_M), 
		 .ALUOut_32_W(ALUOut_W), 
		 .DM_RD_W(DATA_W),  
		 .CP0_W(CP0_W), 
		 .CP0_EPC(cp0_EPC),
		 .PC8_E(PC8_E), 
		 .PC8_M(PC8_M), 
		 .PC8_W(PC8_W), 
		 .RD1_D(grf_o_RD1_32), 
		 .RD2_D(grf_o_RD2_32), 
		 .RD1_E(RD1_E), 
		 .RD2_E(RD2_E), 
		 .RD2_M(RD2_M), 
		 .D_need_rs(time_o_need_rs), 
		 .D_need_rt(time_o_need_rt), 
		 .D_Tuse_rs(time_o_Tuse_rs), 
		 .D_Tuse_rt(time_o_Tuse_rt), 
		 .Tnew_E(Tnew_E), 
		 .Tnew_M(Tnew_M), 
		 .Tnew_W(Tnew_W),
		 .busy_E(mdu_o_BUSY), 
		 .start_E(con_o_start),
		 .MIPS_D(con_o_MIPS_6_D),
		 .MFOut_M(MFOut_M), 
		 .MFOut_W(MFOut_W), 
		 /*****************/
		 .GRF_A3_W(GRF_A3_W), 
		 .GRF_WD_W(GRF_WD_W), 
		 .pc_en(pc_en), 
		 .Instr_D_en(Instr_D_en), 
		 .Instr_E_reset(Instr_E_reset), 
		 .MF_rs_D(MF_rs_D), 
		 .MF_rt_D(MF_rt_D), 
		 .MF_rs_E(MF_rs_E), 
		 .MF_rt_E(MF_rt_E), 
		 .MF_rt_M(MF_rt_M), 
		 .MF_eret(MF_eret)
		 );

endmodule
