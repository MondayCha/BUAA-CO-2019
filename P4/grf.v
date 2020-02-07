`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:56 11/17/2019 
// Design Name: 
// Module Name:    grf 
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
module grf(
	input clk,
	input reset,
	input WE,
	input [4:0] A1,
	input [4:0] A2,
	input [4:0] A3,
	input [31:0] WD,
	input [31:0] PC,
	/**************/
	output [31:0] RD1,
	output [31:0] RD2);
	
	reg [31:0] grf[31:0];
	integer i;
	
	initial begin
		for(i = 0; i < 32; i = i + 1) begin
			grf[i] <= 32'b0;
		end
	end
	
	assign RD1 = grf[A1];
	assign RD2 = grf[A2];
	
	always @(posedge clk) begin
		if(reset) begin
			for(i = 0; i < 32; i = i + 1) begin
				grf[i] <= 32'b0;
			end
		end
		else begin
			if(WE && A3 != 5'b00000) begin
				grf[A3] <= WD;
				$display("@%h: $%d <= %h", PC, A3, WD);
			end
		end
	end
	
endmodule
