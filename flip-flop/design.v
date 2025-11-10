module D_flip_flop(res,Clk,D,Q);

    input res, Clk, D;
    output reg Q;

    always @(posedge Clk) begin
      if(res == 1'b1) begin
        Q <= 1'b0;
      end
      else begin
        Q <= D;
      end
    end

endmodule