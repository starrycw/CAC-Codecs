module NBCAC_decoder_26(
    input wire clock,
    input wire rst_n,
    output reg [17:0] dataout,
    input wire [26:1] codein
);

    wire [17:0] dataout_wire;

    nbcac_18di_decoder_core core_instance(
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