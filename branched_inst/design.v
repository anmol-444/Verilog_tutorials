module if_else(A,B,S,Y);

    input A,B,S;
    output reg [1:0]Y;

    always @ (A,B,S) 
    begin
      if(S == 1'b0)
        Y = A + B;
      else 
        Y = A * B;
    end

endmodule