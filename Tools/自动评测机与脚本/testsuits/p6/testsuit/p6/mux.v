`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:44 11/18/2019 
// Design Name: 
// Module Name:    mux 
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
module mux_2_32(
	input select,
	input [31:0] mi1,
	input [31:0] mi2,
	output [31:0] mo
    );
	
	assign mo = (select == 1'b0) ? mi1 : mi2;
	
endmodule

module mux_4_32(
	input [1:0] select,
	input [31:0] mi1, 
	input [31:0] mi2, 
	input [31:0] mi3, 
	input [31:0] mi4,
	output [31:0] mo
    );
	
	assign mo = (select == 2'b00) ? mi1 : 
					(select == 2'b01) ? mi2 : 
					(select == 2'b10) ? mi3 : 
					mi4;
	
endmodule

module mux_3_5(
	input [1:0] select,
	input [4:0] mi1, 
	input [4:0] mi2,
	output [4:0] mo
    );
	
	assign mo = (select == 2'b00) ? mi1 : 
					(select == 2'b01) ? mi2 : 
					5'b11111;
	
endmodule

