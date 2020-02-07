`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:59 12/08/2019 
// Design Name: 
// Module Name:    dmb 
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

module dmb(
	input [31:0] DataIn,
	input [5:0] MIPS,
	input [31:0] addr,
	output reg [31:0] DataOut
    );
	 
	always @(*) begin
		case (MIPS)
			`mips_LB  : begin
							case (addr[1:0])
								2'b00  : DataOut <= {{24{DataIn[7]}},DataIn[7:0]};
								2'b01  : DataOut <= {{24{DataIn[15]}},DataIn[15:8]};
								2'b10  : DataOut <= {{24{DataIn[23]}},DataIn[23:16]};
								2'b11  : DataOut <= {{24{DataIn[31]}},DataIn[31:24]};
							endcase
						end
			`mips_LBU  : begin
							case (addr[1:0])
								2'b00  : DataOut <= {{24'b0},DataIn[7:0]};
								2'b01  : DataOut <= {{24'b0},DataIn[15:8]};
								2'b10  : DataOut <= {{24'b0},DataIn[23:16]};
								2'b11  : DataOut <= {{24'b0},DataIn[31:24]};
							endcase
						end
			`mips_LH  : begin
							case (addr[1])
								1'b0  : DataOut <= {{16{DataIn[15]}},DataIn[15:0]};
								1'b1  : DataOut <= {{16{DataIn[31]}},DataIn[31:16]};
							endcase
						end
			`mips_LHU  : begin
							case (addr[1])
								1'b0  : DataOut <= {{16'b0},DataIn[15:0]};
								1'b1  : DataOut <= {{16'b0},DataIn[31:16]};
							endcase
						end
			default: begin
							DataOut <= DataIn;
						end	//LW
		endcase
	end

endmodule
