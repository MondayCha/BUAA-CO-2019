`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:08 12/02/2019 
// Design Name: 
// Module Name:    timecal 
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

 module timecal(
	input [5:0] MIPS,
	// input RegJudge,
	/**************/
	output reg need_rs,
	output reg need_rt,
	output reg [2:0] Tuse_rs,
	output reg [2:0] Tuse_rt,
	output reg [2:0] Tnew
    );

	/*	
	* 添指令第七步：在这里修改Time！
	*/

	always @(*) begin
		case (MIPS)
			`mips_NOP: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_ADD: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_ADDI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_ADDIU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_ADDU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_AND: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_ANDI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_BEQ: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_BGEZ: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_BGTZ: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_BLEZ: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_BLTZ: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_BNE: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_DIV: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd0;
						  end
			`mips_DIVU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd0;
						  end
			`mips_J: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_JAL: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_JALR: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_JR: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_LB: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd2;
						  end
			`mips_LBU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd2;
						  end
			`mips_LH: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd2;
						  end
			`mips_LHU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd2;
						  end
			`mips_LUI: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_LW: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd2;
						  end
			`mips_MFHI: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_MFLO: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_MTHI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_MTLO: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
			`mips_MULT: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd0;
						  end
			`mips_MULTU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd0;
						  end
			`mips_NOR: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_OR: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_ORI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_SB: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd2;
								Tnew 		<= 3'd0;
						  end
			`mips_SH: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd2;
								Tnew 		<= 3'd0;
						  end
			`mips_SLL: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SLLV: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SLT: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SLTI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_SLTIU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_SLTU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SRA: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SRAV: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SRL: begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SRLV: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SUB: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SUBU: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_SW: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd2;
								Tnew 		<= 3'd0;
						  end
			`mips_XOR: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd1;
						  end
			`mips_XORI: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd1;
						  end
			`mips_MADD: begin
								need_rs 	<= 1'b1;
								need_rt 	<= 1'b1;
								Tuse_rs 	<= 3'd1;
								Tuse_rt 	<= 3'd1;
								Tnew 		<= 3'd0;
						  end
			default  : begin
								need_rs 	<= 1'b0;
								need_rt 	<= 1'b0;
								Tuse_rs 	<= 3'd0;
								Tuse_rt 	<= 3'd0;
								Tnew 		<= 3'd0;
						  end
		endcase
	end
	

endmodule
