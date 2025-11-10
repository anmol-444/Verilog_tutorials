module sequential(A,B,C,clk,res,out);

    input A,B,C,clk, res;
    output out;

    wire resultCombReg1;
    reg reg1;
    assign resultCombReg1 = (A | B) & C;

    wire resultCombReg2;
    reg reg2;
    assign resultCombReg2 = ~(reg1);

    always @ (posedge clk) begin
      if(res == 1'b1)
       begin
         reg1 <= 1'b0;
         reg2 <= 1'b0;
       end
       else 
        begin
            reg1 <= resultCombReg1;
            reg2 <= resultCombReg2;
        end
    end

    assign out = ~(reg2) & (~(res));


endmodule