module nbcac_8di_decoder_core(
		output [7:0] v,
		input [11:1] d
		);

parameter	s1=8'd1,
			s2=8'd110,
			s3=8'd68,
			s4=8'd42,
			s5=8'd26,
			s6=8'd16,
			s7=8'd10,
			s8=8'd6,
			s9=8'd4,
			s10=8'd2,
			s11=8'd2;

assign v=s11*d[11]+s10*d[10]+s9*d[9]+s8*d[8]+s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule