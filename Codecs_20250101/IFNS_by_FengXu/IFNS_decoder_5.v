module IFNS_decoder_5(
    input wire clock,
    input wire rst_n,
    output reg [3:0] dataout,
    input wire [5:1] codein
);

    wire [3:0] dataout_wire;

    decoderIFNS_4di_core core_instance(
        .v(dataout_wire),
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