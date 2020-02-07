`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:06 11/17/2019 
// Design Name: 
// Module Name:    npc 
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
module npc(
	input i_Zero,
	input [1:0] i_branch,
	input [25:0] i_jal_addr,
	input [31:0] i_jr_addr,
	input [31:0] i_offset,
	input [31:0] i_PC,
	/**************/
	output reg [31:0] o_nextPC,
	output [31:0] o_PC4
    );
	
	`define beq		2'b01
	`define jal		2'b10
	`define jr		2'b11
	
	
	assign o_PC4 = i_PC + 4;
	
	always @(*) begin
		case (i_branch)
			`beq: begin
							if(i_Zero) begin
								o_nextPC <= o_PC4 + (i_offset << 2);
							end
							else begin
								o_nextPC <= o_PC4;
							end
						end
			`jal: begin
							o_nextPC <= {o_PC4[31:28],i_jal_addr[25:0],{2{1'b0}}};
						end
			`jr: begin
							o_nextPC <= i_jr_addr;
						end
			default: begin
							o_nextPC <= o_PC4;
						end
		endcase
	end
	
endmodule
