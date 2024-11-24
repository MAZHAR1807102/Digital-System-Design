`timescale 1ns / 1ps 
module UpDownCounter_tb; 
reg clk;	   // Clock input 
reg reset;	   //  Asynchronous reset 
reg up_down;          // Direction control 
wire [2:0] Q;         // 3-bit counter output 
// Instantiate the design under test (DUT) 
UpDownCounter uut ( 
.clk(clk), 
.reset(reset), 
.up_down(up_down), 
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
$display("Time | Reset | Up/Down | Q"); 
$display("------------------------"); 
// Apply reset 
reset = 1; up_down = 1; #10; // Reset the counter 
reset = 0; #10; 
// Count up 
up_down = 1; #50; // Let it count up for 50 ns 
// Count down 
up_down = 0; #50; // Let it count down for 50 ns 
// Apply reset during operation 
reset = 1; #10; 
reset = 0; #10; 
// Count up again 
up_down = 1; #30; 
$stop; // End simulation 
end 
// Monitor output 
initial begin 
$monitor("%4t | %b     | %b     | %b", $time, reset, up_down, Q);       
end 
endmodule 
