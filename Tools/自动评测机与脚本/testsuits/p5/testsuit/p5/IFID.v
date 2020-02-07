`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:05 11/24/2019 
// Design Name: 
// Module Name:    IFID 
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
module IFID(
	input clk,
	input reset,
	input i_en,
	/**************/
	input [31:0] PC_F,
	input [31:0] Instr_F,
	/**************/
	output reg[31:0] PC_D,
	output reg[31:0] PC4_D,
	output reg[31:0] PC8_D,
	output reg[31:0] Instr_D
    );
	
	initial begin
		Instr_D <= 32'h00000000;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_D <= 32'h00000000;
		end
		else if(i_en) begin
			Instr_D <= Instr_F;
			PC_D <= PC_F;
			PC4_D <= PC_F + 4;
			PC8_D <= PC_F + 8;
		end
	end

endmodule
