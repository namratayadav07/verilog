`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:27:59 PM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
reg j,k, clk;
wire q, qnot;


jk_ff dut(.q(q), .qnot(qnot), .j(j), .k(k), .clk(clk)); 


initial
$monitor("simtime = %g, clk = %b, j = %b, k = %b, q = %b, qnot = %b", $time, clk, j, k, q, qnot);


initial 
begin
  clk=0;
     forever #10 clk = ~clk;  
end 

initial
 begin 
 j= 1; k= 0;
 #100; j= 0; k= 1; 
 #100; j= 0; k= 0; 
 #100; j= 1; k=1; 
 end 
endmodule
