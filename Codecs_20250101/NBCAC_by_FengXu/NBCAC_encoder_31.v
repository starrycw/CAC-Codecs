module NBCAC_encoder_33(
    input wire clock,
    input wire rst_n,
    input wire [22:0] datain,
    output reg [33:1] codeout
);

    wire [33:1] codeout_wire;

    nbcac_23di_encoder_core core_instance(
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