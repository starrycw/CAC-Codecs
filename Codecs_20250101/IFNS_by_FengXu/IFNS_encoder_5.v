module IFNS_encoder_5(
    input wire clock,
    input wire rst_n,
    input wire [3:0] datain,
    output reg [5:1] codeout
);

    wire [5:1] codeout_wire;

    encoderIFNS_4di_core core_instance(
        .v(datain),
        .d(codeout_wire)
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