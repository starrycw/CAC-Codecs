module encoderIFNS_16di_core(
       input [15:0] v,
	   output [23:1] d
	  );
reg [15:0] r23;
reg [15:0] r22;
reg [15:0] r21;
reg [15:0] r20;
reg [15:0] r19;
reg [15:0] r18;
reg [15:0] r17;
reg [15:0] r16;
reg [15:0] r15;
reg [15:0] r14;
reg [15:0] r13;
reg [15:0] r12;
reg [15:0] r11;
reg [15:0] r10;
reg [15:0] r9;
reg [15:0] r8;
reg [15:0] r7;
reg [15:0] r6;
reg [15:0] r5;
reg [15:0] r4;
reg [15:0] r3;
reg [15:0] r2;
reg [23:1] d;

always@(v)
    begin
	   if(v>=16'd46368)
	      begin 
		     d[23] = 1'b1;
			 r23 = v - 16'd46368;
		  end
	   else
	      begin
		     d[23] = 1'b0;
			 r23 = v;
		  end
	end

always@(r23)
    begin
	   if(r23>=16'd28657) 
		     d[22] = 1'b1;
	   else if(r23<16'd17711)
	         d[22] = 1'b0;
	   else
	         d[22] = d[23];
	   r22 = r23 - d[22]*16'd17711;
	end

always@(r22)
    begin
	   if(r22>=16'd17711) 
		     d[21] = 1'b1;
	   else if(r22<16'd10946)
	         d[21] = 1'b0;
	   else
	         d[21] = d[22];
	   r21 = r22 - d[21]*16'd10946;
	end

always@(r21)
    begin
	   if(r21>=16'd10946) 
		     d[20] = 1'b1;
	   else if(r21<16'd6765)
	         d[20] = 1'b0;
	   else
	         d[20] = d[21];
	   r20 = r21 - d[20]*16'd6765;
	end

always@(r20)
    begin
	   if(r20>=16'd6765) 
		     d[19] = 1'b1;
	   else if(r20<16'd4181)
	         d[19] = 1'b0;
	   else
	         d[19] = d[20];
	   r19 = r20 - d[19]*16'd4181;
	end

always@(r19)
    begin
	   if(r19>=16'd4181) 
		     d[18] = 1'b1;
	   else if(r19<16'd2584)
	         d[18] = 1'b0;
	   else
	         d[18] = d[19];
	   r18 = r19 - d[18]*16'd2584;
	end

always@(r18)
    begin
	   if(r18>=16'd2584) 
		     d[17] = 1'b1;
	   else if(r18<16'd1597)
	         d[17] = 1'b0;
	   else
	         d[17] = d[18];
	   r17 = r18 - d[17]*16'd1597;
	end

always@(r17)
    begin
	   if(r17>=16'd1597) 
		     d[16] = 1'b1;
	   else if(r17<16'd987)
	         d[16] = 1'b0;
	   else
	         d[16] = d[17];
	   r16 = r17 - d[16]*16'd987;
	end

always@(r16)
    begin
	   if(r16>=16'd987) 
		     d[15] = 1'b1;
	   else if(r16<16'd610)
	         d[15] = 1'b0;
	   else
	         d[15] = d[16];
	   r15 = r16 - d[15]*16'd610;
	end

always@(r15)
    begin
	   if(r15>=16'd610) 
		     d[14] = 1'b1;
	   else if(r15<16'd377)
	         d[14] = 1'b0;
	   else
	         d[14] = d[15];
	   r14 = r15 - d[14]*16'd377;
	end

always@(r14)
    begin
	   if(r14>=16'd377) 
		     d[13] = 1'b1;
	   else if(r14<16'd233)
	         d[13] = 1'b0;
	   else
	         d[13] = d[14];
	   r13 = r14 - d[13]*16'd233;
	end

always@(r13)
    begin
	   if(r13>=16'd233) 
		     d[12] = 1'b1;
	   else if(r13<16'd144)
	         d[12] = 1'b0;
	   else
	         d[12] = d[13];
	   r12 = r13 - d[12]*16'd144;
	end

always@(r12)
    begin
	   if(r12>=16'd144) 
		     d[11] = 1'b1;
	   else if(r12<16'd89)
	         d[11] = 1'b0;
	   else
	         d[11] = d[12];
	   r11 = r12 - d[11]*16'd89;
	end

always@(r11)
    begin
	   if(r11>=16'd89) 
		     d[10] = 1'b1;
	   else if(r11<16'd55)
	         d[10] = 1'b0;
	   else
	         d[10] = d[11];
	   r10 = r11 - d[10]*16'd55;
	end

always@(r10)
    begin
	   if(r10>=16'd55) 
		     d[9] = 1'b1;
	   else if(r10<16'd34)
	         d[9] = 1'b0;
	   else
	         d[9] = d[10];
	   r9 = r10 - d[9]*16'd34;
	end

always@(r9)
    begin
	   if(r9>=16'd34) 
		     d[8] = 1'b1;
	   else if(r9<16'd[21])
	         d[8] = 1'b0;
	   else
	         d[8] = d[9];
	   r8 = r9 - d[8]*16'd[21];
	end

always@(r8)
    begin
	   if(r8>=16'd[21]) 
		     d[7] = 1'b1;
	   else if(r8<16'd[13])
	         d[7] = 1'b0;
	   else
	         d[7] = d[8];
	   r7 = r8 - d[7]*16'd[13];
	end

always@(r7)
    begin
	   if(r7>=16'd[13]) 
		     d[6] = 1'b1;
	   else if(r7<16'd[8])
	         d[6] = 1'b0;
	   else
	         d[6] = d[7];
	   r6 = r7 - d[6]*8;
	end

always@(r6)
    begin
	   if(r6>=16'd[8]) 
		     d[5] = 1'b1;
	   else if(r6<16'd[5])
	         d[5] = 1'b0;
	   else
	         d[5] = d[6];
	   r5 = r6 - d[5]*5;
	end

always@(r5)
    begin
	   if(r5>=16'd[5]) 
		     d[4] = 1'b1;
	   else if(r5<16'd[3])
	         d[4] = 1'b0;
	   else
	         d[4] = d[5];
	   r4 = r5 - d[4]*16'd[3];
	end

always@(r4)
    begin
	   if(r4>=16'd[3]) 
		     d[3] = 1'b1;
	   else if(r4<16'd[2])
	         d[3] = 1'b0;
	   else
	         d[3] = d[4];
	   r3 = r4 - d[3]*16'd[2];
	end

always@(r3)
    begin
	   if(r3>=16'd[2]) 
		     d[2] = 1'b1;
	   else if(r3<16'd1)
	         d[2] = 1'b0;
	   else
	         d[2] = d[3];
	   r2 = r3 - d[2]*16'd1;
	end

always@(r2)
	begin
		d[1] = r2[0];
	end

endmodule
