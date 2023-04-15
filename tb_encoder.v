`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 09:09:20 PM
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder;

        reg [7:0] I;
        reg En;
        wire [2:0] Y;
        
        encoder_8_3 EN(.I(I),.En(En),.Y(Y));
            initial
                begin
                En = 1;
                #100;
                I = 8'b0000_0001;
                #100;
                I = 8'b0000_0010;
                #100;
                I = 8'b0000_0100;
                #100;
                I = 8'b0000_1000;
                #100;
                I = 8'b0001_0000;
                #100;
                I = 8'b0010_0000;
                #100;
                I = 8'b0100_0000;
                #100;
                I = 8'b1000_0000;
                #100;
                
                $finish;
                end      
endmodule
