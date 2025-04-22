module NBCAC_decoder_23(
    input wire clock,
    input wire rst_n,
    output reg [15:0] dataout,
    input wire [23:1] codein
);

    wire [15:0] dataout_wire;

    nbcac_16di_decoder_core core_instance(
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