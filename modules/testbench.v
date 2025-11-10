module tb();

    reg A,B,C,D,clk,res;
    wire Z;

    top_level_module dut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .clk(clk),
        .res(res),
        .Z(Z)
    );

    always #50 clk = ~clk;
    initial
    begin
      A = 1'b0;
      B = 1'b0;
      C = 1'b0;
      D = 1'b0;
      clk = 1'b0;
      res = 1'b1;
      #100;

      res = 1'b0;
      A = 1'b0;
      B = 1'b1;
      C = 1'b1;
      D = 1'b1;
      #100;

      A = 1'b0;
      B = 1'b1;
      C = 1'b1;
      D = 1'b0;
      #200;

      $finish;
    end

    initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule