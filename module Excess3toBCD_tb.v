`timescale 1ns / 1ps 
module Excess3toBCD_tb; 
reg [3:0] Excess3;      
// 4-bit Excess-3 input 
wire [3:0] BCD;         // 4-bit BCD output 
// Instantiate the design under test (DUT) 
Excess3toBCD uut ( 
.Excess3(Excess3), 
.BCD(BCD) 
); 
 
    // Test sequence 
    initial begin 
        // Display header 
        $display("Time | Excess-3 | BCD"); 
        $display("--------------------"); 
 
        // Test cases 
        Excess3 = 4'b0011; #10; // Excess-3: 3 -> BCD: 0 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b0100; #10; // Excess-3: 4 -> BCD: 1 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b0101; #10; // Excess-3: 5 -> BCD: 2 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b0110; #10; // Excess-3: 6 -> BCD: 3 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b0111; #10; // Excess-3: 7 -> BCD: 4 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b1000; #10; // Excess-3: 8 -> BCD: 5 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b1001; #10; // Excess-3: 9 -> BCD: 6 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b1010; #10; // Excess-3: 10 -> BCD: 7 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b1011; #10; // Excess-3: 11 -> BCD: 8 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        Excess3 = 4'b1100; #10; // Excess-3: 12 -> BCD: 9 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
        // Invalid Excess-3 values (optional testing) 
        Excess3 = 4'b1101; #10; // Invalid Excess-3 
        $display("%4t | %b     | %b", $time, Excess3, BCD); 
 
	$stop; // End simulation		  
	end 
endmodule 