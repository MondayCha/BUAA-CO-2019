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
	input [4:0] A1,		// ��CP0�Ĵ�����ţ�ִ��MFC0ָ��ʱ����
	input [4:0] A2,		// дCP0�Ĵ�����ţ�ִ��MTC0ָ��ʱ����
	input [31:0] DIn,
	input [31:0] PC,
	input [6:2] ExcCode,
	input [5:0] HWInt,
	input We,				// CP0дʹ�ܣ�ִ��MTC0ָ��ʱ����
	// SR
	input EXLSet,			// ������λSR��EXL(EXLΪ1)����ˮ����M�׶β���
	input EXLClr,			// �������SR��EXL(EXLΪ0)��ִ��ERETָ��ʱ����
	input delayslot,		// ��֧��תָ��������ת����ӳٲ�ָ��Ϊ�ܺ�ָ��ʱBD����Ҫ��λ
	/*******************/
	output IntReq,
	output [31:0] EPC,
	output [31:0] DOut
    );
	 
	/*************************** �Ĵ�����Ʋ��� *****************************/
	// ���SR��{16'b0, im, 8'b0, exl, ie}
	reg [15:10] srim;
	reg exl, ie;
	wire [31:0] reg_SR = {16'b0, srim, 8'b0, exl, ie};
	
	// ���CAUSE��{bd, 15'b0, hwint_pend[15:10], 3'b0, exccode[6:2], 2'b0}
	reg bd;
	reg [15:10] hwint_pend;
   reg [6:2] cause_exccode;
	wire [31:0] reg_CAUSE = {bd, 15'b0, hwint_pend, 3'b0, cause_exccode, 2'b0};
	
	// ���EPC
	reg [31:0] reg_EPC;
	
	// ���PRID
	reg [31:0] reg_PRID;
	
	// �����ڲ�����
	wire interrupt,exception;
	
	/*************************** ��ʼ������ *****************************/
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
	
	
	/*************************** ����߼����� *****************************/
									
	assign interrupt 	= (|(HWInt & srim)) & ie & !exl ;	// �ж�
	assign exception 	= (ExcCode > 5'd0);						// �쳣
	
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
	
	�쳣���жϵĴ������̣�

	Step1-������ʶ�𣺶�ȡCause��EPC�Ĵ������жϴ������͡�

	Step2-�����쳣�������������ֳ���

	Step3-�����쳣�������쳣���ͺ���������ִ�ж�Ӧ����

	Step4-׼�����أ��ָ��ֳ���

	Step5-���쳣���أ�eretָ�
*/

	/*************************** ʱ���߼����� *****************************/
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
			if(We) begin // CP0дʹ�ܣ�ִ��MTC0ָ��ʱ����
				case(A2)
					`CP0_SR:		{srim, exl, ie} 	<= {DIn[15:10], DIn[1:0]};
					`CP0_EPC:	reg_EPC			<= {DIn[31:2], 2'b00};
					default:		reg_PRID			<= 32'h18373580;
					// �����֤����д��Cause��PRId��ֻ�������������д��EPC
				endcase
			end
			else begin
				if(!exl) begin
					bd					<= delayslot;
					hwint_pend		<= HWInt;			// Cause�Ĵ�����IP��ÿ����д��HWint��Ӧλ��ֵ����
					cause_exccode	<= ExcCode;
					reg_EPC			<= (delayslot) ? ({PC[31:2], 2'b00} - 4) : ({PC[31:2], 2'b00});
					// �����쳣�������֮�����޸�
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
			if(We) begin // CP0дʹ�ܣ�ִ��MTC0ָ��ʱ����
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
