`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:14:16 12/14/2019 
// Design Name: 
// Module Name:    exccode 
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

module exccode(
	input clk,
	input reset,
	input i_en,
	input [4:0] Ein,
	/***************/
	output reg [4:0] Eout
    );
	 
	initial begin
		Eout <= 5'h0;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			Eout <= `Int;
		end
		else begin
			Eout <= Ein;
		end
	end


endmodule
