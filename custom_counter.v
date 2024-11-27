module custom_counter (
    input clk,      // Clock signal
    input reset,    // Reset signal (active high)
    output reg [3:0] count // 4-bit counter output
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'b0000; // Initialize to 0000
        end else begin
            case (count)
                4'b0000: count <= 4'b1001; // 0000 ? 1001
                4'b1001: count <= 4'b1010; // 1001 ? 1010
                4'b1010: count <= 4'b1100; // 1010 ? 1100
                4'b1100: count <= 4'b0111; // 1100 ? 0111
                4'b0111: count <= 4'b1101; // 0111 ? 1101
                4'b1101: count <= 4'b0100; // 1101 ? 0100
                4'b0100: count <= 4'b0101; // 0100 ? 0101
                4'b0101: count <= 4'b0110; // 0101 ? 0110
                4'b0110: count <= 4'b0000; // 0110 ? 0000
                default: count <= 4'b0000; // Default case
            endcase
        end
    end

endmodule
