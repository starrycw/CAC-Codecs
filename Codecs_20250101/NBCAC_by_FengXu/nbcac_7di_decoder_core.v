module nbcac_7di_decoder_core(
		output [6:0] v,
		input [10:1] d
		);

parameter	s1=8'd1,
			s2=8'd68,
			s3=8'd42,
			s4=8'd26,
			s5=8'd16,
			s6=8'd10,
			s7=8'd6,
			s8=8'd4,
			s9=8'd2,
			s10=8'd2;

assign v=s10*d[10]+s9*d[9]+s8*d[8]+s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule