// Half-Adder Module (ha)
// This module computes the sum and carry for two input bits (a and b) using XOR and AND gates.
module ha (
    input a,      // First input bit
    input b,      // Second input bit
    input clk,    // Clock signal (not used in this design but can be added for sequential logic)
    output sum,   // Output sum (a XOR b)
    output carry  // Output carry (a AND b)
);
    
    // Sum is the result of XOR operation between input a and b
    assign sum = a ^ b;  // Sum = a XOR b
    
    // Carry is the result of AND operation between input a and b
    assign carry = a & b;  // Carry = a AND b
    
endmodule
