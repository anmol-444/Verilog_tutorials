module halfAdder(A, B, S, C);

    input A, B;
    output S, C;

    // halfAdder (S, C, A, B);


    assign S = A ^ B;

    assign C = A & B;

endmodule