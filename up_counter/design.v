module up_counter(res,clk,out);

    input res, clk;
    output reg [3:0]out;

    always @ (posedge clk)
    begin
      if(res == 1'b1)
      out = 4'b0000;
      
      else out = out + 1'b1;
    end

endmodule