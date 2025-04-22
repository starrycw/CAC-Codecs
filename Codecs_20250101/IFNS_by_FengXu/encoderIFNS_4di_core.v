module encoderIFNS_4di_core(
       input [3:0] v,
	   output [5:1] d
	  );
reg [3:0] r5,r4,r3,r2;
reg [5:1] d;

always@(v)
    begin
	   if(v>=4'b1000)
	      begin 
		     d[5] = 1;
			 r5 = v - 4'b1000;
		  end
	   else
	      begin
		     d[5] = 0;
			 r5 = v;
		  end
	end

always@(r5)
    begin
	   if(r5>=4'b0101) 
		     d[4] = 1;
	   else if(r5<4'b0011)
	         d[4] = 0;
	   else
	         d[4] = d[5];
	   r4 = r5 - d[4]*4'b0011;
	end

always@(r4)
    begin
	   if(r4>=4'b0011) 
		     d[3] = 1;
	   else if(r4<4'b0010)
	         d[3] = 0;
	   else
	         d[3] = d[4];
	   r3 = r4 - d[3]*4'b0010;
	end

always@(r3)
    begin
	   if(r3>=4'b0010) 
		     d[2] = 1;
	   else if(r3<4'b0001)
	         d[2] = 0;
	   else
	         d[2] = d[3];
	   r2 = r3 - d[2]*4'b0001;
	end

always@(r2)
	begin
		d[1] = r2[0];
	end

endmodule
