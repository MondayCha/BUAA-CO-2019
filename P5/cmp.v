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
module cmp(
	input [31:0] RD1, //rs
	input [31:0] RD2, //rt
	input [1:0] CMPOp,
	output reg CMP_out
    );
	
	always @(*) begin
		case(CMPOp)
			2'b00: 	if(RD1==RD2) begin
							CMP_out <= 1'b1;
						end
						else begin
							CMP_out <= 1'b0;
						end
			2'b01: CMP_out <= 1'b0;
						/*
						if(RD1[31]==1'b1 || RD1==32'h0) begin
									CMP_out <= 1'b1;
						end
						else begin
							CMP_out <= 1'b0;
						end
						*/
			2'b10: CMP_out <= 1'b0;
			2'b11: CMP_out <= 1'b0; 
		endcase
	end

endmodule
