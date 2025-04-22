module NBCAC_decoder_30(
    input wire clock,
    input wire rst_n,
    output reg [20:0] dataout,
    input wire [30:1] codein
);

    wire [20:0] dataout_wire;

    nbcac_21di_decoder_core core_instance(
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