module NBCAC_decoder_10(
    input wire clock,
    input wire rst_n,
    output reg [6:0] dataout,
    input wire [10:1] codein
);

    wire [6:0] dataout_wire;

    nbcac_7di_decoder_core core_instance(
        .v(dataout_wire),
        .d(codein)
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