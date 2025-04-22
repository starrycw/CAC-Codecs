module nbcac_4di_encoder_core(
		input [3:0] v,
		output [5:1] d
		);

reg [3:0] r1,r2,r3,r4;
reg [5:1] d;

parameter	s1=4'd1,
			s2=4'd6,
			s3=4'd4,
			s4=4'd2,
			s5=4'd2;

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
		if(r4>4'b0)
			d[5]=1'b1;
		else
			d[5]=1'b0;
	end

endmodule