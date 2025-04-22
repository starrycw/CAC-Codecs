module nbcac_5di_encoder_core(
		input [4:0] v,
		output [7:1] d
		);

reg [4:0] r1,r2,r3,r4,r5,r6;
reg [7:1] d;

parameter	s1=8'd1,
			s2=8'd16,
			s3=8'd10,
			s4=8'd6,
			s5=8'd4,
			s6=8'd2,
			s7=8'd2;

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
		if(r6>4'b0)
			d[7]=1'b1;
		else
			d[7]=1'b0;
	end

endmodule