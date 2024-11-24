// Excess-3 Code to BCD Code Converter 
module Excess3toBCD( 
input [3:0] Excess3,  // 4-bit Excess-3 input 
output [3:0] BCD      // 4-bit BCD output 
); 
// Subtract 3 from the Excess-3 input to convert to BCD 
assign BCD = Excess3 - 4'b0011; 
endmodule 