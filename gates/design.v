module gate(A, B, Y);

    input A, B;
    output Y;

    // and (Y, A, B);

    assign Y = A & B;


endmodule