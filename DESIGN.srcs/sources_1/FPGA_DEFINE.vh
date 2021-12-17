//////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2021 Kikyoko
// https://github.com/Kikyoko
// 
// Module   : FPGA_DEFINE
// Device   : Xilinx/Altera
// Author   : Kikyoko
// Contact  : Kikyoko@outlook.com
// Date     : 2021/12/17 14:18:56
// Revision : 1.00 - Simulation correct
//
// Description  : fpga define file
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

// =========================================================================================================================================
// Project
// =========================================================================================================================================
`timescale 1ns/1ps

//include tcl define file
`include "TCL_DEFINE.vh"

`define _DEVICE_ALTERA

//`define _DEBUG_EN

`define _TEST_RANDOM_SEED   20211217

//FPGA Ver.
`define _product_code       8'h01
`define _major_ver          8'h01
`define _minor_ver          8'h01
`define _build_id           8'h01

`define _FRAC_SYS_CLK       150

// =========================================================================================================================================
// reg
// =========================================================================================================================================
`define _reg_rw_test        8'h00       //rw
`define _reg_fpga_ver       8'h01       //ro

// =========================================================================================================================================
// Parameter
// =========================================================================================================================================
`define _UART_BAUD          115200