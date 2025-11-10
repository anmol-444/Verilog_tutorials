module parameterized #(parameter WIDTH = 32) (A,B,C);

    input [WIDTH-1:0] A,B;
    output [WIDTH-1:0]C;

    assign C = A + B;

endmodule