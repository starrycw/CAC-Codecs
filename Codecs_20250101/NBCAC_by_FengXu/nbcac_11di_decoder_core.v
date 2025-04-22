module nbcac_11di_decoder_core(
		output [10:0] v,
		input [16:1] d
		);

parameter	s1=16'd1,
			s2=16'd1220,
			s3=16'd754,
			s4=16'd466,
			s5=16'd288,
			s6=16'd178,
			s7=16'd110,
			s8=16'd68,
			s9=16'd42,
			s10=16'd26,
			s11=16'd16,
			s12=16'd10,
			s13=16'd6,
			s14=16'd4,
			s15=16'd2,
			s16=16'd2;

assign v=s16*d[16]+s15*d[15]+s14*d[14]+s13*d[13]+s12*d[12]+s11*d[11]+s10*d[10]+s9*d[9]+s8*d[8]+s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule