module mux_case(A,B,C,D,S,Y);

    input [1:0]A,B,C,D;
    input [1:0]S;
    output reg [1:0]Y;

    always @ (A or B or C or D or S) begin
      case(S)
        2'b00 : begin
          Y <= A;
        end
        2'b01 : begin
          Y <= B;
        end
        2'b10 : begin
          Y <= C;
        end
        2'b11 : begin
          Y <= D;
        end
        default : begin
          Y <= 2'b00;
        end
      endcase
    end

endmodule