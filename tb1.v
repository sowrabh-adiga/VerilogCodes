module bser_tb;
        reg en, clk;
        reg [7:0]in;
        bser g(en, clk, in, out, done);
        initial
        begin
                en = 0; in=8'b00010111; clk=0;
                $dumpfile("bser_tb");
                $dumpvars;
                #10000 $finish;
        end
 
        always
        begin
                #1 clk = ~clk;
        end
 
        initial
        begin
                #2 en=1;
        end
endmodule
