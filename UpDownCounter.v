 // 3-bit Up/Down Counter 
module UpDownCounter( 
input clk,             // Clock input 
input reset,           // Asynchronous reset 
input up_down,         // Direction control: 1 for up, 0 for down 
output reg [2:0] Q     // 3-bit counter output 
); 
always @(posedge clk or posedge reset) begin 
if (reset) begin 
Q <= 3'b000; // Reset counter to 0 
end else begin 
if (up_down) 
Q <= Q + 1; // Count up 
else 
Q <= Q - 1; // Count down 
end 
end 
endmodule