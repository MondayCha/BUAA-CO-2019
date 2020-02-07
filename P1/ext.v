`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:56 10/17/2019 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output reg [31:0] ext
    );
	 always @(*) begin
		case (EOp)
			2'b00  : begin
							if(imm[15] == 1) begin
								ext <= {{16{1'b1}},imm[15:0]};
							end
							else begin
								ext <= {16'b0,imm[15:0]};
							end
						end
			2'b01  : begin
							ext <= {16'b0,imm[15:0]};
						end
			2'b10  : begin
							ext <= {imm[15:0],16'b0};
						end
			2'b11  : begin
							if(imm[15] == 1) begin
								ext <= {{16{1'b1}},imm[15:0]};
							end
							else begin
								ext <= {16'b0,imm[15:0]};
							end
							ext <= ext << 2;
						end
			default: begin
						end
		endcase
	 end


endmodule
