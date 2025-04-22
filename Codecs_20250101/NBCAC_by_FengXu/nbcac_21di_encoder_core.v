module nbcac_21di_encoder_core(
		input [20:0] v,
		output [30:1] d
		);

reg [20:0] r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
reg [30:1] d;

parameter	s1=32'd1,
			s2=32'd1028458,
			s3=32'd635622,
			s4=32'd392836,
			s5=32'd242786,
			s6=32'd150050,
			s7=32'd92736,
			s8=32'd57314,
			s9=32'd35422,
			s10=32'd21892,
			s11=32'd13530,
			s12=32'd8362,
			s13=32'd5168,
			s14=32'd3194,
			s15=32'd1974,
			s16=32'd1220,
			s17=32'd754,
			s18=32'd466,
			s19=32'd288,
			s20=32'd178,
			s21=32'd110,
			s22=32'd68,
			s23=32'd42,
			s24=32'd26,
			s25=32'd16,
			s26=32'd10,
			s27=32'd6,
			s28=32'd4,
			s29=32'd2,
			s30=32'd2;
always@(v)
	begin
		if(v[0]==1'b1)
			begin
				d[1]=1'b1;
				r1  =v-s1;
			end
		else
			begin
				d[1]=1'b0;
				r1  =v;
			end
	end

always@(r1)
	begin
		if(r1>=s2+s3)
			d[2]=1'b1;
		else if(r1<s2)
			d[2]=1'b0;
		else
			d[2]=d[1];
		r2=r1-s2*d[2];
	end

always@(r2)
	begin
		if(r2>=s3+s4)
			d[3]=1'b1;
		else if(r2<s3)
			d[3]=1'b0;
		else
			d[3]=d[2];
		r3=r2-s3*d[3];
	end

always@(r3)
	begin
		if(r3>=s4+s5)
			d[4]=1'b1;
		else if(r3<s4)
			d[4]=1'b0;
		else
			d[4]=d[3];
		r4=r3-s4*d[4];
	end

always@(r4)
	begin
		if(r4>=s5+s6)
			d[5]=1'b1;
		else if(r4<s5)
			d[5]=1'b0;
		else
			d[5]=d[4];
		r5=r4-s5*d[5];
	end

always@(r5)
	begin
		if(r5>=s6+s7)
			d[6]=1'b1;
		else if(r5<s6)
			d[6]=1'b0;
		else
			d[6]=d[5];
		r6=r5-s6*d[6];
	end

always@(r6)
	begin
		if(r6>=s7+s8)
			d[7]=1'b1;
		else if(r6<s7)
			d[7]=1'b0;
		else
			d[7]=d[6];
		r7=r6-s7*d[7];
	end

always@(r7)
	begin
		if(r7>=s8+s9)
			d[8]=1'b1;
		else if(r7<s8)
			d[8]=1'b0;
		else
			d[8]=d[7];
		r8=r7-s8*d[8];
	end

always@(r8)
	begin
		if(r8>=s9+s10)
			d[9]=1'b1;
		else if(r8<s9)
			d[9]=1'b0;
		else
			d[9]=d[8];
		r9=r8-s9*d[9];
	end

always@(r9)
	begin
		if(r9>=s10+s11)
			d[10]=1'b1;
		else if(r9<s10)
			d[10]=1'b0;
		else
			d[10]=d[9];
		r10=r9-s10*d[10];
	end

always@(r10)
	begin
		if(r10>=s11+s12)
			d[11]=1'b1;
		else if(r10<s11)
			d[11]=1'b0;
		else
			d[11]=d[10];
		r11=r10-s11*d[11];
	end

always@(r11)
	begin
		if(r11>=s12+s13)
			d[12]=1'b1;
		else if(r11<s12)
			d[12]=1'b0;
		else
			d[12]=d[11];
		r12=r11-s12*d[12];
	end

always@(r12)
	begin
		if(r12>=s13+s14)
			d[13]=1'b1;
		else if(r12<s13)
			d[13]=1'b0;
		else
			d[13]=d[12];
		r13=r12-s13*d[13];
	end

always@(r13)
	begin
		if(r13>=s14+s15)
			d[14]=1'b1;
		else if(r13<s14)
			d[14]=1'b0;
		else
			d[14]=d[13];
		r14=r13-s14*d[14];
	end

always@(r14)
	begin
		if(r14>=s15+s16)
			d[15]=1'b1;
		else if(r14<s15)
			d[15]=1'b0;
		else
			d[15]=d[14];
		r15=r14-s15*d[15];
	end

always@(r15)
	begin
		if(r15>=s16+s17)
			d[16]=1'b1;
		else if(r15<s16)
			d[16]=1'b0;
		else
			d[16]=d[15];
		r16=r15-s16*d[16];
	end

always@(r16)
	begin
		if(r16>=s17+s18)
			d[17]=1'b1;
		else if(r16<s17)
			d[17]=1'b0;
		else
			d[17]=d[16];
		r17=r16-s17*d[17];
	end

always@(r17)
	begin
		if(r17>=s18+s19)
			d[18]=1'b1;
		else if(r17<s18)
			d[18]=1'b0;
		else
			d[18]=d[17];
		r18=r17-s18*d[18];
	end

always@(r18)
	begin
		if(r18>=s19+s20)
			d[19]=1'b1;
		else if(r18<s19)
			d[19]=1'b0;
		else
			d[19]=d[18];
		r19=r18-s19*d[19];
	end

always@(r19)
	begin
		if(r19>=s20+s21)
			d[20]=1'b1;
		else if(r19<s20)
			d[20]=1'b0;
		else
			d[20]=d[19];
		r20=r19-s20*d[20];
	end

always@(r20)
	begin
		if(r20>=s21+s22)
			d[21]=1'b1;
		else if(r20<s21)
			d[21]=1'b0;
		else
			d[21]=d[20];
		r21=r20-s21*d[21];
	end

always@(r21)
	begin
		if(r21>=s22+s23)
			d[22]=1'b1;
		else if(r21<s22)
			d[22]=1'b0;
		else
			d[22]=d[21];
		r22=r21-s22*d[22];
	end

always@(r22)
	begin
		if(r22>=s23+s24)
			d[23]=1'b1;
		else if(r22<s23)
			d[23]=1'b0;
		else
			d[23]=d[22];
		r23=r22-s23*d[23];
	end

always@(r23)
	begin
		if(r23>=s24+s25)
			d[24]=1'b1;
		else if(r23<s24)
			d[24]=1'b0;
		else
			d[24]=d[23];
		r24=r23-s24*d[24];
	end

always@(r24)
	begin
		if(r24>=s25+s26)
			d[25]=1'b1;
		else if(r24<s25)
			d[25]=1'b0;
		else
			d[25]=d[24];
		r25=r24-s25*d[25];
	end

always@(r25)
	begin
		if(r25>=s26+s27)
			d[26]=1'b1;
		else if(r25<s26)
			d[26]=1'b0;
		else
			d[26]=d[25];
		r26=r25-s26*d[26];
	end

always@(r26)
	begin
		if(r26>=s27+s28)
			d[27]=1'b1;
		else if(r26<s27)
			d[27]=1'b0;
		else
			d[27]=d[26];
		r27=r26-s27*d[27];
	end

always@(r27)
	begin
		if(r27>=s28+s29)
			d[28]=1'b1;
		else if(r27<s28)
			d[28]=1'b0;
		else
			d[28]=d[27];
		r28=r27-s28*d[28];
	end

always@(r28)
	begin
		if(r28>=s29+s30)
			d[29]=1'b1;
		else if(r28<s29)
			d[29]=1'b0;
		else
			d[29]=d[28];
		r29=r28-s29*d[29];
	end

always@(r29)
	begin
		if(r29>16'b0)
			d[30]=1'b1;
		else
			d[30]=1'b0;
	end

endmodule