`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:26:47 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(input wire clk,input wire rst,input wire j,input wire k,output reg q,output reg qnot);

always @(posedge clk)
if(rst) q<=1'b0;
else 
case ({j,k})
 2'b00: q<=q;
 2'b01: q<=0;
 2'b10: q<=1;
 2'b11: q<=qnot;
 endcase

endmodule