module IFNS_decoder_26(
    input wire clock,
    input wire rst_n,
    output reg [17:0] dataout,
    input wire [26:1] codein
);

    wire [17:0] dataout_wire;

    decoderIFNS_18di_core core_instance(
        .v(dataout_wire),
        .d26(codein[26]),
        .d25(codein[25]),
        .d24(codein[24]),
        .d23(codein[23]),
        .d22(codein[22]),
        .d21(codein[21]),
        .d20(codein[20]),
        .d19(codein[19]),
        .d18(codein[18]),
        .d17(codein[17]),
        .d16(codein[16]),
        .d15(codein[15]),
        .d14(codein[14]),
        .d13(codein[13]),
        .d12(codein[12]),
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