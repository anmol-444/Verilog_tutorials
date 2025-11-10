module multiplexer(A,B,S,Y); 

    // 2x1 mux
    input S;
    // using A and B as two bit input
    input [1:0] A,B;
    output [1:0] Y;

    assign Y = (S == 1'b0) ? A : B;


endmodule