`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 18:20:11
// Design Name: 
// Module Name: GRE_array
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


module GRE_array 
( input clk,Rst,write_enable,flush,
  input [299:0] in,
  output reg [299:0] out
);

always @(posedge clk or posedge Rst) begin
    if(Rst) begin out =0;end
   else if(write_enable)
    begin if(flush)   begin out[31:0] =32'b0;out[299:64]=236'b0 ;end
    else out = in;
    end
end

endmodule
