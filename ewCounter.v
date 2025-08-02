`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:52:11
// Design Name: 
// Module Name: ewCounter
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
    A Counter for the East-West Traffic Light
    Counts from 0-15
*/
module ewCounter
(
    input clk,
    output [3:0] count
);

  wire clk;
  reg[3:0] count;

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

endmodule