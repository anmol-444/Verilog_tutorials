module non_blocking(A,B,clk,res,Q);

    input A,B,clk,res;
    output reg Q;

    reg Z;
    always @ (posedge clk) begin
      if(res == 1'b1) begin
        Z = 1'b0;
        // Z <= 1'b0;
        Q = 1'b0;
        // Q <= 1'b0;
      end
      else begin
        Z = A | B;
        // Z <= A | B;
        Q = Z;
        // Q <= Z;
      end
    end

    // blocking '='
    // non-blocking '<='

endmodule