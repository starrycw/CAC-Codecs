module nbcac_5di_decoder_core(
		output [4:0] v,
		input [7:1] d
		);

parameter	s1=8'd1,
			s2=8'd16,
			s3=8'd10,
			s4=8'd6,
			s5=8'd4,
			s6=8'd2,
			s7=8'd2;

assign v=s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule