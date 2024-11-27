`timescale 1ns / 1ps

module custom_counter_tb;

    // Inputs
    reg clk;      // Clock signal
    reg reset;    // Reset signal

    // Outputs
    wire [3:0] count; // 4-bit counter output

    // Instantiate the Unit Under Test (UUT)
    custom_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        // Monitor the output
        $monitor("Time = %0t | Reset = %b | Count = %b", $time, reset, count);

        // Initialize inputs
        reset = 1;
        #10; // Wait for 10ns

        reset = 0; // Release reset
        #100; // Let the counter run for 100ns

        reset = 1; // Apply reset again
        #10;

        reset = 0; // Release reset
        #50; // Let it run for 50ns

        $stop; // End the simulation
    end

endmodule
