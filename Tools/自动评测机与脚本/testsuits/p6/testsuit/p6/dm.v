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
`include "macrodefine.v"

module dm(
	input clk,
	input reset,
	input MemWrite,
	input MemRead,
	input [5:0] MIPS,
	input [31:0] addr,
	input	[31:0] WriteData,
	input	[31:0] PC,
	/**************/
	output [31:0] ReadData);
	
	reg [31:0] dm[0:4095];
	integer i;
	
	initial begin
		for(i = 0; i < 4096; i = i + 1) begin
			dm[i] <= 32'b0;
		end
	end
	
	assign ReadData = MemRead ? dm[addr[13:2]] : 32'b0;
	
	always @(posedge clk) begin
		if(reset) begin
			for(i = 0; i < 1024; i = i + 1) begin
				dm[i] <= 32'b0;
			end
		end
		else begin
			if(MemWrite) begin
				if(MIPS == `mips_SH) begin
					if(addr[1] == 1'b1) begin
						dm[addr[13:2]][31:16] <= WriteData[15:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {WriteData[15:0],dm[addr[13:2]][15:0]});
					end
					else begin
						dm[addr[13:2]][15:0] <= WriteData[15:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {dm[addr[13:2]][31:16],WriteData[15:0]});
					end
				end
				else if(MIPS == `mips_SB) begin
					if(addr[1:0] == 2'b00) begin
						dm[addr[13:2]][7:0] <= WriteData[7:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {dm[addr[13:2]][31:8],WriteData[7:0]});
					end
					else if(addr[1:0] == 2'b01) begin
						dm[addr[13:2]][15:8] <= WriteData[7:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {dm[addr[13:2]][31:16],WriteData[7:0],dm[addr[13:2]][7:0]});
					end
					else if(addr[1:0] == 2'b10) begin
						dm[addr[13:2]][23:16] <= WriteData[7:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {dm[addr[13:2]][31:24],WriteData[7:0],dm[addr[13:2]][15:0]});
					end
					else if(addr[1:0] == 2'b11) begin
						dm[addr[13:2]][31:24] <= WriteData[7:0];
						$display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b0}, {WriteData[7:0],dm[addr[13:2]][23:0]});
					end
				end
				else begin
					dm[addr[13:2]] <= WriteData;
					$display("%d@%h: *%h <= %h", $time, PC, addr, WriteData);
				end
			end
		end
	end
	
endmodule
