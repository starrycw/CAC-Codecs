module NBCAC_decoder_31(
    input wire clock,
    input wire rst_n,
    output reg [21:0] dataout,
    input wire [31:1] codein
);

    wire [21:0] dataout_wire;

    nbcac_22di_decoder_core core_instance(
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