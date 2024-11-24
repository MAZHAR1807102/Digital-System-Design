  // 4-bit Asynchronous Mod-13 Counter 
module Mod13Counter( 
input clk,            
// Clock input 
input reset,          // Asynchronous reset 
output reg [3:0] Q    // 4-bit counter output 
); 
always @(posedge clk or posedge reset) begin 
if (reset) begin 
Q <= 4'b0000; // Reset the counter to 0 
end else begin 
if (Q == 4'b1100) // If the counter reaches 13 (1100 in binary) 
Q <= 4'b0000; // Reset to 0 
else 
Q <= Q + 1;   // Increment the counter 
end 
end 
endmodule