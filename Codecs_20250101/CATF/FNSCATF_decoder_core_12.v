`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// verilogCodeGen_ringCACCodec [ver = 20240221-01] [Creation Time = 2024_02_22-21_06_54]
// The core logic of the FNS-CATF decoder.
// codeword_bitwidth=12
//////////////////////////////////////////////////////////////////////////////////

`include "VHeader_FNSCATF.vh"

module FNSCATF_decoder_core_12(
    input wire [11 : 0] codein,
    output wire [`VH_FNSCATF_DataInBitWidth_12bitCW - 1 : 0] dataout
    );

    wire [10 : 0] code_q;

    assign code_q[10 : 0] = (codein[11] == 1'b0)? (codein[10 : 0]) : ({1'b0, codein[10 : 1]});
    assign dataout = (codein[11] * `VH_FNSCATF_NSValue_P11) + 
                        (code_q[10] * `VH_FNSCATF_NSValue_P10) + 
                        (code_q[9] * `VH_FNSCATF_NSValue_P9) + 
                        (code_q[8] * `VH_FNSCATF_NSValue_P8) + 
                        (code_q[7] * `VH_FNSCATF_NSValue_P7) + 
                        (code_q[6] * `VH_FNSCATF_NSValue_P6) + 
                        (code_q[5] * `VH_FNSCATF_NSValue_P5) + 
                        (code_q[4] * `VH_FNSCATF_NSValue_P4) + 
                        (code_q[3] * `VH_FNSCATF_NSValue_P3) + 
                        (code_q[2] * `VH_FNSCATF_NSValue_P2) + 
                        (code_q[1] * `VH_FNSCATF_NSValue_P1) + 
                        code_q[0];

endmodule
