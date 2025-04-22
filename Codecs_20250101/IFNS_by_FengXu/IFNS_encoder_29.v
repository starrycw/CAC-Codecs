module IFNS_encoder_29(
    input wire clock,
    input wire rst_n,
    input wire [19:0] datain,
    output reg [29:1] codeout
);

    wire [29:1] codeout_wire;

    encoderIFNS_20di_core core_instance(
        .v(datain),
        .d29(codeout_wire[29]),
        .d28(codeout_wire[28]),
        .d27(codeout_wire[27]),
        .d26(codeout_wire[26]),
        .d25(codeout_wire[25]),
        .d24(codeout_wire[24]),
        .d23(codeout_wire[23]),
        .d22(codeout_wire[22]),
        .d21(codeout_wire[21]),
        .d20(codeout_wire[20]),
        .d19(codeout_wire[19]),
        .d18(codeout_wire[18]),
        .d17(codeout_wire[17]),
        .d16(codeout_wire[16]),
        .d15(codeout_wire[15]),
        .d14(codeout_wire[14]),
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