//-----------------------------------------------------------------------------
//
// Title       : AdderSubtractor4Bit_tb
// Design      : 4bit_add_sub
// Author      : MAZHAR
// Company     : ICE
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/4_bit_AddnSub/4bit_add_sub/src/AdderSubtractor4Bit_tb.v
// Generated   : Sat Nov 23 22:09:24 2024
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
//{module {AdderSubtractor4Bit_tb}}

//module AdderSubtractor4Bit_tb ();

//}} End of automatically maintained section

// Enter your statements here //  

module AdderSubtractor4Bit_tb;

    reg [3:0] A;           // First operand
    reg [3:0] B;           // Second operand
    reg mode;              // Mode input: 0 for addition, 1 for subtraction
    wire [3:0] Sum;        // Output result
    wire CarryOut;         // Carry/Borrow out

    // Instantiate the design under test (DUT)
    AdderSubtractor4Bit uut (
        .A(A),
        .B(B),
        .mode(mode),
        .Sum(Sum),
        .CarryOut(CarryOut)
    );

    // Test sequence
    initial begin
        // Display the header
        $display("Time | A    | B    | Mode | Sum  | CarryOut");
        $display("------------------------------------------------");

        // Test cases
        A = 4'b0001; B = 4'b0010; mode = 0; #10; // Addition: 1 + 2
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);

        A = 4'b1010; B = 4'b0101; mode = 0; #10; // Addition: 10 + 5
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);
	   /*
        A = 4'b1111; B = 4'b0001; mode = 0; #10; // Addition with CarryOut: 15 + 1
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);

        A = 4'b1001; B = 4'b0011; mode = 1; #10; // Subtraction: 9 - 3
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);

        A = 4'b0100; B = 4'b1000; mode = 1; #10; // Subtraction with BorrowOut: 4 - 8
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);

        A = 4'b0000; B = 4'b0000; mode = 1; #10; // Subtraction: 0 - 0
        $display("%4t | %b | %b | %b    | %b | %b", $time, A, B, mode, Sum, CarryOut);
		*/
        $stop; // End simulation
    end
endmodule



