`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:34 11/17/2019 
// Design Name: 
// Module Name:    im 
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
module im(
	input [31:0] PC,
	/**************/
	output [31:0] instruction);
	
	integer i;
	reg [31:0] im[0:4095];
	wire [31:0] PC_SUB;
	// Generate an array of corresponding 32-bit registers with an IM capacity of 4KB (32bit ¡Á 1024 words)
	
	initial begin
		for(i = 0; i < 4096; i = i + 1) begin
			im[i] = 32'h0;
		end
		$readmemh("code.txt",im);
		$readmemh("code_handler.txt",im,1120,2047);
	end
	// Read instructions into IM
	assign PC_SUB = PC - 32'h00003000;
	assign instruction = im[PC_SUB[13:2]];
	
endmodule
