`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/02 21:29:33
// Design Name: 
// Module Name: mux_ctrl
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


module mux_ctrl(
    input wire clk, 
    input wire rst_n, 
    output reg [2:0] ctrl_flags
    );
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            ctrl_flags[2:0] <= 3'b001;
        end
        else begin
            ctrl_flags[2:0] <= {ctrl_flags[1:0], ctrl_flags[2]};
        end
    
    end
    
endmodule
