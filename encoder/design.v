module encoder(Y0,Y1,Y2,Y3,A0,A1);

    input Y0,Y1,Y2,Y3;

    output A0,A1;

    assign A0 = Y1 | Y3;
    assign A1 = Y2 | Y3;

endmodule