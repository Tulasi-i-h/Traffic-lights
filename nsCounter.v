`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:51:08
// Design Name: 
// Module Name: nsCounter
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
    A Counter for the North-South Traffic Light
    Counts from 0-31
*/
module nsCounter
(
    input clk,
    output [4:0] count
);

  wire clk;
  reg[4:0] count;

  initial
    	count = 0;

  always @ ( negedge clk )
    		count[0] <= ~count[0];

  always @ ( negedge count[0] )
    		count[1] <= ~count[1];

  always @ ( negedge count[1] )
    		count[2] <= ~count[2];

  always @ ( negedge count[2] )
    		count[3] <= ~count[3];

  always @ ( negedge count[3] )
    		count[4] <= ~count[4];

endmodule
