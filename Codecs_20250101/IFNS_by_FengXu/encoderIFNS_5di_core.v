module encoderIFNS_5di_core(
       input [4:0] v,
	   output d7,
	   output d6,
	   output d5,
	   output d4,
	   output d3,
	   output d2,
	   output d1
	  );
reg [4:0] r7;
reg [4:0] r6;
reg [4:0] r5;
reg [4:0] r4;
reg [4:0] r3;
reg [4:0] r2;

encoder1 encoder_one(
         .v(v),
		 .d7(d7),
		 .r7(r7)
		 );
		 
encoder3 encoder_three(
         .r7(r7),
		 .d6(d6),
		 .r6(r6)
		 );

encoder4 encoder_four(
         .r6(r6),
		 .d5(d5),
		 .r5(r5)
		 );

encoder5 encoder_five(
         .r5(r5),
		 .d4(d4),
		 .r4(r4)
		 );

encoder6 encoder_six(
         .r4(r4),
		 .d3(d3),
		 .r3(r3)
		 );

encoder7 encoder_seven(
         .r3(r3),
		 .d2(d2),
		 .r2(r2)
		 );

encoder8 encoder_eight(
         .r2(r2),
		 .d1(d1)
		 );
endmodule
		 
module encoder1(
       input [4:0] v,
	   output d7,
	   output [4:0] r7
	   );
always@(v)
    begin
	   if(v>=21)
	      begin 
		     d7 = 1;
			 r7 = v - 21;
		  end
	   else
	      begin
		     d7 = 0;
			 r7 = v;
		  end
	end
endmodule

module encoder3(
       input [4:0] r7,
		 input d7,
	   output d6,
	   output [4:0] r6
	   );
always@(r7)
    begin
	   if(r7>=6'b001101) 
		     d6 = 1;
	   else if(r7<6'b001000)
	         d6 = 0;
	   else
	         d6 = d7;
	   r6 = r7 - d6*6'b001000;
	end
endmodule

module encoder4(
       input [4:0] r6,
		 input d6,
	   output d5,
	   output [4:0] r5
	   );
always@(r6)
    begin
	   if(r6>=6'b001000) 
		     d5 = 1;
	   else if(r6<6'b000101)
	         d5 = 0;
	   else
	         d5 = d6;
	   r5 = r6 - d5*6'b000101;
	end
endmodule

module encoder5(
       input [4:0] r5,
		 input d5,
	   output d4,
	   output [4:0] r4
	   );
always@(r5)
    begin
	   if(r5>=6'b000101) 
		     d4 = 1;
	   else if(r5<6'b000011)
	         d4 = 0;
	   else
	         d4 = d5;
	   r4 = r5 - d4*6'b000011;
	end
endmodule

module encoder6(
       input [4:0] r4,
		 input d4,
	   output d3,
	   output [4:0] r3
	   );
always@(r4)
    begin
	   if(r4>=6'b000011) 
		     d3 = 1;
	   else if(r4<6'b000010)
	         d3 = 0;
	   else
	         d3 = d4;
	   r3 = r4 - d3*6'b000010;
	end
endmodule

module encoder7(
       input [4:0] r3,
		 input d3,
	   output d2,
	   output [4:0] r2
	   );
always@(r3)
    begin
	   if(r3>=6'b000010) 
		     d2 = 1;
	   else if(r3<6'b000001)
	         d2 = 0;
	   else
	         d2 = d3;
	   r2 = r3 - d2*6'b000001;
	end
endmodule

module encoder8(
       input [4:0] r2,
	   output d1
	   );
assign d1 = r2[0];
endmodule
