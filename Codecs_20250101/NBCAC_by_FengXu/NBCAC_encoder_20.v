module NBCAC_encoder_20(
    input wire clock,
    input wire rst_n,
    input wire [13:0] datain,
    output reg [20:1] codeout
);

    wire [20:1] codeout_wire;

    nbcac_14di_encoder_core core_instance(
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