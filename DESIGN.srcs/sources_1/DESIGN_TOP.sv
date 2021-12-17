//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2021 Kikyoko
// https://github.com/Kikyoko
//
// Module   : DESIGN_TOP
// Device   : Altera
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2021/12/17 14:05:50
// Revision : 1.00 - Simulation correct
//
// Description  : EP4CE10 top
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//////////////////////////////////////////////////////////////////////////////////////////

`include "FPGA_DEFINE.vh"

module DESIGN_TOP (
    //Hardware clock & reset
    input               hard_clk        , //50M
    input               hard_rst_n      ,
    
    //Led interface
    output  [  3:0]     o_led
);

// =========================================================================================================================================
// Signal
// =========================================================================================================================================
logic   [ 27:0]     r_len   ;
logic   [  3:0]     r_led   ;

// =========================================================================================================================================
// Output generate
// =========================================================================================================================================
assign o_led = r_led;

// =========================================================================================================================================
// Logic
// =========================================================================================================================================
//clock & reset generate
always @ (posedge hard_clk) begin
    if (~hard_rst_n) begin
        r_len   <= 50_000_000-1;
        r_led   <= 4'd1;
    end else begin
        if (~|r_len) begin
            r_len   <= 50_000_000-1;
            r_led   <= {r_led[2:0],r_led[3]};
        end else begin
            r_len   <= r_len - 1'b1;
        end
    end
end

endmodule
