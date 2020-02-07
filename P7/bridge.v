`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:55 12/13/2019 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
	input [31:2] PrAddr,
	input [31:0] PrWD,
	input PrWe,
	input [31:0] DEV0_RD,
	input [31:0] DEV1_RD,
	/**************/
	output [31:2] DEV_Addr,
	output [31:0] DEV_WD,
	output DEV0_WE,
	output DEV1_WE,
	output [31:0] PrRD
    );
	
	wire dev0_hit, dev1_hit;
	wire [31:0] addr32;
	
	assign addr32 = {PrAddr,2'b0};
	
	assign DEV_Addr = PrAddr;
	
	assign DEV_WD = PrWD;
	
	assign dev0_hit = (addr32 == 32'h00007f00 | addr32 == 32'h00007f04 | addr32 == 32'h00007f08);
	assign dev1_hit = (addr32 == 32'h00007f10 | addr32 == 32'h00007f14 | addr32 == 32'h00007f18);
	
	assign DEV0_WE = dev0_hit & PrWe;
	assign DEV1_WE = dev1_hit & PrWe;
	
	assign PrRD = 	dev0_hit ? DEV0_RD :
						dev1_hit ? DEV1_RD :
						32'h23333333;

endmodule
