`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// verilogCodeGen_ringCACCodec [ver = 20240221-01] [Creation Time = 2024_02_22-21_06_53]
// The top logic of the FNS-CATF decoder.
// codeword_bitwidth=5
//////////////////////////////////////////////////////////////////////////////////

`include "VHeader_FNSCATF.vh"

module FNSCATF_decoder_top_5(
    input wire clk,
    input wire rst_n,
    input wire [4 : 0] codeword_in,
    output reg [`VH_FNSCATF_DataInBitWidth_5bitCW - 1 : 0] data_reg
    );

    reg [4 : 0] code_reg;
    wire [4 : 0] code_in = code_reg[4 : 0] ^ codeword_in[4 : 0];
    wire [`VH_FNSCATF_DataInBitWidth_5bitCW - 1 : 0] data_out;

    FNSCATF_decoder_core_5 docoderCore_instance_5 (
        .codein(code_in),
        .dataout(data_out)
    );

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            data_reg[`VH_FNSCATF_DataInBitWidth_5bitCW - 1 : 0] <= { `VH_FNSCATF_DataInBitWidth_5bitCW{1'b0} };
            code_reg[4 : 0] <= { 4{1'b0} };
        end
        else begin
            data_reg <= data_out;
            code_reg <= codeword_in;
        end
    end

endmodule