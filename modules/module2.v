module module2(I1,I2,Z);

    input I1,I2;
    output Z;

    assign Z = ~((I1 | I2) & (I1 & I2));

endmodule