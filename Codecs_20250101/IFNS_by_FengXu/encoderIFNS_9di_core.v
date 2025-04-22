module encoderIFNS_9di_core(
       input [8:0] v,
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
reg [8:0] r13;
reg [8:0] r12;
reg [8:0] r11;
reg [8:0] r10;
reg [8:0] r9;
reg [8:0] r8;
reg [8:0] r7;
reg [8:0] r6;
reg [8:0] r5;
reg [8:0] r4;
reg [8:0] r3;
reg [8:0] r2;

encoder1 encoder_one(
         .v(v),
		 .d13(d13),
		 .r13(r13)
		 );
		 
encoder3 encoder_three(
         .r13(r13),
		 .d12(d12),
		 .r12(r12)
		 );

encoder4 encoder_four(
         .r12(r12),
		 .d11(d11),
		 .r11(r11)
		 );

encoder5 encoder_five(
         .r11(r11),
		 .d10(d10),
		 .r10(r10)
		 );
		 
encoder6 encoder_six(
         .r10(r10),
		 .d9(d9),
		 .r9(r9)
		 );

encoder7 encoder_seven(
         .r9(r9),
		 .d8(d8),
		 .r8(r8)
		 );

encoder8 encoder_eight(
         .r8(r8),
		 .d7(d7),
		 .r7(r7)
		 );
		 
encoder9 encoder_nine(
         .r7(r7),
		 .d6(d6),
		 .r6(r6)
		 );

encoder10 encoder_ten(
         .r6(r6),
		 .d5(d5),
		 .r5(r5)
		 );

encoder11 encoder_eleven(
         .r5(r5),
		 .d4(d4),
		 .r4(r4)
		 );

encoder12 encoder_twelve(
         .r4(r4),
		 .d3(d3),
		 .r3(r3)
		 );

encoder13 encoder_thirteen(
         .r3(r3),
		 .d2(d2),
		 .r2(r2)
		 );

encoder14 encoder_fourteen(
         .r2(r2),
		 .d1(d1)
		 );
endmodule
		 
module encoder1(
       input [8:0] v,
	   output d13,
	   output [8:0] r13
	   );
always@(v)
    begin
	   if(v>=377)
	      begin 
		     d13 = 1;
			 r13 = v - 377;
		  end
	   else
	      begin
		     d13 = 0;
			 r13 = v;
		  end
	end
endmodule

module encoder3(
       input [8:0] r13,
		 input d13,
	   output d12,
	   output [8:0] r12
	   );
always@(r13)
    begin
	   if(r13>=10'b0011101001) 
		     d12 = 1;
	   else if(r13<10'b0010010000)
	         d12 = 0;
	   else
	         d12 = d13;
	   r12 = r13 - d12*10'b0010010000;
	end
endmodule

module encoder4(
       input [8:0] r12,
		 input d12,
	   output d11,
	   output [8:0] r11
	   );
always@(r12)
    begin
	   if(r12>=10'b0010010000) 
		     d11 = 1;
	   else if(r12<10'b0001011001)
	         d11 = 0;
	   else
	         d11 = d12;
	   r11 = r12 - d11*10'b0001011001;
	end
endmodule

module encoder5(
       input [8:0] r11,
		 input d11,
	   output d10,
	   output [8:0] r10
	   );
always@(r11)
    begin
	   if(r11>=10'b0001011001) 
		     d10 = 1;
	   else if(r11<10'b0000110111)
	         d10 = 0;
	   else
	         d10 = d11;
	   r10 = r11 - d10*10'b0000110111;
	end
endmodule

module encoder6(
       input [8:0] r10,
		 input d10,
	   output d9,
	   output [8:0] r9
	   );
always@(r10)
    begin
	   if(r10>=10'b0000110111) 
		     d9 = 1;
	   else if(r10<10'b0000100010)
	         d9 = 0;
	   else
	         d9 = d10;
	   r9 = r10 - d9*10'b0000100010;
	end
endmodule

module encoder7(
       input [8:0] r9,
		 input d9,
	   output d8,
	   output [8:0] r8
	   );
always@(r9)
    begin
	   if(r9>=10'b0000100010) 
		     d8 = 1;
	   else if(r9<10'b0000010101)
	         d8 = 0;
	   else
	         d8 = d9;
	   r8 = r9 - d8*10'b0000010101;
	end
endmodule

module encoder8(
       input [8:0] r8,
		 input d8,
	   output d7,
	   output [8:0] r7
	   );
always@(r8)
    begin
	   if(r8>=10'b0000010101) 
		     d7 = 1;
	   else if(r8<10'b0000001101)
	         d7 = 0;
	   else
	         d7 = d8;
	   r7 = r8 - d7*10'b0000001101;
	end
endmodule

module encoder9(
       input [8:0] r7,
		 input d7,
	   output d6,
	   output [8:0] r6
	   );
always@(r7)
    begin
	   if(r7>=10'b0000001101) 
		     d6 = 1;
	   else if(r7<10'b0000001000)
	         d6 = 0;
	   else
	         d6 = d7;
	   r6 = r7 - d6*10'b0000001000;
	end
endmodule

module encoder10(
       input [8:0] r6,
		 input d6,
	   output d5,
	   output [8:0] r5
	   );
always@(r6)
    begin
	   if(r6>=10'b0000001000) 
		     d5 = 1;
	   else if(r6<10'b0000000101)
	         d5 = 0;
	   else
	         d5 = d6;
	   r5 = r6 - d5*10'b0000000101;
	end
endmodule

module encoder11(
       input [8:0] r5,
		 input d5,
	   output d4,
	   output [8:0] r4
	   );
always@(r5)
    begin
	   if(r5>=10'b0000000101) 
		     d4 = 1;
	   else if(r5<10'b0000000011)
	         d4 = 0;
	   else
	         d4 = d5;
	   r4 = r5 - d4*10'b0000000011;
	end
endmodule

module encoder12(
       input [8:0] r4,
		 input d4,
	   output d3,
	   output [8:0] r3
	   );
always@(r4)
    begin
	   if(r4>=10'b0000000011) 
		     d3 = 1;
	   else if(r4<10'b0000000010)
	         d3 = 0;
	   else
	         d3 = d4;
	   r3 = r4 - d3*10'b0000000010;
	end
endmodule

module encoder13(
       input [8:0] r3,
		 input d3,
	   output d2,
	   output [8:0] r2
	   );
always@(r3)
    begin
	   if(r3>=10'b0000000010) 
		     d2 = 1;
	   else if(r3<10'b0000000001)
	         d2 = 0;
	   else
	         d2 = d3;
	   r2 = r3 - d2*10'b0000000001;
	end
endmodule

module encoder14(
       input [8:0] r2,
	   output d1
	   );
assign d1 = r2[0];
endmodule
