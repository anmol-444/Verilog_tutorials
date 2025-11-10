module tb();

    reg res, clk=0;

    wire [3:0]out;

    up_counter dut (
        .res(res),
        .clk(clk),
        .out(out)
    );
    always begin
      clk = ~clk;
      #50;
    end

    initial 
    begin
      res = 1'b1;
      #100;

      res = 1'b0;
      #1700;
      $finish;
    end


    initial
    begin
      $dumpfile("Counter.vcd");
      $dumpvars(0);
    end


endmodule