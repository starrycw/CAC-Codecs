module IFNS_decoder_11(
    input wire clock,
    input wire rst_n,
    output reg [7:0] dataout,
    input wire [11:1] codein
);

    wire [7:0] dataout_wire;

    decoderIFNS_8di_core core_instance(
        .v(dataout_wire),
        .d11(codein[11]),
        .d10(codein[10]),
        .d9(codein[9]),
        .d8(codein[8]),
        .d7(codein[7]),
        .d6(codein[6]),
        .d5(codein[5]),
        .d4(codein[4]),
        .d3(codein[3]),
        .d2(codein[2]),
        .d1(codein[1])
    );

    //sync
    always @(posedge clock or negedge rst_n) begin
        if (~rst_n) begin
            dataout <= 0;
        end
        else begin
            dataout <= dataout_wire;
        end
    end

endmodule