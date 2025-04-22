module encoderIFNS_22di_core(
       input [21:0] v,
	   output d31,
	   output d30,
	   output d29,
	   output d28,
	   output d27,
	   output d26,
	   output d25,
	   output d24,
	   output d23,
	   output d22,
	   output d21,
	   output d20,
	   output d19,
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
reg [21:0] r31;
reg [21:0] r30;
reg [21:0] r29;
reg [21:0] r28;	  
reg [21:0] r27;
reg [21:0] r26;
reg [21:0] r25;
reg [21:0] r24;
reg [21:0] r23;
reg [21:0] r22;
reg [21:0] r21;
reg [21:0] r20;
reg [21:0] r19;
reg [21:0] r18;
reg [21:0] r17;
reg [21:0] r16;
reg [21:0] r15;
reg [21:0] r14;
reg [21:0] r13;
reg [21:0] r12;
reg [21:0] r11;
reg [21:0] r10;
reg [21:0] r9;
reg [21:0] r8;
reg [21:0] r7;
reg [21:0] r6;
reg [21:0] r5;
reg [21:0] r4;
reg [21:0] r3;
reg [21:0] r2;

encoder1 encoder_one(
         .v(v),
		 .d31(d31),
		 .r31(r31)
		 );

encoder28 encoder_twentyeight(
         .r31(r31),
		 .d30(d30),
		 .r30(r30)
		 );
		 
encoder29 encoder_twentynine(
         .r30(r30),
		 .d29(d29),
		 .r29(r29)
		 );

encoder30 encoder_thirty(
         .r29(r29),
		 .d28(d28),
		 .r28(r28)
		 );

encoder31 encoder_thirtyone(
         .r28(r28),
		 .d27(d27),
		 .r27(r27)
		 );

encoder25 encoder_twentyfive(
         .r27(r27),
		 .d26(d26),
		 .r26(r26)
		 );
		 
encoder26 encoder_twentysix(
         .r26(r26),
		 .d25(d25),
		 .r25(r25)
		 );

encoder27 encoder_twentyseven(
         .r25(r25),
		 .d24(d24),
		 .r24(r24)
		 );

encoder2 encoder_two(
         .r24(r24),
		 .d23(d23),
		 .r23(r23)
		 );
		 
encoder3 encoder_three(
         .r23(r23),
		 .d22(d22),
		 .r22(r22)
		 );

encoder4 encoder_four(
         .r22(r22),
		 .d21(d21),
		 .r21(r21)
		 );

encoder5 encoder_five(
         .r21(r21),
		 .d20(d20),
		 .r20(r20)
		 );
		 
encoder6 encoder_six(
         .r20(r20),
		 .d19(d19),
		 .r19(r19)
		 );

encoder7 encoder_seven(
         .r19(r19),
		 .d18(d18),
		 .r18(r18)
		 );

encoder8 encoder_eight(
         .r18(r18),
		 .d17(d17),
		 .r17(r17)
		 );
		 
encoder9 encoder_nine(
         .r17(r17),
		 .d16(d16),
		 .r16(r16)
		 );

encoder10 encoder_ten(
         .r16(r16),
		 .d15(d15),
		 .r15(r15)
		 );

encoder11 encoder_eleven(
         .r15(r15),
		 .d14(d14),
		 .r14(r14)
		 );

encoder12 encoder_twelve(
         .r14(r14),
		 .d13(d13),
		 .r13(r13)
		 );
		 
encoder13 encoder_thirteen(
         .r13(r13),
		 .d12(d12),
		 .r12(r12)
		 );

encoder14 encoder_fourteen(
         .r12(r12),
		 .d11(d11),
		 .r11(r11)
		 );

encoder15 encoder_fifteen(
         .r11(r11),
		 .d10(d10),
		 .r10(r10)
		 );
		 
encoder16 encoder_sixteen(
         .r10(r10),
		 .d9(d9),
		 .r9(r9)
		 );

encoder17 encoder_seventeen(
         .r9(r9),
		 .d8(d8),
		 .r8(r8)
		 );

encoder18 encoder_eighteen(
         .r8(r8),
		 .d7(d7),
		 .r7(r7)
		 );
		 
encoder19 encoder_nineteen(
         .r7(r7),
		 .d6(d6),
		 .r6(r6)
		 );

encoder20 encoder_twenty(
         .r6(r6),
		 .d5(d5),
		 .r5(r5)
		 );

encoder21 encoder_twentyone(
         .r5(r5),
		 .d4(d4),
		 .r4(r4)
		 );

encoder22 encoder_twentytwo(
         .r4(r4),
		 .d3(d3),
		 .r3(r3)
		 );

encoder23 encoder_twentythree(
         .r3(r3),
		 .d2(d2),
		 .r2(r2)
		 );

encoder24 encoder_twentyfour(
         .r2(r2),
		 .d1(d1)
		 );
endmodule
		 
module encoder1(
       input [21:0] v,
	   output d31,
	   output [21:0] r31
	   );
always@(v)
    begin
	   if(v>=2178309)
	      begin 
		     d31 = 1;
			 r31 = v - 2178309;
		  end
	   else
	      begin
		     d31 = 0;
			 r31 = v;
		  end
	end
endmodule

module encoder28(
       input [21:0] r31,
		 input d31,
	   output d30,
	   output [21:0] r30
	   );
always@(r31)
    begin
	   if(r31>=1346269) 
		     d30 = 1;
	   else if(r31<832040)
	         d30 = 0;
	   else
	         d30 = d31;
	   r30 = r31 - d30*832040;
	end
endmodule

module encoder29(
       input [21:0] r30,
		 input d30,
	   output d29,
	   output [21:0] r29
	   );
always@(r30)
    begin
	   if(r30>=832040) 
		     d29 = 1;
	   else if(r30<514229)
	         d29 = 0;
	   else
	         d29 = d30;
	   r29 = r30 - d29*514229;
	end
endmodule

module encoder30(
       input [21:0] r29,
		 input d29,
	   output d28,
	   output [21:0] r28
	   );
always@(r29)
    begin
	   if(r29>=514229) 
		     d28 = 1;
	   else if(r29<317811)
	         d28 = 0;
	   else
	         d28 = d29;
	   r28 = r29 - d28*317811;
	end
endmodule

module encoder31(
       input [21:0] r28,
		 input d28,
	   output d27,
	   output [21:0] r27
	   );
always@(r28)
    begin
	   if(r28>=317811) 
		     d27 = 1;
	   else if(r28<196418)
	         d27 = 0;
	   else
	         d27 = d28;
	   r27 = r28 - d27*196418;
	end
endmodule

module encoder25(
       input [21:0] r27,
		 input d27,
	   output d26,
	   output [21:0] r26
	   );
always@(r27)
    begin
	   if(r27>=196418) 
		     d26 = 1;
	   else if(r27<121393)
	         d26 = 0;
	   else
	         d26 = d27;
	   r26 = r27 - d26*121393;
	end
endmodule

module encoder26(
       input [21:0] r26,
		 input d26,
	   output d25,
	   output [21:0] r25
	   );
always@(r26)
    begin
	   if(r26>=121393) 
		     d25 = 1;
	   else if(r26<75025)
	         d25 = 0;
	   else
	         d25 = d26;
	   r25 = r26 - d25*75025;
	end
endmodule

module encoder27(
       input [21:0] r25,
		 input d25,
	   output d24,
	   output [21:0] r24
	   );
always@(r25)
    begin
	   if(r25>=75025) 
		     d24 = 1;
	   else if(r25<46368)
	         d24 = 0;
	   else
	         d24 = d25;
	   r24 = r25 - d24*46368;
	end
endmodule

module encoder2(
       input [21:0] r24,
		 input d24,
	   output d23,
	   output [21:0] r23
	   );
always@(r24)
    begin
	   if(r24>=46368) 
		     d23 = 1;
	   else if(r24<28657)
	         d23 = 0;
	   else
	         d23 = d24;
	   r23 = r24 - d23*28657;
	end
endmodule

module encoder3(
       input [21:0] r23,
		 input d23,
	   output d22,
	   output [21:0] r22
	   );
always@(r23)
    begin
	   if(r23>=28657) 
		     d22 = 1;
	   else if(r23<17711)
	         d22 = 0;
	   else
	         d22 = d23;
	   r22 = r23 - d22*17711;
	end
endmodule

module encoder4(
       input [21:0] r22,
		 input d22,
	   output d21,
	   output [21:0] r21
	   );
always@(r22)
    begin
	   if(r22>=17711) 
		     d21 = 1;
	   else if(r22<10946)
	         d21 = 0;
	   else
	         d21 = d22;
	   r21 = r22 - d21*10946;
	end
endmodule

module encoder5(
       input [21:0] r21,
		 input d21,
	   output d20,
	   output [21:0] r20
	   );
always@(r21)
    begin
	   if(r21>=10946) 
		     d20 = 1;
	   else if(r21<6765)
	         d20 = 0;
	   else
	         d20 = d21;
	   r20 = r21 - d20*6765;
	end
endmodule

module encoder6(
       input [21:0] r20,
		 input d20,
	   output d19,
	   output [21:0] r19
	   );
always@(r20)
    begin
	   if(r20>=6765) 
		     d19 = 1;
	   else if(r20<4181)
	         d19 = 0;
	   else
	         d19 = d20;
	   r19 = r20 - d19*4181;
	end
endmodule

module encoder7(
       input [21:0] r19,
		 input d19,
	   output d18,
	   output [21:0] r18
	   );
always@(r19)
    begin
	   if(r19>=4181) 
		     d18 = 1;
	   else if(r19<2584)
	         d18 = 0;
	   else
	         d18 = d19;
	   r18 = r19 - d18*2584;
	end
endmodule

module encoder8(
       input [21:0] r18,
		 input d18,
	   output d17,
	   output [21:0] r17
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

module encoder9(
       input [21:0] r17,
		 input d17,
	   output d16,
	   output [21:0] r16
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

module encoder10(
       input [21:0] r16,
		 input d16,
	   output d15,
	   output [21:0] r15
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

module encoder11(
       input [21:0] r15,
		 input d15,
	   output d14,
	   output [21:0] r14
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

module encoder12(
       input [21:0] r14,
		 input d14,
	   output d13,
	   output [21:0] r13
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

module encoder13(
       input [21:0] r13,
		 input d13,
	   output d12,
	   output [21:0] r12
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

module encoder14(
       input [21:0] r12,
		 input d12,
	   output d11,
	   output [21:0] r11
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

module encoder15(
       input [21:0] r11,
		 input d11,
	   output d10,
	   output [21:0] r10
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

module encoder16(
       input [21:0] r10,
		 input d10,
	   output d9,
	   output [21:0] r9
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

module encoder17(
       input [21:0] r9,
		 input d9,
	   output d8,
	   output [21:0] r8
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

module encoder18(
       input [21:0] r8,
		 input d8,
	   output d7,
	   output [21:0] r7
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

module encoder19(
       input [21:0] r7,
		 input d7,
	   output d6,
	   output [21:0] r6
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

module encoder20(
       input [21:0] r6,
		 input d6,
	   output d5,
	   output [21:0] r5
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

module encoder21(
       input [21:0] r5,
		 input d5,
	   output d4,
	   output [21:0] r4
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

module encoder22(
       input [21:0] r4,
		 input d4,
	   output d3,
	   output [21:0] r3
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

module encoder23(
       input [21:0] r3,
		 input d3,
	   output d2,
	   output [21:0] r2
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

module encoder24(
       input [21:0] r2,
	   output d1
	   );
assign d1 = r2[0];
endmodule
