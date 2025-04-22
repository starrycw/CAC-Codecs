module NBCAC_decoder_24(
    input wire clock,
    input wire rst_n,
    output reg [16:0] dataout,
    input wire [24:1] codein
);

    wire [16:0] dataout_wire;

    nbcac_17di_decoder_core core_instance(
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