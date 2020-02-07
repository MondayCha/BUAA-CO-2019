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
	input [5:0] D_Op,
	input [5:0] D_Func,
	/**************/
	output need_rs,
	output need_rt,
	output [2:0] Tuse_rs,
	output [2:0] Tuse_rt,
	output [2:0] Tnew
    );
	 
	// 添指令第六步：在这里写上名字！
	wire addu, subu, ori, lw, sw, beq, lui, j, jal, jr, jalr, sll;
	
	/***************************************************************************/
	/*	
	* 添指令第七步：复制controller中的assign块！
	*/
	
	assign addu = (D_Op == `R && D_Func == `addu)	? 1'b1:1'b0;
	assign subu	= (D_Op == `R && D_Func == `subu)	? 1'b1:1'b0;
	assign jr	= (D_Op == `R && D_Func == `jr) 		? 1'b1:1'b0;
	assign jalr	= (D_Op == `R && D_Func == `jalr)	? 1'b1:1'b0;
	assign sll	= (D_Op == `R && D_Func == `sll)		? 1'b1:1'b0;
	
	assign ori	= (D_Op == `ori)	? 1'b1:1'b0;
	assign lw	= (D_Op == `lw)	? 1'b1:1'b0;
	assign sw	= (D_Op == `sw)	? 1'b1:1'b0;
	assign beq	= (D_Op == `beq)	? 1'b1:1'b0;
	assign lui	= (D_Op == `lui)	? 1'b1:1'b0;
	assign j		= (D_Op == `j)		? 1'b1:1'b0;
	assign jal	= (D_Op == `jal)	? 1'b1:1'b0;
	/***************************************************************************/
	
	/***************************************************************************/
	// 立足D级，放眼前方
	assign need_rs = (addu|subu|ori|beq|lw|sw|jr|jalr)			? 1'b1:1'b0;
	assign need_rt	= (addu|subu|beq|sw)								? 1'b1:1'b0;
	
	// 立足D级，放眼前方
	assign Tuse_rs	= (addu|subu|ori|sw|lw) 		?  3'd1:
																	3'd0;
															
	assign Tuse_rt	= (sw)								?  3'd2:
						  (addu|subu)						?  3'd1:
																	3'd0;
	
	// 扎根E级，随叫随到
	assign Tnew		= (lw)								?  3'd2:
						  (addu|subu|ori|lui)			?  3'd1:
																	3'd0;
	/***************************************************************************/

endmodule
