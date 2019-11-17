module alltb;
wire [5:0]ot;
reg ta,tb;
all a1 (ta,tb,ot);

task print;
    begin
        $display(" Time = %0d",$time," a = ",ta," b = ",tb," Output = ",ot);
    end
endtask

initial
    begin
        $dumpfile("all_test");
        $dumpvars;
        ta = 1'b0;tb = 1'b0;#10 print;
        ta = 1'b0;tb = 1'b1;#10 print;
        ta = 1'b1;tb = 1'b0;#10 print;
        ta = 1'b1;tb = 1'b1;#10 print;
    end
endmodule // alltb;
