`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/02 17:14:13
// Design Name: 
// Module Name: mux4TSV
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


module mux4TSV(
    input wire [2 : 0] ctrl_flags, 
    input wire [2 : 0] mux_in,
    output wire mux_out
    );
    
    // cnt   
    assign mux_out = (mux_in[0] & ctrl_flags[0]) | (mux_in[1] & ctrl_flags[1]) | (mux_in[2] & ctrl_flags[2]);
    
endmodule
