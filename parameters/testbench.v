module tb();

    reg [31:0] A,B;
    wire [31:0]C;

    parameterized #(.WIDTH(32)) dut (
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin
      A <= 32'h00000001;
      B <= 32'h00000002;
      #100;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule