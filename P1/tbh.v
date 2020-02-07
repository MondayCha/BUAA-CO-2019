`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:29 10/18/2019
// Design Name:   string
// Module Name:   G:/STUDY/P1/tbh.v
// Project Name:  P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbh;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;
	wire [1:0] state;
	wire [1:0] chart;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out), 
		.state(state), 
		.chart(chart)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		#10;
		in = 8'd49;
		#10;
		in = 8'd42;
		#10;
		in = 8'd50;
		#10;
		in = 8'd43;
		#20;
		clr = 1'd1;
		#10;
		in = 8'd49;
		#10;
		clr = 1'd0;
		in = 8'd49;
		#10;
		in = 8'd42;
		#10;
		in = 8'd50;
		#10;
		in = 8'd43;
		#10;
		in = 8'd51;
		// Add stimulus here

	end
   
	always #5 begin
		clk = ~clk;
	end
endmodule

