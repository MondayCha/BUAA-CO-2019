`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:36 10/18/2019 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );
	 
	 reg [1:0] state;
	 wire [1:0] chart;
	 
	 initial begin
		state <= 2'b00;
		out <= 1'b0;
	 end
	 
	 assign chart = (in > 8'd47 && in < 8'd58) ? 2'b00 : ((in > 8'd41 && in < 8'd44) ? 2'b01 : 2'b10);
	 
	 always @(posedge clk or posedge clr) begin
		if(clr) begin
			state <= 2'b00;
			out <= 1'b0;
		end
		else begin
			case (state)
				2'b00  : begin
								case (chart)
									2'b00  : begin
													state <= 2'b01;
													out <= 1'b1;
												end
									default: begin
													state <= 2'b10;
													out <= 1'b0;
												end
								endcase
							end
				2'b01  : begin
								case (chart)
									2'b01  : begin
													state <= 2'b00;
													out <= 1'b0;
												end
									default: begin
													state <= 2'b10;
													out <= 1'b0;
												end
								endcase
							end
				2'b10  : begin
								state <= 2'b10;
								out <= 1'b0;
							end
				default: begin
								state <= 2'b10;
								out <= 1'b0;
							end
			endcase
		end
	 end


endmodule
