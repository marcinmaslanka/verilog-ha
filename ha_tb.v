// Testbench for the Half Adder (ha)
module ha_tb;

  // Declare test signals
  reg a, b, clk;           // Inputs: 'a' and 'b' are the data bits, 'clk' is an unused clock here
  wire sum, carry;         // Outputs from the DUT (Device Under Test)

  // Instantiate the Half Adder module (Unit Under Test - UUT)
  ha uut (
    .a(a),                 // Connect testbench 'a' to UUT input 'a'
    .b(b),                 // Connect testbench 'b' to UUT input 'b'
    .clk(clk),             // Connect testbench 'clk' to UUT input 'clk' (not used in combinational logic)
    .sum(sum),             // Connect UUT output 'sum' to testbench wire 'sum'
    .carry(carry)          // Connect UUT output 'carry' to testbench wire 'carry'
  );

  // Clock generation process
  // Creates a clock with a 10ns period (5ns high, 5ns low)
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5ns
  end

  // Stimulus process: applies test vectors to the inputs
  initial begin
    $dumpfile("ha_tb.vcd");      // Set the name of the output VCD (waveform) file
    $dumpvars(0, ha_tb);         // Dump all signals in this module to the VCD file

    // Apply test cases with 10ns intervals
    a = 0; b = 0;                // Test case 1: 0 + 0
    #10;

    a = 0; b = 1;                // Test case 2: 0 + 1
    #10;

    a = 1; b = 0;                // Test case 3: 1 + 0
    #10;

    a = 1; b = 1;                // Test case 4: 1 + 1
    #10;

    $finish;                     // End simulation
  end

endmodule
