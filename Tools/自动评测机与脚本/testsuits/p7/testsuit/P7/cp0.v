`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:01 12/14/2019 
// Design Name: 
// Module Name:    cp0 
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

module cp0(
	input reset,
	input clk,
	input [4:0] A1,		// 读CP0寄存器编号，执行MFC0指令时产生
	input [4:0] A2,		// 写CP0寄存器编号，执行MTC0指令时产生
	input [31:0] DIn,
	input [31:0] PC,
	input [6:2] ExcCode,
	input [5:0] HWInt,
	input We,				// CP0写使能，执行MTC0指令时产生
	// SR
	input EXLSet,			// 用于置位SR的EXL(EXL为1)，流水线在M阶段产生
	input EXLClr,			// 用于清除SR的EXL(EXL为0)，执行ERET指令时产生
	input delayslot,		// 分支跳转指令无论跳转与否，延迟槽指令为受害指令时BD均需要置位
	/*******************/
	output IntReq,
	output [31:0] EPC,
	output [31:0] DOut
    );
	 
	/*************************** 寄存器设计部分 *****************************/
	// 设计SR：{16'b0, im, 8'b0, exl, ie}
	reg [15:10] srim;
	reg exl, ie;
	wire [31:0] reg_SR = {16'b0, srim, 8'b0, exl, ie};
	
	// 设计CAUSE：{bd, 15'b0, hwint_pend[15:10], 3'b0, exccode[6:2], 2'b0}
	reg bd;
	reg [15:10] hwint_pend;
   reg [6:2] cause_exccode;
	wire [31:0] reg_CAUSE = {bd, 15'b0, hwint_pend, 3'b0, cause_exccode, 2'b0};
	
	// 设计EPC
	reg [31:0] reg_EPC;
	
	// 设计PRID
	reg [31:0] reg_PRID;
	
	// 其他内部连线
	wire interrupt,exception;
	
	/*************************** 初始化部分 *****************************/
	initial begin
		srim				<= 6'b0;
		exl				<= 1'b0;
		ie					<= 1'b0;
		// CAUSE
		bd					<= 1'b0;
		hwint_pend		<= 6'b0;
		cause_exccode	<= 5'b0;
		// EPC/PRID
		reg_EPC			<= 32'b0;
		reg_PRID 		<= 32'h18373580;
	end
	
	
	/*************************** 组合逻辑部分 *****************************/
									
	assign interrupt 	= (|(HWInt & srim)) & ie & !exl ;	// 中断
	assign exception 	= (ExcCode > 5'd0);						// 异常
	
	assign IntReq 		= interrupt | exception;
	
	assign EPC 	= reg_EPC;
	
	assign DOut = 	(A1 == `CP0_SR) 		? reg_SR :
						(A1 == `CP0_CAUSE) 	? reg_CAUSE :
						(A1 == `CP0_EPC) 		? reg_EPC :
						(A1 == `CP0_PRID) 	? reg_PRID :
						32'b0;

/*
	`define CP0_SR 	5'd12 
	`define CP0_CAUSE 5'd13 
	`define CP0_EPC 	5'd14
	`define CP0_PRID 	5'd15
	
	异常与中断的处理流程：

	Step1-引导与识别：读取Cause和EPC寄存器，判断错误类型。

	Step2-构造异常处理环境：保存现场。

	Step3-处理异常：根据异常类型和其他属性执行对应处理。

	Step4-准备返回：恢复现场。

	Step5-从异常返回：eret指令。
*/

	/*************************** 时序逻辑部分 *****************************/
	always @(posedge clk) begin
		if(reset) begin
			srim				<= 6'b0;
			exl				<= 1'b0;
			ie					<= 1'b0;
			bd					<= 1'b0;
			hwint_pend		<= 6'b0;
			cause_exccode	<= 5'b0;
			reg_EPC			<= 32'b0;
			reg_PRID 		<= 32'h18373580;
		end
		else begin
			if(We) begin // CP0写使能，执行MTC0指令时产生
				case(A2)
					`CP0_SR:		{srim, exl, ie} 	<= {DIn[15:10], DIn[1:0]};
					`CP0_EPC:	reg_EPC			<= {DIn[31:2], 2'b00};
					default:		reg_PRID			<= 32'h18373580;
					// 软件保证不会写入Cause和PRId，只会在上述情况中写入EPC
				endcase
			end
			else begin
				if(!exl) begin
					bd					<= delayslot;
					hwint_pend		<= HWInt;			// Cause寄存器的IP域每周期写入HWint对应位的值即可
					cause_exccode	<= ExcCode;
					reg_EPC			<= (delayslot) ? ({PC[31:2], 2'b00} - 4) : ({PC[31:2], 2'b00});
					// 进入异常处理程序之后不再修改
				end
				if(EXLSet) begin // IntReq
					exl	<= 1'b1;
				end
				if(EXLClr) begin // Instr_W == `i_eret
					exl	<= 1'b0;
				end
			end
		end
	end
	
	
	/*always @(*) begin
		hwint_pend		<= HWInt;
		if(IntReq) begin
			cause_exccode <= ExcCode;
		end
	 end
	
	always @(posedge clk) begin
		if(reset) begin
			srim				<= 6'b0;
			exl				<= 1'b0;
			ie					<= 1'b0;
			bd					<= 1'b0;
			// hwint_pend		<= 6'b0;
			// cause_exccode	<= 5'b0;
			reg_EPC			<= 32'b0;
		end
		else begin
			if(We) begin // CP0写使能，执行MTC0指令时产生
				case(A2)
					`CP0_SR:		{srim, exl, ie} 	<= {DIn[15:10], DIn[1:0]};
					// `CP0_CAUSE:	hwint_pend			<= DIn[15:10];
					`CP0_EPC:	reg_EPC				<= {DIn[31:2], 2'b00};
					default:		reg_PRID				<= 32'h18373580;
				endcase
			end
			if(EXLSet) begin
				exl	<= 1'b1;
			end
			if(EXLClr) begin
				exl	<= 1'b0;
			end
			if(IntReq) begin
				bd					<= delayslot ? 1'b1 : BranchInstr;
				reg_EPC			<= (BranchInstr|delayslot) ? ({PC[31:2], 2'b00} - 4) : ({PC[31:2], 2'b00});
			end
		end
	end*/

endmodule
