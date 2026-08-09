`timescale 1ns/1ps

module ring_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] q;

    // Instantiate DUT
    ring_counter dut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize
        clk = 0;
        reset = 1;

        // Apply reset
        #10;
        reset = 0;

        // Allow counter to run
        #100;

        $finish;
    end

    // Display values
    initial begin
        $monitor("Time = %0t | Reset = %b | Q = %b",
                 $time, reset, q);
    end

    // Generate waveform
    initial begin
        $dumpfile("ring_counter.vcd");
        $dumpvars(0, ring_counter_tb);
    end

endmodule