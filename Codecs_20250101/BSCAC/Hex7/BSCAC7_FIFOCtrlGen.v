`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/26 21:00:00
// Design Name: 
// Module Name: BSCAC7_FIFOCtrlGen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: BSCAC7 encoder: Generate the FIFO ctrl signal . 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BSCAC7_FIFOCtrlGen(
    input wire [0 : 6] stsvs_state_current,
    input wire [0 : 6] data_2b_trans,
    output wire [1 : 6] ctrl_signals  // 0 - Locked/FIFO_Read Disabled; 1 - Free/FIFO_Read Enabled.
);

    // States next
    wire [0 : 6] stsvs_state_next;
    assign stsvs_state_next[0] = data_2b_trans[0]; // DTSV
    assign stsvs_state_next[1] = (ctrl_signals[1] == 1'b1)? (data_2b_trans[1]) : (stsvs_state_current[1]);
    assign stsvs_state_next[2] = (ctrl_signals[2] == 1'b1)? (data_2b_trans[2]) : (stsvs_state_current[2]);
    assign stsvs_state_next[3] = (ctrl_signals[3] == 1'b1)? (data_2b_trans[3]) : (stsvs_state_current[3]);
    assign stsvs_state_next[4] = (ctrl_signals[4] == 1'b1)? (data_2b_trans[4]) : (stsvs_state_current[4]);
    assign stsvs_state_next[5] = (ctrl_signals[5] == 1'b1)? (data_2b_trans[5]) : (stsvs_state_current[5]);
    assign stsvs_state_next[6] = (ctrl_signals[6] == 1'b1)? (data_2b_trans[6]) : (stsvs_state_current[6]);

    // XNORs
    wire [0 : 6] xnor_states;
    assign xnor_states[0 : 6] = stsvs_state_current[0 : 6] ~^ stsvs_state_next[0 : 6];

    // If DTSV state remains unchanged
    wire [1 : 6] flag_free_case0;
    assign flag_free_case0[1] = 1'b1;
    assign flag_free_case0[2] = (stsvs_state_current[2] ~^ stsvs_state_current[1]) | (xnor_states[1]);
    assign flag_free_case0[3] = (stsvs_state_current[3] ~^ stsvs_state_current[2]) | (xnor_states[2]);
    assign flag_free_case0[4] = (stsvs_state_current[4] ~^ stsvs_state_current[3]) | (xnor_states[3]);
    assign flag_free_case0[5] = (stsvs_state_current[5] ~^ stsvs_state_current[4]) | (xnor_states[4]);
    assign flag_free_case0[6] = (stsvs_state_current[6] ~^ stsvs_state_current[5]) | (xnor_states[5]);

    // If DTSV changes
    wire [1 : 6] flag_free_case1;
    wire privilege_c1 = stsvs_state_current[0] ~^ stsvs_state_current[1];
    wire privilege_c2 = stsvs_state_current[0] ~^ stsvs_state_current[2];
    wire privilege_c3 = stsvs_state_current[0] ~^ stsvs_state_current[3];
    wire privilege_c4 = stsvs_state_current[0] ~^ stsvs_state_current[4];
    wire privilege_c5 = stsvs_state_current[0] ~^ stsvs_state_current[5];
    wire privilege_c6 = stsvs_state_current[0] ~^ stsvs_state_current[6];

    assign flag_free_case1[1] = (privilege_c1) | 
                                ((~privilege_c6) & (~privilege_c2)) | 
                                (privilege_c6 & privilege_c2 & xnor_states[6] & xnor_states[2]);
    assign flag_free_case1[2] = (privilege_c2) | 
                                ((~privilege_c1) & (~privilege_c3)) | 
                                ((~privilege_c1) & (~xnor_states[1])) | 
                                (privilege_c1 & privilege_c3 & xnor_states[1] & xnor_states[3]);
    assign flag_free_case1[3] = (privilege_c3) | 
                                ((~privilege_c2) & (~privilege_c4)) | 
                                ((~privilege_c2) & (~xnor_states[2])) | 
                                (privilege_c2 & privilege_c4 & xnor_states[2] & xnor_states[4]);
    assign flag_free_case1[4] = (privilege_c4) | 
                                ((~privilege_c3) & (~privilege_c5)) | 
                                ((~privilege_c3) & (~xnor_states[3])) | 
                                (privilege_c3 & privilege_c5 & xnor_states[3] & xnor_states[5]);
    assign flag_free_case1[5] = (privilege_c5) | 
                                ((~privilege_c4) & (~privilege_c6)) | 
                                ((~privilege_c4) & (~xnor_states[4])) | 
                                (privilege_c4 & privilege_c6 & xnor_states[4] & xnor_states[6]);
    assign flag_free_case1[6] = (privilege_c6) | 
                                ((~privilege_c5) & (~privilege_c1)) | 
                                ((~privilege_c5) & (~xnor_states[5])) | 
                                ((~privilege_c1) & (~xnor_states[1])) | 
                                (privilege_c5 & privilege_c1 & xnor_states[5] & xnor_states[1]);

    // case mux
    assign ctrl_signals[1 : 6] = (xnor_states[0] == 1'b1)? (flag_free_case0[1 : 6]) : (flag_free_case1[1 : 6]);
    

endmodule