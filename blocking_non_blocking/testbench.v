module tb();

    reg A,B,clk,res;
    wire Q;

    non_blocking dut(
        .A(A),
        .B(B),
        .clk(clk),
        .res(res),
        .Q(Q)
    );

    always begin
        clk <= 1'b0;
        #50;
        clk <= 1'b1;
        #50;
    end

    initial begin
      res <= 1'b1;
      #100;

      res <= 1'b0;
      A <= 1'b0;
      B <= 1'b0;
      #100;

      A <= 1'b0;
      B <= 1'b1;
      #100;

      A <= 1'b1;
      B <= 1'b0;
      #100;

      A <= 1'b1;
      B <= 1'b1;
      #100;
      $finish;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule