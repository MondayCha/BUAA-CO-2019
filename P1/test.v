`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:30:02 10/17/2019
// Design Name:   alu
// Module Name:   G:/STUDY/P1/test.v
// Project Name:  P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		#5;
		A = 5;
		B = 63;
		ALUOp = 3'b000;
		#5;
      A = 79;
		B = 63;
		ALUOp = 3'b001;
		
		#5;
      A = 32'b1010_1010_1000_0111_0001_1001_1001_1010;
		B = 7;
		ALUOp = 3'b101;
	end
      
endmodule

