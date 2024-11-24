	// BCD to Excess-3 Code Converter
module BCDtoExcess3(
    input [3:0] BCD,       // 4-bit BCD input
    output [3:0] Excess3   // 4-bit Excess-3 output
);
    // Add 3 to the BCD input to convert to Excess-3
    assign Excess3 = BCD + 4'b0011;
endmodule
