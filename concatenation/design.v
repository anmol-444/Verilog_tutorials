module concatenate(A,B,C,D);

    input [1:0]A;
    input [3:0]B;
    output [7:0]C;
    output [15:0]D;

    // C = {00,B,11}
    assign C = {2'b00,B,2'b11};

    // D = {8*{A}}
    assign D = {8{A}};

endmodule