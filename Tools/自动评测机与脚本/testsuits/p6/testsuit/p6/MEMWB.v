`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:54 11/24/2019 
// Design Name: 
// Module Name:    MEMWB 
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

module MEMWB(
	input clk,
	input reset,
	input i_en,
	/**************/
	input [31:0] Instr_M,
	input [31:0] PC_M,
	input [31:0] PC4_M,
	input [31:0] PC8_M,
	input [31:0] ALUOut_M,
	input [31:0] RD_M,
	input [31:0] MFOut_M,
	input Newjudge_M,
	input [2:0]  Tnew_M,
	/**************/
	output reg [31:0] Instr_W,
	output reg [31:0] PC_W,
	output reg [31:0] PC4_W,
	output reg [31:0] PC8_W,
	output reg [31:0] ALUOut_W,
	output reg [31:0] RD_W,
	output reg [31:0] MFOut_W,
	output reg Newjudge_W,
	output reg [2:0]  Tnew_W
    );
	
	initial begin
		Instr_W <= 32'h00000000;
		Tnew_W  <= `Tnew_MAX;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_W <= 32'h00000000;
			Tnew_W  <= `Tnew_MAX;
		end
		else if(i_en) begin
			Instr_W		<= Instr_M;
			PC_W			<= PC_M;
			PC4_W			<= PC4_M;
			PC8_W			<= PC8_M;
			ALUOut_W		<= ALUOut_M;
			RD_W			<= RD_M;
			MFOut_W		<= MFOut_M;
			Newjudge_W	<= Newjudge_M;
			Tnew_W      <= (Tnew_M > 3'd0) ? (Tnew_M-1) : 3'd0;
		end
	end

endmodule
