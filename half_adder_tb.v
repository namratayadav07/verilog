`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2023 08:46:19 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
 reg a,b;
 wire sum,carry;
 
half_adder uut (.a(a),
.b(b),
.sum(sum),
.carry(carry));

initial
begin
#100;a=0;b=0;
#100;a=0;b=1;
#100;a=1;b=0;
#100;a=1;b=1;
end   
endmodule
