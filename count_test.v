module count_test;


wire [3:0]out;
reg clk2;

dec_count li (clk2,out);
initial
    begin
        clk2 = 1'b1;
    end
always
    begin
        #10 clk2 = ~clk2;
    end
initial
    begin
        $dumpfile("count1_test");
        $dumpvars;
        $monitor("Time = %0d ns",$time," Output = ",out);
    end
initial
    begin
        #260 $finish;
    end
endmodule // count_testwire [3:0]out;
