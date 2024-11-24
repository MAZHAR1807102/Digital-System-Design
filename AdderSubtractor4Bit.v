//-----------------------------------------------------------------------------
//
// Title       : \4Bit_Add_Sub\ 
// Design      : 4bit_add_sub
// Author      : MAZHAR
// Company     : ICE
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/4_bit_AddnSub/4bit_add_sub/src/4Bit_Add_Sub.v
// Generated   : Sat Nov 23 22:07:02 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {\4Bit_Add_Sub\ }}


// 4-bit Adder-Subtractor Module
module AdderSubtractor4Bit(
    input [3:0] A,    // First 4-bit operand
    input [3:0] B,    // Second 4-bit operand
    input mode,       // Mode: 0 for addition, 1 for subtraction
    output [3:0] Sum, // 4-bit Result
    output CarryOut   // Carry or Borrow Out
);
    wire [3:0] B_xor;  // XOR of B with mode
    wire CarryIn;      // Carry-In for LSB
    wire [3:0] Carry;  // Internal carry wires

    // XOR the B input with the mode signal
    assign B_xor = B ^ {4{mode}};

    // Perform bitwise addition with carry propagation
    assign {CarryOut, Sum} = A + B_xor + mode;
endmodule


