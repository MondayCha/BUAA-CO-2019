`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:13 11/17/2019 
// Design Name: 
// Module Name:    dm 
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
module dm(
	input clk,
	input reset,
	input MemWrite,
	input MemRead,
	input [31:0] addr,
	input	[31:0] WriteData,
	input	[31:0] PC,
	/**************/
	output [31:0] ReadData);
	
	reg [31:0] dm[0:1023];
	integer i;
	
	initial begin
		for(i = 0; i < 1024; i = i + 1) begin
			dm[i] <= 32'b0;
		end
	end
	
	assign ReadData = MemRead ? dm[addr[11:2]] : 0;
	
	always @(posedge clk) begin
		if(reset) begin
			for(i = 0; i < 1024; i = i + 1) begin
				dm[i] <= 32'b0;
			end
		end
		else begin
			if(MemWrite) begin
				dm[addr[11:2]] <= WriteData;
				$display("%d@%h: *%h <= %h", $time, PC, addr, WriteData);
			end
		end
	end
	
endmodule
