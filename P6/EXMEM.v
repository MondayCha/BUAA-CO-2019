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
	output reg [2:0]  Tnew_M
    );

	initial begin
		Instr_M <= 32'h00000000;
		Tnew_M  <= `Tnew_MAX;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_M <= 32'h00000000;
			Tnew_M  <= `Tnew_MAX;
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
		end
	end

endmodule
