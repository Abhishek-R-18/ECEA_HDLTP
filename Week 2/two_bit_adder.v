`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 06:43:16 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    assign s = (a ^ b ^ cin);
    assign cout = ((a & b) | (b & cin) | (cin & a));
endmodule

module two_bit_adder(A,B,S,cout);
    input [1:0]A,B;
    output [1:0]S;
    output cout;
    wire c;
    fulladder FA1(A[0],B[0],0,S[0],c);
    fulladder FA2(A[1],B[1],c,S[1],cout);
endmodule