module nbcac_4di_decoder_core(
		output [3:0] v,
		input [5:1] d
		);

parameter	s1=4'd1,
			s2=4'd6,
			s3=4'd4,
			s4=4'd2,
			s5=4'd2;

assign v=s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule