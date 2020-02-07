`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:40 11/24/2019 
// Design Name: 
// Module Name:    cmp
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

module cmp(
	input [31:0] RD1, //rs
	input [31:0] RD2, //rt
	input [1:0] CMPOp,
	output reg CMP_out
    );
	
	always @(*) begin
		case(CMPOp)
			`CMP_equal:if(RD1 == RD2) begin
							CMP_out <= 1'b1;
						end
						else begin
							CMP_out <= 1'b0;
						end
			`CMP_greater:if($signed(RD1) > 0) begin
							CMP_out <= 1'b1;
						end
						else begin
							CMP_out <= 1'b0;
						end
			`CMP_less:if($signed(RD1) < 0) begin
							CMP_out <= 1'b1;
						end
						else begin
							CMP_out <= 1'b0;
						end
			2'b11: CMP_out <= 1'b0; 
		endcase
	end

endmodule
