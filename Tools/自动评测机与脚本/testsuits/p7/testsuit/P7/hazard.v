`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:39 11/24/2019 
// Design Name: 
// Module Name:    hazard 
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

module hazard(
	input [31:0] Instr_D,
	input [31:0] Instr_E,
	input [31:0] Instr_M,
	input [31:0] Instr_W,
	
	input [1:0] con_o_RegDst_2_E,
	input [1:0] con_o_RegDst_2_M,
	input [1:0] con_o_RegDst_2_W,
	
	input con_o_RegWrite_E,
	input con_o_RegWrite_M,
	input con_o_RegWrite_W,
	
	input [2:0] con_o_MemtoReg_3_E,
	input [2:0] con_o_MemtoReg_3_M,
	input [2:0] con_o_MemtoReg_3_W,
	
	input [31:0] ALUOut_32_M,
	input [31:0] ALUOut_32_W,
	
	input [31:0] DM_RD_W,
	input [31:0] CP0_W,
	input [31:0] CP0_EPC,
	
	input [31:0] PC8_E,
	input [31:0] PC8_M,
	input [31:0] PC8_W,
	
	input [31:0] RD1_D,
	input [31:0] RD2_D,
	input [31:0] RD1_E,
	input [31:0] RD2_E,
	input [31:0] RD2_M,
	
	input D_need_rs,
	input D_need_rt,
	input [2:0] D_Tuse_rs,
	input [2:0] D_Tuse_rt,
	input [2:0] Tnew_E,
	input [2:0] Tnew_M,
	input [2:0] Tnew_W,
	
	input busy_E,
	input start_E,
	input [5:0] MIPS_D,
	input [31:0] MFOut_M,
	input [31:0] MFOut_W,
	/**************/
	output [4:0] GRF_A3_W,
	output [31:0] GRF_WD_W,
	
	output pc_en,
	output Instr_D_en,
	output Instr_E_reset,
	
	output [31:0] MF_rs_D,
	output [31:0] MF_rt_D,
	output [31:0] MF_rs_E,
	output [31:0] MF_rt_E,
	output [31:0] MF_rt_M,
	output [31:0] MF_eret
    );

	wire [4:0] GRF_A3_E, GRF_A3_M;
	wire [31:0] GRF_WD_E, GRF_WD_M;
	
	wire D_need_hl;
	
	wire stall;
	wire stall_rs, stall_rt, stall_hl, stall_eret;
	
	mux_3_5 E_MUX_A3 (
		 .select(con_o_RegDst_2_E), 
		 .mi1(Instr_E[`i_rt]), 
		 .mi2(Instr_E[`i_rd]), 
		 .mo(GRF_A3_E)
		 );
	
	mux_5_32 E_MUX_WD (
		 .select(con_o_MemtoReg_3_E), 
		 .mi1({32'b0}), 
		 .mi2({32'b0}), 
		 .mi3(PC8_E), 
		 .mi4({32'b0}), 
		 .mi5({32'b0}),
		 .mo(GRF_WD_E)
		 );
	
	mux_3_5 M_MUX_A3 (
		 .select(con_o_RegDst_2_M), 
		 .mi1(Instr_M[`i_rt]), 
		 .mi2(Instr_M[`i_rd]), 
		 .mo(GRF_A3_M)
		 );
		 
	mux_5_32 M_MUX_WD (
		 .select(con_o_MemtoReg_3_M), 
		 .mi1(ALUOut_32_M), 
		 .mi2({32'b0}), 
		 .mi3(PC8_M), 
		 .mi4(MFOut_M), 
		 .mi5({32'b0}),
		 .mo(GRF_WD_M)
		 );
	
	mux_3_5 W_MUX_A3 (
		 .select(con_o_RegDst_2_W), 
		 .mi1(Instr_W[`i_rt]), 
		 .mi2(Instr_W[`i_rd]), 
		 .mo(GRF_A3_W)
		 );
		 
	mux_5_32 W_MUX_WD (
		 .select(con_o_MemtoReg_3_W), 
		 .mi1(ALUOut_32_W), 
		 .mi2(DM_RD_W), 
		 .mi3(PC8_W), 
		 .mi4(MFOut_W), 
		 .mi5(CP0_W),
		 .mo(GRF_WD_W)
		 );
		 
	assign D_need_hl =   (MIPS_D == `mips_MULT) | (MIPS_D == `mips_MULTU) | 
								(MIPS_D == `mips_DIV) | (MIPS_D == `mips_DIVU) | 
								(MIPS_D == `mips_MFHI) | (MIPS_D == `mips_MFLO) | 
								(MIPS_D == `mips_MTHI) | (MIPS_D == `mips_MTLO);
	
	/*	
	* 添指令第九步：如果是乘除类指令，需要在这里添加D_need_hl
	*/
	
	assign stall_rs = (D_need_rs & (D_Tuse_rs < Tnew_E) & (GRF_A3_E != 5'h0) & (GRF_A3_E == Instr_D[`i_rs])) |
							(D_need_rs & (D_Tuse_rs < Tnew_M) & (GRF_A3_M != 5'h0) & (GRF_A3_M == Instr_D[`i_rs]));
							
	assign stall_rt = (D_need_rt & (D_Tuse_rt < Tnew_E) & (GRF_A3_E != 5'h0) & (GRF_A3_E == Instr_D[`i_rt])) |
							(D_need_rt & (D_Tuse_rt < Tnew_M) & (GRF_A3_M != 5'h0) & (GRF_A3_M == Instr_D[`i_rt]));
							
	assign stall_hl =	(D_need_hl & (busy_E|start_E));
	
	assign stall_eret = (MIPS_D == `mips_ERET) & (Instr_E[`i_op] == `typeCOP0 & Instr_E[`i_rs] == `type_MTC0 & Instr_E[`i_rd] == `CP0_EPC);
	
	assign stall = stall_rs | stall_rt | stall_hl | stall_eret;
	
	assign pc_en 			= ~stall;
	assign Instr_D_en 	= ~stall;
	assign Instr_E_reset = stall;
	
	assign MF_rs_D = (con_o_RegWrite_E && (Tnew_E == 3'd0) && (GRF_A3_E != 5'h0) && (GRF_A3_E == Instr_D[`i_rs])) ? GRF_WD_E :
						  (con_o_RegWrite_M && (Tnew_M == 3'd0) && (GRF_A3_M != 5'h0) && (GRF_A3_M == Instr_D[`i_rs])) ? GRF_WD_M :
						  (con_o_RegWrite_W && (Tnew_W == 3'd0) && (GRF_A3_W != 5'h0) && (GRF_A3_W == Instr_D[`i_rs])) ? GRF_WD_W :
																																						 RD1_D;
	
	assign MF_rt_D = (con_o_RegWrite_E && (Tnew_E == 3'd0) && (GRF_A3_E != 5'h0) && (GRF_A3_E == Instr_D[`i_rt])) ? GRF_WD_E :
						  (con_o_RegWrite_M && (Tnew_M == 3'd0) && (GRF_A3_M != 5'h0) && (GRF_A3_M == Instr_D[`i_rt])) ? GRF_WD_M :
						  (con_o_RegWrite_W && (Tnew_W == 3'd0) && (GRF_A3_W != 5'h0) && (GRF_A3_W == Instr_D[`i_rt])) ? GRF_WD_W :
																																						 RD2_D;
																																				
	assign MF_rs_E = (con_o_RegWrite_M && (Tnew_M == 3'd0) && (GRF_A3_M != 5'h0) && (GRF_A3_M == Instr_E[`i_rs])) ? GRF_WD_M :
						  (con_o_RegWrite_W && (Tnew_W == 3'd0) && (GRF_A3_W != 5'h0) && (GRF_A3_W == Instr_E[`i_rs])) ? GRF_WD_W :
																																						 RD1_E;
						  
	assign MF_rt_E = (con_o_RegWrite_M && (Tnew_M == 3'd0) && (GRF_A3_M != 5'h0) && (GRF_A3_M == Instr_E[`i_rt])) ? GRF_WD_M :
						  (con_o_RegWrite_W && (Tnew_W == 3'd0) && (GRF_A3_W != 5'h0) && (GRF_A3_W == Instr_E[`i_rt])) ? GRF_WD_W :
																																						 RD2_E;
																															  
	assign MF_rt_M = (con_o_RegWrite_W && (Tnew_W == 3'd0) && (GRF_A3_W != 5'h0) && (GRF_A3_W == Instr_M[`i_rt])) ? GRF_WD_W :
																																						 RD2_M;
	
	assign MF_eret = (MIPS_D == `mips_ERET) & (Instr_M[`i_op] == `typeCOP0 & Instr_M[`i_rs] == `type_MTC0 & Instr_M[`i_rd] == `CP0_EPC) ? MF_rt_M : CP0_EPC;
	
endmodule
