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
`include "macrodefine.v"

module npc(
	input i_cmp,
	input interrupt,
	input [3:0] i_branch,
	input [25:0] i_imm26,
	input [31:0] i_jr_addr,
	input [31:0] i_eret_addr,
	input [31:0] i_PC,
	input [31:0] i_PC4_D,
	/**************/
	output reg [31:0] o_nextPC
    );
	
	always @(*) begin
		if(interrupt) begin
			o_nextPC <= 32'h00004180;
		end
		else begin
			case (i_branch)
				`NPC_beq: begin
							if(i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_jal: begin
							o_nextPC <= {i_PC4_D[31:28],i_imm26[25:0],2'b00};
						end
				`NPC_j: begin
							o_nextPC <= {i_PC4_D[31:28],i_imm26[25:0],2'b00};
						end
				`NPC_jr: begin
							o_nextPC <= i_jr_addr;
						end
				`NPC_jalr: begin
							o_nextPC <= i_jr_addr;
						end
				`NPC_bgez: begin
							if(!i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_bgtz: begin
							if(i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_blez: begin
							if(!i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_bltz: begin
							if(i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_bne: begin
							if(!i_cmp) begin
								o_nextPC <= i_PC4_D + {{14{i_imm26[15]}},i_imm26[15:0],2'b00};
							end
							else begin
								o_nextPC <= i_PC4_D + 4;
							end
						end
				`NPC_eret: begin
							o_nextPC <= i_eret_addr;
						end
				default: begin
								o_nextPC <= i_PC + 4;
							end
			endcase
		end
	end
	
endmodule
