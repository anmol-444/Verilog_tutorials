module if_else_tb();

    reg A,B,S;
    wire [1:0]Y;

    if_else dut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
      A = 1'b0;
      B = 1'B0;
      S = 1'b0;
      #50;

      A = 1'b0;
      B = 1'B1;
      S = 1'b1;
      #100;

      A = 1'b1;
      B = 1'B0;
      S = 1'b0;
      #150;

      A = 1'b1;
      B = 1'B1;
      S = 1'b1;
      #200;
    end

    initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule