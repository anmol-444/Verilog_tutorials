module tb();

    reg res, Clk, D;

    wire Q;

    D_flip_flop dut (
        .res(res),
        .Clk(Clk),
        .D(D),
        .Q(Q)
    );

    always begin
      Clk <= 1'b0;
      #50;
      Clk <= 1'b1;
      #50;
    end

    initial begin
      
      res <= 1'b1;
      #100;
      res <= 1'b0;
      #100;
      D <= 1'b1;
      #100;
      D <= 1'b0;
      #100;
      $finish;

    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule