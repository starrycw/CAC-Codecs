module IFNS_encoder_13(
    input wire clock,
    input wire rst_n,
    input wire [8:0] datain,
    output reg [13:1] codeout
);

    wire [13:1] codeout_wire;

    encoderIFNS_9di_core core_instance(
        .v(datain),
        .d13(codeout_wire[13]),
        .d12(codeout_wire[12]),
        .d11(codeout_wire[11]),
        .d10(codeout_wire[10]),
        .d9(codeout_wire[9]),
        .d8(codeout_wire[8]),
        .d7(codeout_wire[7]),
        .d6(codeout_wire[6]),
        .d5(codeout_wire[5]),
        .d4(codeout_wire[4]),
        .d3(codeout_wire[3]),
        .d2(codeout_wire[2]),
        .d1(codeout_wire[1])
    );

    //sync
    always @(posedge clock or negedge rst_n) begin
        if (~rst_n) begin
            codeout <= 0;
        end
        else begin
            codeout <= codeout_wire;
        end
    end

endmodule