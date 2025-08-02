`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:53:33
// Design Name: 
// Module Name: yellowCounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


/*
    A Counter for the common yellow Traffic Light
    Counts from 0-3
*/
module yellowCounter
(
  input clk,
 	output [1:0] count
);

  wire clk;
  reg[1:0] count;

  initial
    	count = 0;

  always @ ( negedge clk )
    		count[0] <= ~count[0];

  always @ ( negedge count[0] )
    		count[1] <= ~count[1];

endmodule