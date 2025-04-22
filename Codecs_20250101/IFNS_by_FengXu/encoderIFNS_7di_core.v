module encoderIFNS_7di_core(
       input [6:0] v,
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
reg [6:0] r10;
reg [6:0] r9;
reg [6:0] r8;
reg [6:0] r7;
reg [6:0] r6;
reg [6:0] r5;
reg [6:0] r4;
reg [6:0] r3;
reg [6:0] r2;

encoder1 encoder_one(
         .v(v),
		 .d10(d10),
		 .r10(r10)
		 );
		 
encoder3 encoder_three(
         .r10(r10),
		 .d9(d9),
		 .r9(r9)
		 );

encoder4 encoder_four(
         .r9(r9),
		 .d8(d8),
		 .r8(r8)
		 );

encoder5 encoder_five(
         .r8(r8),
		 .d7(d7),
		 .r7(r7)
		 );
		 
encoder6 encoder_six(
         .r7(r7),
		 .d6(d6),
		 .r6(r6)
		 );

encoder7 encoder_seven(
         .r6(r6),
		 .d5(d5),
		 .r5(r5)
		 );

encoder8 encoder_eight(
         .r5(r5),
		 .d4(d4),
		 .r4(r4)
		 );

encoder9 encoder_nine(
         .r4(r4),
		 .d3(d3),
		 .r3(r3)
		 );

encoder10 encoder_ten(
         .r3(r3),
		 .d2(d2),
		 .r2(r2)
		 );

encoder11 encoder_eleven(
         .r2(r2),
		 .d1(d1)
		 );
endmodule
		 
module encoder1(
       input [6:0] v,
	   output d10,
	   output [6:0] r10
	   );
always@(v)
    begin
	   if(v>=89)
	      begin 
		     d10 = 1;
			 r10 = v - 89;
		  end
	   else
	      begin
		     d10 = 0;
			 r10 = v;
		  end
	end
endmodule

module encoder3(
       input [6:0] r10,
		 input d10,
	   output d9,
	   output [6:0] r9
	   );
always@(r10)
    begin
	   if(r10>=8'b00110111) 
		     d9 = 1;
	   else if(r10<8'b00100010)
	         d9 = 0;
	   else
	         d9 = d10;
	   r9 = r10 - d9*8'b00100010;
	end
endmodule

module encoder4(
       input [6:0] r9,
		 input d9,
	   output d8,
	   output [6:0] r8
	   );
always@(r9)
    begin
	   if(r9>=8'b00100010) 
		     d8 = 1;
	   else if(r9<8'b00010101)
	         d8 = 0;
	   else
	         d8 = d9;
	   r8 = r9 - d8*8'b00010101;
	end
endmodule

module encoder5(
       input [6:0] r8,
		 input d8,
	   output d7,
	   output [6:0] r7
	   );
always@(r8)
    begin
	   if(r8>=8'b00010101) 
		     d7 = 1;
	   else if(r8<8'b00001101)
	         d7 = 0;
	   else
	         d7 = d8;
	   r7 = r8 - d7*8'b00001101;
	end
endmodule

module encoder6(
       input [6:0] r7,
		 input d7,
	   output d6,
	   output [6:0] r6
	   );
always@(r7)
    begin
	   if(r7>=8'b00001101) 
		     d6 = 1;
	   else if(r7<8'b00001000)
	         d6 = 0;
	   else
	         d6 = d7;
	   r6 = r7 - d6*8'b00001000;
	end
endmodule

module encoder7(
       input [6:0] r6,
		 input d6,
	   output d5,
	   output [6:0] r5
	   );
always@(r6)
    begin
	   if(r6>=8'b00001000) 
		     d5 = 1;
	   else if(r6<8'b00000101)
	         d5 = 0;
	   else
	         d5 = d6;
	   r5 = r6 - d5*8'b00000101;
	end
endmodule

module encoder8(
       input [6:0] r5,
		 input d5,
	   output d4,
	   output [6:0] r4
	   );
always@(r5)
    begin
	   if(r5>=8'b00000101) 
		     d4 = 1;
	   else if(r5<8'b00000011)
	         d4 = 0;
	   else
	         d4 = d5;
	   r4 = r5 - d4*8'b00000011;
	end
endmodule

module encoder9(
       input [6:0] r4,
		 input d4,
	   output d3,
	   output [6:0] r3
	   );
always@(r4)
    begin
	   if(r4>=8'b00000011) 
		     d3 = 1;
	   else if(r4<8'b00000010)
	         d3 = 0;
	   else
	         d3 = d4;
	   r3 = r4 - d3*8'b00000010;
	end
endmodule

module encoder10(
       input [6:0] r3,
		 input d3,
	   output d2,
	   output [6:0] r2
	   );
always@(r3)
    begin
	   if(r3>=8'b00000010) 
		     d2 = 1;
	   else if(r3<8'b00000001)
	         d2 = 0;
	   else
	         d2 = d3;
	   r2 = r3 - d2*8'b00000001;
	end
endmodule

module encoder11(
       input [6:0] r2,
	   output d1
	   );
assign d1 = r2[0];
endmodule
