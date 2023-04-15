`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 08:54:00 PM
// Design Name: 
// Module Name: encoder_8_3
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


module encoder_8_3(I,En,Y);

        input [7:0] I;
        input En;
        output reg [2:0] Y;
        
        always@(I or En)
        begin
            if(En)
                case(I)
                8'b0000_0001: Y = 3'd0;
                8'b0000_0010: Y = 3'd1;
                8'b0000_0100: Y = 3'd2;
                8'b0000_1000: Y = 3'd3;
                8'b0001_0000: Y = 3'd4;
                8'b0010_0000: Y = 3'd5;
                8'b0100_0000: Y = 3'd6;
                8'b1000_0000: Y = 3'd7;
                endcase
            else;
        end     
endmodule
