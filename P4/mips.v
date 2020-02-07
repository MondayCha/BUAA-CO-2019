`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:03 11/17/2019 
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
module mips(
	input	clk,
	input reset);
	
	//INSTR
	wire [31:26] i_op;
	wire [25:21] i_rs;
	wire [20:16] i_rt;
	wire [15:11] i_rd;
	wire [10:6] i_shamt;
	wire [5:0] i_func;
	wire [15:0] i_imm16;
	wire [25:0] i_add26;
	// CONTROLLER
	wire [5:0] con_i_Op_6;
	wire [5:0] con_i_Fu_6;
	wire [2:0] con_o_ALUOp_3;
	wire [1:0] con_o_RegDst_2;
	wire con_o_ALUSrc;
	wire [1:0] con_o_MemtoReg_2;
	wire con_o_RegWrite;
	wire con_o_MemRead;
	wire con_o_MemWrite;
	wire [1:0] con_o_Branch_2;
	wire con_o_EXTOp;
	// PC
	wire [31:0] pc_i_nextPC_32;
	wire [31:0] pc_o_PC_32;
	// NPC
	wire npc_i_Zero;
	wire [1:0] npc_i_branch_2;
	wire [25:0] npc_i_jal_addr_26;
	wire [31:0] npc_i_jr_addr_32, npc_i_offset_32, npc_i_PC_32;
	wire [31:0] npc_o_nextPC_32, npc_o_PC4_32;
	//IM
	wire [31:0] im_i_PC_32;
	wire [31:0] im_o_Instr_32;
	// GRF
	wire grf_i_WE;
	wire [4:0] grf_i_A1_5, grf_i_A2_5, grf_i_A3_5;
	wire [31:0] grf_i_WD_32, grf_i_PC_32;
	wire [31:0] grf_o_RD1_32, grf_o_RD2_32;
	// MUX_A3
	wire [4:0] mux_o_A3_5;
	// MUX_WD
	wire [31:0] mux_o_WD_32;
	// EXT
	wire [15:0] ext_i_in_16;
	wire ext_i_EXTOp;
	wire [31:0] ext_o_out_32;
	// ALU
	wire [31:0] alu_i_A_32, alu_i_B_32;
	wire [2:0] alu_i_ALUOp_3;
	wire [31:0] alu_o_Result_32;
	wire alu_o_Zero;
	//ALU_B
	wire [31:0] mux_o_B_32;
	// DM
	wire dm_i_MemWrite, dm_i_MemRead;
	wire [31:0] dm_i_addr_32;
	wire [31:0] dm_i_WriteData_32, dm_i_PC_32;
	wire [31:0] dm_o_ReadData_32;
	
	assign i_op 		= im_o_Instr_32[31:26];
	assign i_rs 		= im_o_Instr_32[25:21];
	assign i_rt 		= im_o_Instr_32[20:16];
	assign i_rd 		= im_o_Instr_32[15:11];
	assign i_shamt 	= im_o_Instr_32[10:6];
	assign i_func 		= im_o_Instr_32[5:0];
	assign i_imm16 	= im_o_Instr_32[15:0];
	assign i_add26 	= im_o_Instr_32[25:0];
	
	controller CONTROLLER(
		con_i_Op_6,
		con_i_Fu_6,
		con_o_ALUOp_3,
		con_o_RegDst_2,
		con_o_ALUSrc,
		con_o_MemtoReg_2,
		con_o_RegWrite,
		con_o_MemRead,
		con_o_MemWrite,
		con_o_Branch_2,
		con_o_EXTOp
	);
	assign con_i_Op_6				= i_op;
	assign con_i_Fu_6				= i_func;
	
	pc PC(
		clk,
		reset,
		pc_i_nextPC_32,
		pc_o_PC_32
	);
	assign pc_i_nextPC_32		= npc_o_nextPC_32;
	
	npc NPC(
		npc_i_Zero,
		npc_i_branch_2,
		npc_i_jal_addr_26,
		npc_i_jr_addr_32,
		npc_i_offset_32,
		npc_i_PC_32,
		npc_o_nextPC_32,
		npc_o_PC4_32
	);
	assign npc_i_Zero	 			= alu_o_Zero;
	assign npc_i_branch_2 		= con_o_Branch_2;
	assign npc_i_jal_addr_26 	= i_add26;
	assign npc_i_jr_addr_32 	= alu_o_Result_32;
	assign npc_i_offset_32 		= ext_o_out_32;
	assign npc_i_PC_32 			= pc_o_PC_32;
	
	im IM(
		im_i_PC_32,
		im_o_Instr_32
	);
	assign im_i_PC_32				= pc_o_PC_32;
	
	grf GRF(
		clk,
		reset,
		grf_i_WE,
		grf_i_A1_5,
		grf_i_A2_5,
		grf_i_A3_5,
		grf_i_WD_32,
		grf_i_PC_32,
		grf_o_RD1_32,
		grf_o_RD2_32
	);
	assign grf_i_WE				= con_o_RegWrite;
	assign grf_i_A1_5 			= i_rs;
	assign grf_i_A2_5				= i_rt;
	assign grf_i_A3_5 			= mux_o_A3_5;
	assign grf_i_WD_32 			= mux_o_WD_32;
	assign grf_i_PC_32			= pc_o_PC_32;
	
	mux_3_5 GRF_A3(
		con_o_RegDst_2,
		i_rt,
		i_rd,
		mux_o_A3_5
	);
	
	mux_4_32 GRF_WD(
		con_o_MemtoReg_2,
		alu_o_Result_32,
		dm_o_ReadData_32,
		{i_imm16,{16{1'b0}}},
		npc_o_PC4_32,
		mux_o_WD_32
	);
	
	ext EXT(
		ext_i_in_16,
		ext_i_EXTOp,
		ext_o_out_32
	);
	assign ext_i_in_16			= i_imm16;
	assign ext_i_EXTOp			= con_o_EXTOp;
	
	alu ALU(
		alu_i_A_32,
		alu_i_B_32,
		alu_i_ALUOp_3,
		alu_o_Result_32,
		alu_o_Zero
	);
	assign alu_i_A_32				= grf_o_RD1_32;
	assign alu_i_B_32				= mux_o_B_32;
	assign alu_i_ALUOp_3			= con_o_ALUOp_3;
	
	mux_2_32 ALU_B(
		con_o_ALUSrc,
		grf_o_RD2_32,
		ext_o_out_32,
		mux_o_B_32
	);
	
	dm DM(
		clk,
		reset,
		dm_i_MemWrite,
		dm_i_MemRead,
		dm_i_addr_32,
		dm_i_WriteData_32, 
		dm_i_PC_32,
		dm_o_ReadData_32
	);
	assign dm_i_MemWrite			= con_o_MemWrite;
	assign dm_i_MemRead			= con_o_MemRead;
	assign dm_i_addr_32			= alu_o_Result_32;
	assign dm_i_WriteData_32	= grf_o_RD2_32;
	assign dm_i_PC_32				= pc_o_PC_32;
	
endmodule
