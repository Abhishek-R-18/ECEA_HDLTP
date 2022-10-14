`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 07:02:01 PM
// Design Name: 
// Module Name: add_test
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
module add_test;
    reg[1:0] A,B;
    wire[1:0] S;
    wire Cout;
    two_bit_adder tb(A,B,S,Cout);
    initial
        begin
            $monitor($time," A=%2b, B = %2b, Cout = %b, Sum = %2b",A,B,Cout,S); 
            #5 A=2'b00; B=2'b00;
            #5 A=2'b00; B=2'b01;
            #5 A=2'b00; B=2'b10;
            #5 A=2'b00; B=2'b11;
            
            #5 A=2'b01; B=2'b00;
            #5 A=2'b01; B=2'b01;
            #5 A=2'b01; B=2'b10;
            #5 A=2'b01; B=2'b11;
            
            #5 A=2'b10; B=2'b00;
            #5 A=2'b10; B=2'b01;
            #5 A=2'b10; B=2'b10;
            #5 A=2'b10; B=2'b11;
            
            #5 A=2'b11; B=2'b00;
            #5 A=2'b11; B=2'b01;
            #5 A=2'b11; B=2'b10;
            #5 A=2'b11; B=2'b11;
        end
endmodule
