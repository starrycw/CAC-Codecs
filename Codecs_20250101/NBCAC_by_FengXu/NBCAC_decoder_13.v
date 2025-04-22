module NBCAC_decoder_13(
    input wire clock,
    input wire rst_n,
    output reg [8:0] dataout,
    input wire [13:1] codein
);

    wire [8:0] dataout_wire;

    nbcac_9di_decoder_core core_instance(
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