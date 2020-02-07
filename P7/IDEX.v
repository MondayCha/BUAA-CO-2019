`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:35 11/24/2019 
// Design Name: 
// Module Name:    IDEX 
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

module IDEX(
	input clk,
	input reset,
	input i_en,
	input overflow,
	/**************/
	input [31:0] Instr_D,
	input [31:0] PC_D,
	input [31:0] PC4_D,
	input [31:0] PC8_D,
	input [31:0] RD1_D,
	input [31:0] RD2_D,
	input [31:0] SignImm_D,
	input Newjudge_D,
	input [2:0] Tnew_D,
	/**************/
	output reg [31:0] Instr_E,
	output reg [31:0] PC_E,
	output reg [31:0] PC4_E,
	output reg [31:0] PC8_E,
	output reg [31:0] RD1_E,
	output reg [31:0] RD2_E,
	output reg [31:0] SignImm_E,
	output reg Newjudge_E,
	output reg [2:0] Tnew_E,
	output [4:0] ExcCode_E,
	input [4:0] Ein,
	output reg [4:0] Eout,
	input Delayslot_D,
	output reg Delayslot_E
    );
	 
	wire [5:0] MIPS;
	
	compiler E_Compiler (
		 .Instr(Instr_E), 
		 .MIPS(MIPS)
		 );

	initial begin
		Instr_E 		<= 32'h00000000;
		Tnew_E  		<= `Tnew_MAX;
		Eout 			<= `Int;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_E 	<= 32'h00000000;
			Tnew_E  	<= `Tnew_MAX;
			Eout 		<= `Int;
			Delayslot_E <= 1'b0;
		end
		else if(i_en) begin
			Instr_E		<= Instr_D;
			PC_E			<= PC_D;
			PC4_E			<= PC4_D;
			PC8_E			<= PC8_D;
			RD1_E			<= RD1_D;
			RD2_E			<= RD2_D;
			SignImm_E	<= SignImm_D;
			Newjudge_E	<= Newjudge_D;
			Tnew_E  		<= Tnew_D;
			Eout 			<= Ein;
			Delayslot_E <= Delayslot_D;
		end 
	end
	
	assign ExcCode_E =	(overflow & (MIPS == `mips_LW | MIPS == `mips_LB | MIPS == `mips_LH | MIPS == `mips_LBU | MIPS == `mips_LHU)) ? `AdEL :
								(overflow & (MIPS == `mips_SW | MIPS == `mips_SB | MIPS == `mips_SH)) ? `AdES :
								(overflow & (MIPS == `mips_ADD | MIPS == `mips_ADDI | MIPS == `mips_SUB)) ? `Ov :
								`Int;
								

endmodule
