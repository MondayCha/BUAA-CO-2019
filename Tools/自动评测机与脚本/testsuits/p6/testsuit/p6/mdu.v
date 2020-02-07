`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:25 12/08/2019 
// Design Name: 
// Module Name:    mdu 
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

module mdu(
	input clk,
	input reset,
	input start,
	input [31:0] D1,
	input [31:0] D2,
	input [5:0] MIPS,
	/**************/
	output BUSY,
	output [31:0] HI,
	output [31:0] LO
    );

	/*	
	* 添指令第八步：在这里修改MDU运算方式（4'b1011）
	*/

	reg [31:0] register_high, register_low;
	reg [31:0] cal_time;
	reg [63:0] result;
	reg busy;
	
	initial begin
		register_high <= 32'd0;
		register_low  <= 32'd0;
		cal_time <= 32'd0;
		busy <= 1'b0;
	end
	
	always @(posedge clk) begin
		if(reset) begin
			register_high <= 32'd0;
			register_low  <= 32'd0;
			cal_time <= 32'd0;
			busy <= 1'b0;
		end
		else if(!busy) begin
			if(start) begin
				case (MIPS)
					`mips_MULT  : begin
									result 	<= $signed(D1) * $signed(D2);
									cal_time <= 32'd5;
								end
					`mips_MULTU  : begin
									result 	<= D1 * D2;
									cal_time <= 32'd5;
								end
					`mips_DIV  : begin
									result 	<= {{$signed(D1) % $signed(D2)}, {$signed(D1) / $signed(D2)}};
									cal_time <= 32'd10;
								end
					`mips_DIVU  : begin
									result 	<= {{D1 % D2}, {D1 / D2}};
									cal_time <= 32'd10;
								end
					`mips_MADD  : begin
									result 	<= result + $signed(D1) * $signed(D2);
									cal_time <= 32'd5;
								end
				endcase
				busy <= 1'b1;
			end
			else begin
				case (MIPS)
					`mips_MTHI  : begin
									register_high 	<= D1;
								end
					`mips_MTLO  : begin
									register_low 	<= D1;
								end
				endcase
			end
		end
		else if(busy) begin
			if(cal_time != 32'd0) begin
				if(cal_time == 32'd1) begin
					{register_high, register_low} <= result;
					busy <= 1'b0;
				end
				cal_time <= cal_time - 32'd1;
			end
		end
	end
	
	assign HI = register_high;
	assign LO = register_low;
	assign BUSY = busy;

endmodule
