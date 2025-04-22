`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/06 14:52:38
// Design Name: 
// Module Name: TNS_dec_22
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


`include "TNS.vh"
module TNS_dec_22(
    input wire clk,
    input wire rst_n,
    input wire [21:0] codein,
    output reg [`BLEN08_C - 1 : 0] dataout
    );
    
    wire [`BLEN08_C - 1 : 0] dataout_wire;
    assign dataout_wire = (codein[21]*`TNS08_C) + (codein[20]*`TNS07_A) + (codein[19]*`TNS07_B) + 
                    (codein[18]*`TNS07_C) + (codein[17]*`TNS06_A) + (codein[16]*`TNS06_B) + 
                    (codein[15]*`TNS06_C) + (codein[14]*`TNS05_A) + (codein[13]*`TNS05_B) + (codein[12]*`TNS05_C) + (codein[11]*`TNS04_A) +
                    (codein[10]*`TNS04_B) + (codein[9]*`TNS04_C) + (codein[8]*`TNS03_A) + (codein[7]*`TNS03_B) + (codein[6]*`TNS03_C) +
                    (codein[5]*`TNS02_A) + (codein[4]*`TNS02_B) + (codein[3]*`TNS02_C) + (codein[2]*`TNS01_A) + (codein[1]*`TNS01_B) +
                    (codein[0]*`TNS01_C);

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            dataout <= 0;
        end
        else begin
            dataout <= dataout_wire;
        end
    end
endmodule
