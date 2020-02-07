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
`include "macrodefine.v"

module IFID(
	input clk,
	input reset,
	input i_en,
	input [4:0] ExcCode_F,
	/**************/
	input [31:0] PC_F,
	input [31:0] Instr_F,
	/**************/
	output reg[31:0] PC_D,
	output reg[31:0] PC4_D,
	output reg[31:0] PC8_D,
	output reg[31:0] Instr_D,
	output [4:0] ExcCode_D,
	input [4:0] Ein,
	output reg [4:0] Eout,
	input if_Delayslot,
	output reg Delayslot_D
    );
	
	wire [5:0] MIPS;
	
	compiler D_Compiler (
		 .Instr(Instr_D), 
		 .MIPS(MIPS)
		 );
	
	initial begin
		Instr_D 	<= 32'h00000000;
		Eout 		<= `Int;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Instr_D 	<= 32'h00000000;
			Eout 		<= `Int;
		end
		else if(i_en) begin
			Instr_D <= (ExcCode_F == `Int) ? Instr_F : 32'h00000000;
			PC_D <= PC_F;
			PC4_D <= PC_F + 4;
			PC8_D <= PC_F + 8;
			Eout <= Ein;
			Delayslot_D <= if_Delayslot;
		end
	end
	
	assign ExcCode_D = (MIPS == `mips_RI) ? `RI : `Int;

endmodule
