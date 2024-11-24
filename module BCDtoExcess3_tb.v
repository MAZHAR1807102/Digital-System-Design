`timescale 1ns / 1ps

module BCDtoExcess3_tb;

    reg [3:0] BCD;          // 4-bit BCD input
    wire [3:0] Excess3;     // 4-bit Excess-3 output

    // Instantiate the design under test (DUT)
    BCDtoExcess3 uut (
        .BCD(BCD),
        .Excess3(Excess3)
    );

    // Test sequence
    initial begin
        // Display header
        $display("Time | BCD  | Excess-3");
        $display("----------------------");

        // Test cases
        BCD = 4'b0000; #10; // 0 -> 3
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0001; #10; // 1 -> 4
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0010; #10; // 2 -> 5
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0011; #10; // 3 -> 6
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0100; #10; // 4 -> 7
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0101; #10; // 5 -> 8
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0110; #10; // 6 -> 9
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b0111; #10; // 7 -> 10
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b1000; #10; // 8 -> 11
        $display("%4t | %b | %b", $time, BCD, Excess3);

        BCD = 4'b1001; #10; // 9 -> 12
        $display("%4t | %b | %b", $time, BCD, Excess3);

        // Invalid BCD values (optional testing)
        BCD = 4'b1010; #10; // Invalid -> 13
        $display("%4t | %b | %b", $time, BCD, Excess3);

        $stop; // End simulation
    end
endmodule
