`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/24 17:58:23
// Design Name: 
// Module Name: IDP_encoder_14
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include "FNS.vh"
module IDP_encoder_14(  //***********
    input wire[`IBLEN14 - 1 : 0] datain,    //******************
    input wire clock,
    input wire rst_n,
    output reg[13:0] codeout    //********************
    );
    
    //
    reg [3:0] code_reg;
    wire [13 - 4 : 0] code_wire;    //*****************
    
    reg [`FRLEN10 - 1 : 0] r_msb;   //*******************
    
    //four msbs
    always @(datain) begin      //*******************
        if(datain < `FNS12) begin   
            code_reg[3:0] = 4'b0000;
            r_msb = datain; 
        end//
        
        else if( (datain >= `FNS12) && (datain < `FNS13) ) begin
            code_reg[3:0] = 4'b0001;
            r_msb = datain - `FNS11; 
        end//
        
        else if( (datain >= `FNS13) && (datain < `FNS14) ) begin
            code_reg[3:0] = 4'b1000;
            r_msb = datain - `FNS13; 
        end//
        
        else if( (datain >= `FNS14) && (datain < (`FNS13 * 2)) ) begin
            code_reg[3:0] = 4'b1001;
            r_msb = datain - `FNS11 - `FNS13; 
        end //
        
        else if( (datain >= (`FNS13 * 2)) && (datain < `FNS15) ) begin
            code_reg[3:0] = 4'b0011;
            r_msb = datain - `FNS11 - `FNS14; 
        end//
        
        else if( (datain >= `FNS15) && (datain < (`FNS14 * 2)) ) begin
            code_reg[3:0] = 4'b1100;
            r_msb = datain - `FNS14 - `FNS13; 
        end//
        
        else if( (datain >= (`FNS14 * 2)) && (datain < (`FNS14 * 2 + `FNS11)) ) begin
            code_reg[3:0] = 4'b0110;
            r_msb = datain - (`FNS14 * 2); 
        end//
        
        else if( (datain >= (`FNS14 * 2 + `FNS11)) && (datain < `FNS16) ) begin
            code_reg[3:0] = 4'b0111;
            r_msb = datain - (`FNS14 * 2) - `FNS11; 
        end//
        
        else if( (datain >= `FNS16) && (datain < (`FNS16 + `FNS11)) ) begin
            code_reg[3:0] = 4'b1110;
            r_msb = datain - (`FNS14 * 2) - `FNS13; 
        end
        
        else begin
            code_reg[3:0] = 4'b1111;
            r_msb = datain - (`FNS14 * 2) - `FNS13 - `FNS11; 
        end

    end
    

    //
    
   


    
    wire [`FRLEN09 - 1 : 0] r09;
    wire [`FRLEN08 - 1 : 0] r08;
    wire [`FRLEN07 - 1 : 0] r07;
    
    wire [`FRLEN06 - 1 : 0] r06;
    wire [`FRLEN05 - 1 : 0] r05;
    wire [`FRLEN04 - 1 : 0] r04;
    
    wire [`FRLEN03 - 1 : 0] r03;
    wire [`FRLEN02 - 1 : 0] r02;
    wire [`FRLEN01 - 1 : 0] r01;
    
    
    //



    
    assign r09 = (code_wire[9] == 0) ? (r_msb) : (r_msb - `FNS10);
    
    assign r08 = (code_wire[08] == 0) ? (r09) : (r09 - `FNS09);
    assign r07 = (code_wire[07] == 0) ? (r08) : (r08 - `FNS08);
    assign r06 = (code_wire[06] == 0) ? (r07) : (r07 - `FNS07);
    
    assign r05 = (code_wire[05] == 0) ? (r06) : (r06 - `FNS06);
    assign r04 = (code_wire[04] == 0) ? (r05) : (r05 - `FNS05);
    assign r03 = (code_wire[03] == 0) ? (r04) : (r04 - `FNS04);
    
    assign r02 = (code_wire[02] == 0) ? (r03) : (r03 - `FNS03);
    assign r01 = (code_wire[01] == 0) ? (r02) : (r02 - `FNS02);
    
    //
   
    
    assign code_wire[9] = (r_msb < `FNS10) ? (0) : ( (r_msb >= `FNS11) ? (1) : (code_reg[0]) );
    
    assign code_wire[8] = (r09 < `FNS09) ? (0) : ( (r09 >= `FNS10) ? (1) : (code_wire[9]) );
    assign code_wire[7] = (r08 < `FNS08) ? (0) : ( (r08 >= `FNS09) ? (1) : (code_wire[8]) );
    assign code_wire[6] = (r07 < `FNS07) ? (0) : ( (r07 >= `FNS08) ? (1) : (code_wire[7]) );
    
    assign code_wire[5] = (r06 < `FNS06) ? (0) : ( (r06 >= `FNS07) ? (1) : (code_wire[6]) );
    assign code_wire[4] = (r05 < `FNS05) ? (0) : ( (r05 >= `FNS06) ? (1) : (code_wire[5]) );
    assign code_wire[3] = (r04 < `FNS04) ? (0) : ( (r04 >= `FNS05) ? (1) : (code_wire[4]) );
    
    assign code_wire[2] = (r03 < `FNS03) ? (0) : ( (r03 >= `FNS04) ? (1) : (code_wire[3]) );
    assign code_wire[1] = (r02 < `FNS02) ? (0) : ( (r02 >= `FNS03) ? (1) : (code_wire[2]) );
    assign code_wire[0] = r01;
    
    
    //sync
    always @(posedge clock or negedge rst_n) begin
        if (~rst_n) begin
            codeout[13 : 0] <= { 14{1'b0} };
        end
        else begin
            codeout[13 - 4 : 0] <= code_wire;
            codeout[13 : 13 - 3] <= code_reg;
        end
        
    end
    
endmodule
