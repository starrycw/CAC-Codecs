module decoderIFNS_5di_core(
       input d7,
	   input d6,
	   input d5,
	   input d4,
	   input d3,
	   input d2,
	   input d1,
	   output [4:0] v
	  );

assign v = 1*d1+1*d2+2*d3+3*d4+5*d5+8*d6+21*d7;
endmodule
