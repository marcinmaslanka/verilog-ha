module ha (
    input a,
    input b,
    input clk,
    output sum,    // Sum
    output carry   // Carry
);
    assign sum = a ^ b;  // Sum
    assign carry = a & b;  // Carry
endmodule