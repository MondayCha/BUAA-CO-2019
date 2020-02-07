`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:05 12/08/2019 
// Design Name: 
// Module Name:    mf 
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

module mf(
	input [5:0] MIPS,
	input [31:0] HI, 
	input [31:0] LO,
	output reg [31:0] MFout
    );
	
	always @(*) begin
		case (MIPS)
			`mips_MFHI  : begin
							MFout <= HI;
						end
			`mips_MFLO  : begin
							MFout <= LO;
						end
			default  	: begin
							MFout <= 32'd0;
						end
		endcase
	end

endmodule
