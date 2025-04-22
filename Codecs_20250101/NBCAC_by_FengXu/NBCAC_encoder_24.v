module NBCAC_encoder_24(
    input wire clock,
    input wire rst_n,
    input wire [16:0] datain,
    output reg [24:1] codeout
);

    wire [24:1] codeout_wire;

    nbcac_17di_encoder_core core_instance(
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