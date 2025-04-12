module ha_tb;

  reg a, b, clk;
  wire sum, carry;

  // Instanz des Half Adders
  ha uut (
    .a(a),
    .b(b),
    .clk(clk),
    .sum(sum),
    .carry(carry)
  );

  // Clock erzeugen (Periode = 10ns)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    $dumpfile("ha_tb.vcd");
    $dumpvars(0, ha_tb);

    // Testvektoren
    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;
  end

endmodule
