module tb();

reg A,B,C,clk,res;
wire out;

sequential dut (
    .A(A),
    .B(B),
    .C(C),
    .clk(clk),
    .res(res),
    .out(out)
);
always #50 clk = ~clk;

initial 
    begin
      A = 1'b0;
      B = 1'b0;
      C = 1'b0;
      clk = 1'b0;
      res = 1'b1;
      #100;

      res = 1'b0;
      A = 1'b0;
      B = 1'b1;
      C = 1'b1;
      #300;

      $finish;
    end

initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule