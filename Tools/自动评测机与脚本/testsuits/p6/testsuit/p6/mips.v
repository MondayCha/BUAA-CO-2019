`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:44 11/24/2019 
// Design Name: 
// Module Name:    mips 
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

module mips(
	input clk,
   input reset
    );
	 
	// ALU
	wire [31:0] alu_i_A_32, alu_i_B_32;
	wire [3:0] alu_i_ALUOp_4;
	wire [31:0] alu_o_Result_32;
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
	wire [1:0] con_o_MemtoReg_2_E;
	wire [1:0] con_o_MemtoReg_2_M;
	wire [1:0] con_o_MemtoReg_2_W;
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
	wire npc_i_cmp;
	wire [3:0] npc_i_branch_4;
	wire [25:0] npc_i_imm_26;
	wire [31:0] npc_i_jr_addr_32, npc_i_PC_32, npc_i_PC4D_32;
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
	wire [31:0] PC_D;
	wire [31:0] PC4_D;
	wire [31:0] PC8_D;
	wire [31:0] Instr_D;
	// IDEX
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
	// EXMEM
	wire [31:0] Instr_M;
	wire [31:0] PC_M;
	wire [31:0] PC4_M;
	wire [31:0] PC8_M;
	wire [31:0] ALUOut_M;
	wire [31:0] RD2_M;
	wire [31:0] MFOut_M;
	// wire Newjudge_M;
	wire [2:0]  Tnew_M;
	// MEMWB
	wire [31:0] Instr_W;
	wire [31:0] PC_W;
	wire [31:0] PC4_W;
	wire [31:0] PC8_W;
	wire [31:0] ALUOut_W;
	wire [31:0] RD_W;
	wire [31:0] MFOut_W;
	// wire Newjudge_W;
	wire [2:0]  Tnew_W;
	
	// STALL
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
	
	pc F_PC (
		 .clk(clk), 
		 .reset(reset), 
		 .i_en(pc_i_en),
		 .i_nextPC(pc_i_nextPC_32), 
		 .o_PC(pc_o_PC_32)
		 );
	assign pc_i_en = pc_en;
	assign pc_i_nextPC_32 = npc_o_nextPC_32;

	im F_IM (
		 .PC(im_i_PC_32), 
		 .instruction(im_o_Instr_32)
		 );
	assign im_i_PC_32 = pc_o_PC_32;
	
	IFID D_Register (
		 .clk(clk), 
		 .reset(reset), 
		 .i_en(Instr_D_en),
		 .PC_F(pc_o_PC_32), 
		 .Instr_F(im_o_Instr_32), 
		 .PC_D(PC_D), 
		 .PC4_D(PC4_D), 
		 .PC8_D(PC8_D), 
		 .Instr_D(Instr_D)
		 );

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
		 .i_branch(npc_i_branch_4), 
		 .i_imm26(npc_i_imm_26), 
		 .i_jr_addr(npc_i_jr_addr_32), 
		 .i_PC(npc_i_PC_32), 
		 .i_PC4_D(npc_i_PC4D_32), 
		 .o_nextPC(npc_o_nextPC_32)
		 );
	assign npc_i_cmp = cmp_judge;
	assign npc_i_branch_4 = con_o_Branch_4;
	assign npc_i_imm_26 = Instr_D[`i_imm26];
	assign npc_i_jr_addr_32 = MF_rs_D;
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
		 .CMPOp(con_o_CMPOp_2)
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
		 .reset({Instr_E_reset||reset}), 
		 .i_en({1'b1}),
		 .Instr_D(Instr_D), 
		 .PC_D(PC_D), 
		 .PC4_D(PC4_D), 
		 .PC8_D(PC8_D), 
		 .RD1_D(MF_rs_D), 
		 .RD2_D(MF_rt_D),
		 // .Newjudge_D(Newjudge_D), // ��һ��д������
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
		 .Tnew_E(Tnew_E)
		 );

	alu E_ALU (
		 .A(alu_i_A_32), 
		 .B(alu_i_B_32), 
		 .ALUOp(alu_i_ALUOp_4), 
		 .Result(alu_o_Result_32)
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
		 .start(mdu_i_start), 
		 .D1(mdu_i_D1_32), 
		 .D2(mdu_i_D2_32), 
		 .MIPS(mdu_i_MIPS_6), 
		 .BUSY(mdu_o_BUSY), 
		 .HI(mdu_o_HI_32), 
		 .LO(mdu_o_LO_32)
		 );
	
	assign mdu_i_start = con_o_start; 
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
		 .MemtoReg(con_o_MemtoReg_2_E)
		 );

	EXMEM M_Register (
		 .clk(clk), 
		 .reset(reset), 
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
		 .Tnew_M(Tnew_M)
		 );

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
	assign dm_i_MemWrite = con_o_MemWrite;
	assign dm_i_MemRead = con_o_MemRead;
	assign dm_i_MIPS_6 =con_o_MIPS_6_M;
	assign dm_i_addr_32 = ALUOut_M;
	assign dm_i_WriteData_32 = MF_rt_M;
	assign dm_i_PC_32 = PC_M;
	
	controller M_CTRL (
		 .Instr(Instr_M),
		 // .RegJudge(Newjudge_M),
		 .MIPS(con_o_MIPS_6_M),
		 .RegDst(con_o_RegDst_2_M),
		 .RegWrite(con_o_RegWrite_M),
		 .MemRead(con_o_MemRead), 
		 .MemWrite(con_o_MemWrite),
		 .MemtoReg(con_o_MemtoReg_2_M)
		 );

	MEMWB W_Register (
		 .clk(clk), 
		 .reset(reset), 
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
		 .Instr_W(Instr_W), 
		 .PC_W(PC_W), 
		 .PC4_W(PC4_W), 
		 .PC8_W(PC8_W), 
		 .ALUOut_W(ALUOut_W), 
		 .RD_W(RD_W),
		 .MFOut_W(MFOut_W),
		 // .Newjudge_W(Newjudge_W),
		 .Tnew_W(Tnew_W)
		 );
	
	dmb W_DMB (
		 .DataIn(dmb_i_Din), 
		 .MIPS(dmb_i_MIPS_6), 
		 .addr(dmb_i_addr_32), 
		 .DataOut(dmb_o_Dout)
		 );
	assign dmb_i_Din = RD_W; 
   assign dmb_i_MIPS_6 = con_o_MIPS_6_W;
   assign dmb_i_addr_32 = ALUOut_W; //
	
	controller W_CTRL (
		 .Instr(Instr_W),
		 // .RegJudge(Newjudge_W),
		 .MIPS(con_o_MIPS_6_W),
		 .RegDst(con_o_RegDst_2_W),
		 .RegWrite(con_o_RegWrite_W),
		 .MemtoReg(con_o_MemtoReg_2_W)
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
		 .con_o_MemtoReg_2_E(con_o_MemtoReg_2_E), 
		 .con_o_MemtoReg_2_M(con_o_MemtoReg_2_M), 
		 .con_o_MemtoReg_2_W(con_o_MemtoReg_2_W), 
		 .ALUOut_32_M(ALUOut_M), 
		 .ALUOut_32_W(ALUOut_W), 
		 .DM_RD_W(dmb_o_Dout), 
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
		 .MF_rt_M(MF_rt_M)
		 );
	
endmodule
