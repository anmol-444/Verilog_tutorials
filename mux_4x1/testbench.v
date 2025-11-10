module tb();

    reg [1:0]A,B,C,D;
    reg [1:0]S;
    wire [1:0]Y;

    mux_case dut  (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .S(S),
        .Y(Y)
    );

    initial
        begin
            A <= 2'b11;
            B <= 2'b10;
            C <= 2'b01;
            D <= 2'b00;
            #100;

            S <= 2'b00;
            #100;

            S <= 2'b01;
            #100;

            S <= 2'b10;
            #100;

            S <= 2'b11;
            #100;
        end

    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars(0);
      
        end

endmodule