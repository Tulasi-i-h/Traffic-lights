`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:49:53
// Design Name: 
// Module Name: Traffic
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


module Traffic
(
  input [4:0] nsCounter,
  input [3:0] ewCounter,
  input [1:0] yellowCounter,
  input NS_VEHICLE_DETECT,
  input EW_VEHICLE_DETECT,
  output reg NS_RED,
  output reg NS_YELLOW,
  output reg NS_GREEN,
  output reg EW_RED,
  output reg EW_YELLOW,
  output reg EW_GREEN
);

  // Sets the start state at: 001100
  initial begin
    NS_RED <= 0;
    NS_YELLOW <= 0;
    NS_GREEN <= 1;
    EW_RED <= 1;
    EW_YELLOW <= 0;
    EW_GREEN <= 0;
  end

  always @ (nsCounter) begin
  	// Sets the start state at: 010100
    if (nsCounter == 31 & EW_VEHICLE_DETECT & NS_GREEN) begin
       NS_RED <= 0;
       NS_YELLOW <= 1;
       NS_GREEN <= 0;
       EW_RED <= 1;
       EW_YELLOW <= 0;
       EW_GREEN <= 0;
    end
  end

  // Sets the start state at: 100010
  always @ (ewCounter) begin
    if (ewCounter == 15 & EW_GREEN) begin
       NS_RED <= 1;
       NS_YELLOW <= 0;
       NS_GREEN <= 0;
       EW_RED <= 0;
       EW_YELLOW <= 1;
       EW_GREEN <= 0;
    end
  end

  // Sets the start state at: 001100
  always @ (yellowCounter) begin
    if (yellowCounter == 3 & NS_YELLOW) begin
       NS_RED <= 1;
       NS_YELLOW <= 0;
       NS_GREEN <= 0;
       EW_RED <= 0;
       EW_YELLOW <= 0;
       EW_GREEN <= 1;
    end

    // Sets the start state at: 100001
    if (yellowCounter == 3 & EW_YELLOW) begin
       NS_RED <= 0;
       NS_YELLOW <= 0;
       NS_GREEN <= 1;
       EW_RED <= 1;
       EW_YELLOW <= 0;
       EW_GREEN <= 0;
    end
  end
endmodule
