module IFNS_encoder_8(
    input wire clock,
    input wire rst_n,
    input wire [5:0] datain,
    output reg [8:1] codeout
);

    wire [8:1] codeout_wire;

    encoderIFNS_6di_core core_instance(
        .v(datain),
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