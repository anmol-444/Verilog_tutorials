module tb();

    reg [1:0]A;
    reg [3:0]B;

    wire [7:0]C;
    wire [15:0]D;

    concatenate dut (
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );

    initial
        begin
          A <= 2'b11;
          B <= 4'b1010;
          #100;
        end

    initial
        begin
          $dumpfile("dump.vcd");
          $dumpvars(0);
        end

endmodule