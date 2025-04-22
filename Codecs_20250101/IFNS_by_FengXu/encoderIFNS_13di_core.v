module encoderIFNS_13di_core(
       input [12:0] v,
	   output d18,
	   output d17,
	   output d16,
	   output d15,
	   output d14,
	   output d13,
	   output d12,
	   output d11,
	   output d10,
	   output d9,
	   output d8,
	   output d7,
	   output d6,
	   output d5,
	   output d4,
	   output d3,
	   output d2,
	   output d1
	  );
reg [12:0] r18;
reg [12:0] r17;
reg [12:0] r16;
reg [12:0] r15;
reg [12:0] r14;
reg [12:0] r13;
reg [12:0] r12;
reg [12:0] r11;
reg [12:0] r10;
reg [12:0] r9;
reg [12:0] r8;
reg [12:0] r7;
reg [12:0] r6;
reg [12:0] r5;
reg [12:0] r4;
reg [12:0] r3;
reg [12:0] r2;

encoder1 encoder_one(
         .v(v),
		 .d18(d18),
		 .r18(r18)
		 );

encoder2 encoder_two(
         .r18(r18),
		 .d17(d17),
		 .r17(r17)
		 );
		 
encoder3 encoder_three(
         .r17(r17),
		 .d16(d16),
		 .r16(r16)
		 );

encoder4 encoder_four(
         .r16(r16),
		 .d15(d15),
		 .r15(r15)
		 );

encoder5 encoder_five(
         .r15(r15),
		 .d14(d14),
		 .r14(r14)
		 );

encoder6 encoder_six(
         .r14(r14),
		 .d13(d13),
		 .r13(r13)
		 );
		 
encoder7 encoder_seven(
         .r13(r13),
		 .d12(d12),
		 .r12(r12)
		 );

encoder8 encoder_eight(
         .r12(r12),
		 .d11(d11),
		 .r11(r11)
		 );

encoder9 encoder_nine(
         .r11(r11),
		 .d10(d10),
		 .r10(r10)
		 );
		 
encoder10 encoder_ten(
         .r10(r10),
		 .d9(d9),
		 .r9(r9)
		 );

encoder11 encoder_eleven(
         .r9(r9),
		 .d8(d8),
		 .r8(r8)
		 );

encoder12 encoder_twelve(
         .r8(r8),
		 .d7(d7),
		 .r7(r7)
		 );
		 
encoder13 encoder_thirteen(
         .r7(r7),
		 .d6(d6),
		 .r6(r6)
		 );

encoder14 encoder_fourteen(
         .r6(r6),
		 .d5(d5),
		 .r5(r5)
		 );

encoder15 encoder_fifteen(
         .r5(r5),
		 .d4(d4),
		 .r4(r4)
		 );

encoder16 encoder_sixteen(
         .r4(r4),
		 .d3(d3),
		 .r3(r3)
		 );

encoder17 encoder_seventeen(
         .r3(r3),
		 .d2(d2),
		 .r2(r2)
		 );

encoder18 encoder_eighteen(
         .r2(r2),
		 .d1(d1)
		 );
endmodule
		 
module encoder1(
       input [12:0] v,
	   output d18,
	   output [12:0] r18
	   );
always@(v)
    begin
	   if(v>=4181)
	      begin 
		     d18 = 1;
			 r18 = v - 4181;
		  end
	   else
	      begin
		     d18 = 0;
			 r18 = v;
		  end
	end
endmodule

module encoder2(
       input [12:0] r18,
		 input d18,
	   output d17,
	   output [12:0] r17
	   );
always@(r18)
    begin
	   if(r18>=2584) 
		     d17 = 1;
	   else if(r18<1597)
	         d17 = 0;
	   else
	         d17 = d18;
	   r17 = r18 - d17*1597;
	end
endmodule

module encoder3(
       input [12:0] r17,
		 input d17,
	   output d16,
	   output [12:0] r16
	   );
always@(r17)
    begin
	   if(r17>=1597) 
		     d16 = 1;
	   else if(r17<987)
	         d16 = 0;
	   else
	         d16 = d17;
	   r16 = r17 - d16*987;
	end
endmodule

module encoder4(
       input [12:0] r16,
		 input d16,
	   output d15,
	   output [12:0] r15
	   );
always@(r16)
    begin
	   if(r16>=987) 
		     d15 = 1;
	   else if(r16<610)
	         d15 = 0;
	   else
	         d15 = d16;
	   r15 = r16 - d15*610;
	end
endmodule

module encoder5(
       input [12:0] r15,
		 input d15,
	   output d14,
	   output [12:0] r14
	   );
