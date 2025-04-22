module nbcac_9di_decoder_core(
		output [8:0] v,
		input [13:1] d
		);

parameter	s1=16'd1,
			s2=16'd288,
			s3=16'd178,
			s4=16'd110,
			s5=16'd68,
			s6=16'd42,
			s7=16'd26,
			s8=16'd16,
			s9=16'd10,
			s10=16'd6,
			s11=16'd4,
			s12=16'd2,
			s13=16'd2;

assign v=s13*d[13]+s12*d[12]+s11*d[11]+s10*d[10]+s9*d[9]+s8*d[8]+s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule