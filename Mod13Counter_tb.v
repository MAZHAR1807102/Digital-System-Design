`timescale 1ns / 1ps 
module Mod13Counter_tb; 
reg clk;			  // clock input
reg reset;				 // Asynchronous reset 
wire [3:0] Q;           // 4-bit counter output    
                     
// Instantiate the design under test (DUT) 
Mod13Counter uut ( 
.clk(clk), 
.reset(reset), 
.Q(Q) 
); 
// Clock generation 
initial begin 
clk = 0; 
forever #5 clk = ~clk; // Generate clock with 10 ns period 
end 
// Test sequence 
initial begin 
// Display header 
$display("Time | Reset | Q"); 
$display("----------------"); 
// Apply reset 
reset = 1; #10; 
reset = 0; #10; 
// Let the counter run 
#130; // Run for 130 ns (to see multiple cycles) 
// Apply reset during counting 
reset = 1; #10; 
reset = 0; #10; 
// Let the counter run again 
#100; 
$stop; // End simulation 
end 
// Monitor output 
initial begin 
$monitor("%4t | %b     | %b", $time, reset, Q); 
end 
endmodule