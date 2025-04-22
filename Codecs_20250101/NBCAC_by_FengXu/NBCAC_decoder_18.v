module NBCAC_decoder_18(
    input wire clock,
    input wire rst_n,
    output reg [12:0] dataout,
    input wire [18:1] codein
);

    wire [12:0] dataout_wire;

    nbcac_13di_decoder_core core_instance(
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