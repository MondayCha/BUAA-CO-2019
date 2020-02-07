`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:44 11/24/2019 
// Design Name: 
// Module Name:    mips 
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

module mips(
	input clk,
   input reset,
	input interrupt,
	output [31:0] addr
    );

	// CPU
	wire [31:0] cpu_i_PrRD;
	wire [7:2] cpu_i_HWInt;
	wire [31:2] cpu_o_PrAddr;
	// wire [3:0] cpu_o_PrBE;
	wire [31:0] cpu_o_PrWD;
	wire cpu_o_PrWe;
	// BRIDGE
	wire [31:2] bridge_DEV_Addr;
	wire [31:0] bridge_DEV_WD;
	wire bridge_DEV0_WE;
	wire bridge_DEV1_WE;
	wire [31:0] bridge_PrRD;
	// TIMER0
	wire [31:0] timer0_Dout;
	wire timer0_IRQ;
	// TIMER1
	wire [31:0] timer1_Dout;
	wire timer1_IRQ;


	cpu CPU (
		 .clk(clk), 
		 .reset(reset), 
		 .PrRD(cpu_i_PrRD), 
		 .HWInt(cpu_i_HWInt), 
		 .PrAddr(cpu_o_PrAddr), 
		 // .PrBE(cpu_o_PrBE), 
		 .PC_addr(addr),
		 .PrWD(cpu_o_PrWD), 
		 .PrWe(cpu_o_PrWe)
		 );
	assign cpu_i_PrRD = bridge_PrRD;
	assign cpu_i_HWInt = {3'b0, interrupt, timer1_IRQ, timer0_IRQ};
	// Timer0输出的中断请求信号接入HWInt[2] (最低中断位)，Timer1输出的中断请求信号接入HWInt[3]，来自MIPS微系统外部的中断请求信号接入HWInt[4]

	bridge BRIDGE (
		 .PrAddr(cpu_o_PrAddr), 
		 .PrWD(cpu_o_PrWD), 
		 .PrWe(cpu_o_PrWe), 
		 .DEV0_RD(timer0_Dout), 
		 .DEV1_RD(timer1_Dout), 
		 .DEV_Addr(bridge_DEV_Addr), 
		 .DEV_WD(bridge_DEV_WD), 
		 .DEV0_WE(bridge_DEV0_WE), 
		 .DEV1_WE(bridge_DEV1_WE), 
		 .PrRD(bridge_PrRD)
		 );

	timer TIMER0 (
		 .clk(clk), 
		 .reset(reset), 
		 .Addr(bridge_DEV_Addr), 
		 .WE(bridge_DEV0_WE), 
		 .Din(bridge_DEV_WD), 
		 .Dout(timer0_Dout), 
		 .IRQ(timer0_IRQ)
		 );

	timer TIMER1 (
		 .clk(clk), 
		 .reset(reset), 
		 .Addr(bridge_DEV_Addr), 
		 .WE(bridge_DEV1_WE), 
		 .Din(bridge_DEV_WD), 
		 .Dout(timer1_Dout), 
		 .IRQ(timer1_IRQ)
		 );
	
endmodule
