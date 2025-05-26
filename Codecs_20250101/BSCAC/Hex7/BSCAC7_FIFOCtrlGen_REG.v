`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/26 23:59:00
// Design Name: 
// Module Name: BSCAC7_FIFOCtrlGen_REG
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: BSCAC7 encoder: Generate the FIFO ctrl signal. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BSCAC7_FIFOCtrlGen_REG(
    input wire clk,
    input wire rst_n,
    input wire [6 : 0] tsvs_state_current,
    input wire [6 : 0] data_2b_trans,
    output reg [6 : 1] ctrl_signals_reg // 0 - Locked/FIFO_Read Disabled; 1 - Free/FIFO_Read Enabled.
);

    wire [6 : 1] ctrl_signals;
    
    BSCAC7_FIFOCtrlGen instance01(
        .tsvs_state_current(tsvs_state_current),
        .data_2b_trans(data_2b_trans),
        .ctrl_signals(ctrl_signals)
        );

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            ctrl_signals_reg <= 0;
        end
        else begin
            ctrl_signals_reg <= ctrl_signals;
        end
    end


endmodule