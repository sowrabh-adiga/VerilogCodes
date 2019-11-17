module bser(en, clk, in, out, done);
        input en, clk;
        input [7:0]in;
        output out, done;
        reg [2:0]cst;
        reg out, done;
 
        initial
        begin
                done = 0;
                cst = 3'b0;
                out = 0;
        end
 
        always @(posedge en)
        begin
                done = 0;
                cst = 3'b0;
                out = 0;
        end
 
        always @(posedge clk)
                if (en)
                begin
                        out = in[cst];
                        cst = cst + 1;
                        if (cst == 8)
                        begin
                                done = 1;
                                cst = 0;
                        end
                end
endmodule
