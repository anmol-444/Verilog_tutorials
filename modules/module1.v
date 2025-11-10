module module1(A,B,C,D,out1,out2);

    input A,B,C,D;
    output out1,out2;

    assign out1 = ((A | B) & C) | (~(A & B));
    assign out2 = D;

endmodule