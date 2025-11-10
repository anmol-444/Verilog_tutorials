`include "module1.v"
`include "module2.v"

module top_level_module(A,B,C,D,clk,res,Z);

    input A,B,C,D,clk,res;
    output Z;

    // middle register
    reg [1:0] middle_reg;

    // module1 instentiation
    wire out1,out2;
    module1 module1(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .out1(out1),
        .out2(out2)
        );

    always @ (posedge clk)
    begin
      if(res) 
        begin
          middle_reg <= 2'b00;
        end
      else begin
        middle_reg[0] <= out1;
        middle_reg[1] <= out2;
      end
    end

    // module2 instentiation
    module2 module2(
        .I1(middle_reg[0]),
        .I2(middle_reg[1]),
        .Z(Z)
        );

endmodule