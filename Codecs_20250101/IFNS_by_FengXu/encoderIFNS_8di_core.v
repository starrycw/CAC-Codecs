module encoderIFNS_8di_core(
       input [7:0] v,
	   output [11:1] d
	  );
reg [7:0] r11;
reg [7:0] r10;
reg [7:0] r9;
reg [7:0] r8;
reg [7:0] r7;
reg [7:0] r6;
reg [7:0] r5;
reg [7:0] r4;
reg [7:0] r3;
reg [7:0] r2;
reg [11:1] d;

always@(v)
    begin
	   if(v>=8'b10010000)
	      begin 
		     d[11] = 1;
			 r11 = v - 8'b10010000;
		  end
	   else
	      begin
		     d[11] = 0;
			 r11 = v;
		  end
	end

always@(r11)
    begin
	   if(r11>=8'b01011001) 
		     d[10] = 1;
	   else if(r11<8'b00110111)
	         d[10] = 0;
	   else
	         d[10] = d[11];
	   r10 = r11 - d[10]*8'b00110111;
	end

always@(r10)
    begin
	   if(r10>=8'b00110111) 
		     d[9] = 1;
	   else if(r10<8'b00100010)
	         d[9] = 0;
	   else
	         d[9] = d[10];
	   r9 = r10 - d[9]*8'b00100010;
	end

always@(r9)
    begin
	   if(r9>=8'b00100010) 
		     d[8] = 1;
	   else if(r9<8'b00010101)
	         d[8] = 0;
	   else
	         d[8] = d[9];
	   r8 = r9 - d[8]*8'b00010101;
	end

always@(r8)
    begin
	   if(r8>=8'b00010101) 
		     d[7] = 1;
	   else if(r8<8'b00001101)
	         d[7] = 0;
	   else
	         d[7] = d[8];
	   r7 = r8 - d[7]*8'b00001101;
	end

always@(r7)
    begin
	   if(r7>=8'b00001101) 
		     d[6] = 1;
	   else if(r7<8'b00001000)
	         d[6] = 0;
	   else
	         d[6] = d[7];
	   r6 = r7 - d[6]*8'b00001000;
	end

always@(r6)
    begin
	   if(r6>=8'b00001000) 
		     d[5] = 1;
	   else if(r6<8'b00000101)
	         d[5] = 0;
	   else
	         d[5] = d[6];
	   r5 = r6 - d[5]*8'b00000101;
	end

always@(r5)
    begin
	   if(r5>=8'b00000101) 
		     d[4] = 1;
	   else if(r5<8'b00000011)
	         d[4] = 0;
	   else
	         d[4] = d[5];
	   r4 = r5 - d[4]*8'b00000011;
	end

always@(r4)
    begin
	   if(r4>=8'b00000011) 
		     d[3] = 1;
	   else if(r4<8'b00000010)
	         d[3] = 0;
	   else
	         d[3] = d[4];
	   r3 = r4 - d[3]*8'b00000010;
	end

always@(r3)
    begin
	   if(r3>=8'b00000010) 
		     d[2] = 1;
	   else if(r3<8'b00000001)
	         d[2] = 0;
	   else
	         d[2] = d[3];
	   r2 = r3 - d[2]*8'b00000001;
	end

always@(r2)
	begin
		d[1] = r2[0];
	end

endmodule
