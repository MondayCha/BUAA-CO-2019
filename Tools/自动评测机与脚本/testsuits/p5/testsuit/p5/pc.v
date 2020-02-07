`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:31 11/17/2019 
// Design Name: 
// Module Name:    pc 
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
module pc(
	input clk,
	input reset,
	input i_en,
	input [31:0] i_nextPC,
	/**************/
	output reg [31:0] o_PC);
	
	initial begin
		o_PC <= 32'h00003000;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			o_PC <= 32'h00003000;
			// reset to 0x00003000
		end
		else if(i_en) begin
			o_PC <= i_nextPC;
		end
		else begin
			o_PC <= o_PC;
		end
	end

endmodule
