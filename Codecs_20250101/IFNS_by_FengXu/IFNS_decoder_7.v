module IFNS_decoder_7(
    input wire clock,
    input wire rst_n,
    output reg [4:0] dataout,
    input wire [7:1] codein
);

    wire [4:0] dataout_wire;

    decoderIFNS_5di_core core_instance(
        .v(dataout_wire),
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