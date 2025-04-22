module decoderIFNS_4di_core(
       input d5,
	   input d4,
	   input d3,
	   input d2,
	   input d1,
	   output [3:0] v
	  );

assign v = 1*d1+1*d2+2*d3+3*d4+8*d5;
endmodule
