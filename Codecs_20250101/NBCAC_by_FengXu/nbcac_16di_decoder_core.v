module nbcac_16di_decoder_core(
		output [15:0] v,
		input [23:1] d
		);

parameter	s1=16'd1,
			s2=16'd35422,
			s3=16'd21892,
			s4=16'd13530,
			s5=16'd8362,
			s6=16'd5168,
			s7=16'd3194,
			s8=16'd1974,
			s9=16'd1220,
			s10=16'd754,
			s11=16'd466,
			s12=16'd288,
			s13=16'd178,
			s14=16'd110,
			s15=16'd68,
			s16=16'd42,
			s17=16'd26,
			s18=16'd16,
			s19=16'd10,
			s20=16'd6,
			s21=16'd4,
			s22=16'd2,
			s23=16'd2;

assign v=s23*d[23]+s22*d[22]+s21*d[21]+s20*d[20]+s19*d[19]+s18*d[18]+s17*d[17]+s16*d[16]+s15*d[15]+s14*d[14]+s13*d[13]+s12*d[12]+s11*d[11]+s10*d[10]+s9*d[9]+s8*d[8]+s7*d[7]+s6*d[6]+s5*d[5]+s4*d[4]+s3*d[3]+s2*d[2]+s1*d[1];

endmodule