always@(r15)
    begin
	   if(r15>=610) 
		     d14 = 1;
	   else if(r15<377)
	         d14 = 0;
	   else
	         d14 = d15;
	   r14 = r15 - d14*377;
	end
endmodule

module encoder6(
       input [12:0] r14,
		 input d14,
	   output d13,
	   output [12:0] r13
	   );
always@(r14)
    begin
	   if(r14>=377) 
		     d13 = 1;
	   else if(r14<233)
	         d13 = 0;
	   else
	         d13 = d14;
	   r13 = r14 - d13*233;
	end
endmodule

module encoder7(
       input [12:0] r13,
		 input d13,
	   output d12,
	   output [12:0] r12
	   );
always@(r13)
    begin
	   if(r13>=233) 
		     d12 = 1;
	   else if(r13<144)
	         d12 = 0;
	   else
	         d12 = d13;
	   r12 = r13 - d12*144;
	end
endmodule

module encoder8(
       input [12:0] r12,
		 input d12,
	   output d11,
	   output [12:0] r11
	   );
always@(r12)
    begin
	   if(r12>=144) 
		     d11 = 1;
	   else if(r12<89)
	         d11 = 0;
	   else
	         d11 = d12;
	   r11 = r12 - d11*89;
	end
endmodule

module encoder9(
       input [12:0] r11,
		 input d11,
	   output d10,
	   output [12:0] r10
	   );
always@(r11)
    begin
	   if(r11>=89) 
		     d10 = 1;
	   else if(r11<55)
	         d10 = 0;
	   else
	         d10 = d11;
	   r10 = r11 - d10*55;
	end
endmodule

module encoder10(
       input [12:0] r10,
		 input d10,
	   output d9,
	   output [12:0] r9
	   );
always@(r10)
    begin
	   if(r10>=55) 
		     d9 = 1;
	   else if(r10<34)
	         d9 = 0;
	   else
	         d9 = d10;
	   r9 = r10 - d9*34;
	end
endmodule

module encoder11(
       input [12:0] r9,
		 input d9,
	   output d8,
	   output [12:0] r8
	   );
always@(r9)
    begin
	   if(r9>=34) 
		     d8 = 1;
	   else if(r9<21)
	         d8 = 0;
	   else
	         d8 = d9;
	   r8 = r9 - d8*21;
	end
endmodule

module encoder12(
       input [12:0] r8,
		 input d8,
	   output d7,
	   output [12:0] r7
	   );
always@(r8)
    begin
	   if(r8>=21) 
		     d7 = 1;
	   else if(r8<13)
	         d7 = 0;
	   else
	         d7 = d8;
	   r7 = r8 - d7*13;
	end
endmodule

module encoder13(
       input [12:0] r7,
		 input d7,
	   output d6,
	   output [12:0] r6
	   );
always@(r7)
    begin
	   if(r7>=13) 
		     d6 = 1;
	   else if(r7<8)
	         d6 = 0;
	   else
	         d6 = d7;
	   r6 = r7 - d6*8;
	end
endmodule

module encoder14(
       input [12:0] r6,
		 input d6,
	   output d5,
	   output [12:0] r5
	   );
always@(r6)
    begin
	   if(r6>=8) 
		     d5 = 1;
	   else if(r6<5)
	         d5 = 0;
	   else
	         d5 = d6;
	   r5 = r6 - d5*5;
	end
endmodule

module encoder15(
       input [12:0] r5,
		 input d5,
	   output d4,
	   output [12:0] r4
	   );
always@(r5)
    begin
	   if(r5>=5) 
		     d4 = 1;
	   else if(r5<3)
	         d4 = 0;
	   else
	         d4 = d5;
	   r4 = r5 - d4*3;
	end
endmodule

module encoder16(
       input [12:0] r4,
		 input d4,
	   output d3,
	   output [12:0] r3
	   );
always@(r4)
    begin
	   if(r4>=3) 
		     d3 = 1;
	   else if(r4<2)
	         d3 = 0;
	   else
	         d3 = d4;
	   r3 = r4 - d3*2;
	end
endmodule

module encoder17(
       input [12:0] r3,
		 input d3,
	   output d2,
	   output [12:0] r2
	   );
always@(r3)
    begin
	   if(r3>=2) 
		     d2 = 1;
	   else if(r3<1)
	         d2 = 0;
	   else
	         d2 = d3;
	   r2 = r3 - d2*1;
	end
endmodule

module encoder18(
       input [12:0] r2,
	   output d1
	   );
assign d1 = r2[0];
endmodule
