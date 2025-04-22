module NBCAC_encoder_10(
    input wire clock,
    input wire rst_n,
    input wire [6:0] datain,
    output reg [10:1] codeout
);

    wire [10:1] codeout_wire;

    nbcac_7di_encoder_core core_instance(
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