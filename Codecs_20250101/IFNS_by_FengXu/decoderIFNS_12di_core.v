module decoderIFNS_12di_core(
       input d17,
	   input d16,
	   input d15,
	   input d14,
	   input d13,
	   input d12,
	   input d11,
	   input d10,
	   input d9,
	   input d8,
	   input d7,
	   input d6,
	   input d5,
	   input d4,
	   input d3,
	   input d2,
	   input d1,
	   output [11:0] v
	  );

assign v = 1*d1+1*d2+2*d3+3*d4+5*d5+8*d6+13*d7+21*d8+34*d9+55*d10+89*d11+144*d12+233*d13+377*d14+610*d15+987*d16+2584*d17;
endmodule
