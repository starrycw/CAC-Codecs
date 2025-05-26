`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/26 23:35:00
// Design Name: 
// Module Name: BSCAC7_GPMux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: BSCAC7 encoder: Group MUX. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BSCAC7_GPMux(
    input wire [1 : 0] mux_sel,
    input wire [2 : 0] cand_tsv_current_state,
    input wire [2 : 0] cand_data_2b_trans,
    input wire ctrl_signal_bit,
    output wire sel_tsv_current_state,
    output wire sel_data_2b_trans,
    output wire sel_ctrl_signal_bit
    );


endmodule