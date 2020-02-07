`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:03 11/24/2019 
// Design Name: 
// Module Name:    EXMEM 
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

module EXMEM(
	input clk,
	input reset,
	input i_en,
	/**************/
	input [31:0] Instr_E,
	input [31:0] PC_E,
	input [31:0] PC4_E,
	input [31:0] PC8_E,
	input [31:0] ALUOut_E,
	input [31:0] RD2_E,
	input [31:0] MFOut_E,
	input Newjudge_E,
	input [2:0]  Tnew_E,
	/**************/
	output reg [31:0] Instr_M,
	output reg [31:0] PC_M,
	output reg [31:0] PC4_M,
	output reg [31:0] PC8_M,
	output reg [31:0] ALUOut_M,
	output reg [31:0] RD2_M,
	output reg [31:0] MFOut_M,
	output reg Newjudge_M,
	output reg [2:0]  Tnew_M,
	/**************/
	output [4:0] ExcCode_M,
	input [4:0] Ein,
	output reg [4:0] Eout,
	input Delayslot_E,
	output reg Delayslot_M
    );

	wire [5:0] MIPS;
	
	compiler M_Compiler (
		 .Instr(Instr_M), 
		 .MIPS(MIPS)
		 );
	
	initial begin
		Instr_M 	<= 32'h00000000;
		Tnew_M  	<= `Tnew_MAX;
		Eout 		<= `Int;
		Delayslot_M <= 1'b0;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_M 	<= 32'h00000000;
			Tnew_M  	<= `Tnew_MAX;
			Eout 		<= `Int;
		end
		else if(i_en) begin
			Instr_M		<= Instr_E;
			PC_M			<= PC_E;
			PC4_M			<= PC4_E;
			PC8_M			<= PC8_E;
			ALUOut_M		<= ALUOut_E;
			RD2_M			<= RD2_E;
			MFOut_M		<= MFOut_E;
			Newjudge_M	<= Newjudge_E;
			Tnew_M      <= (Tnew_E > 3'd0) ? (Tnew_E-1) : 3'd0;
			Eout 			<= Ein;
			Delayslot_M <= Delayslot_E;
		end
	end
	
	assign ExcCode_M =	(
								// Load类计算地址加法溢出，取数地址超出DM、Timer0、Timer1的范围
								((MIPS == `mips_LW | MIPS == `mips_LB | MIPS == `mips_LH | MIPS == `mips_LBU | MIPS == `mips_LHU) & 
								(ALUOut_M < 32'h00000000 | (ALUOut_M > 32'h00002fff & ALUOut_M < 32'h00007f00) | 
								(ALUOut_M > 32'h00007f0b & ALUOut_M < 32'h00007f10) | ALUOut_M > 32'h00007f1b))
								|
								// lw取数地址未4字节对齐，lh/lhu取数地址未2字节对齐
								((MIPS == `mips_LW & ALUOut_M[1:0] != 2'b00) | ((MIPS == `mips_LH | MIPS == `mips_LHU) & ALUOut_M[0] != 1'b0))
								| 
								// lh/lb/lhu/lbu取Timer寄存器的值
								((MIPS == `mips_LB | MIPS == `mips_LH | MIPS == `mips_LBU | MIPS == `mips_LHU) & 
								((ALUOut_M >= 32'h00007f00 & ALUOut_M <= 32'h00007f0b) | 
								(ALUOut_M >= 32'h00007f10 & ALUOut_M <= 32'h00007f1b)))
								) ? `AdEL :
								(
								// sw存数地址未4字节对齐，sh存数地址未2字节对齐
								((MIPS == `mips_SW & ALUOut_M[1:0] != 2'b00) | (MIPS == `mips_SH & ALUOut_M[0] != 1'b0))
								|
								// sh/sb存Timer寄存器的值
								((MIPS == `mips_SB | MIPS == `mips_SH) &
								((ALUOut_M >= 32'h00007f00 & ALUOut_M <= 32'h00007f0b) | 
								(ALUOut_M >= 32'h00007f10 & ALUOut_M <= 32'h00007f1b)))
								|
								// Store类计算地址溢出，向计时器的Count寄存器存值，存数地址超出DM、Timer0、Timer1的范围
								((MIPS == `mips_SB | MIPS == `mips_SH | MIPS == `mips_SW) &
								(ALUOut_M < 32'h00000000 | (ALUOut_M > 32'h00002fff & ALUOut_M < 32'h00007f00) | 
								(ALUOut_M > 32'h00007f07 & ALUOut_M < 32'h00007f10) | ALUOut_M > 32'h00007f17))
								) ? `AdES :
								`Int;

endmodule
