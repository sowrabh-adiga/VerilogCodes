// `reset all
//`timescale 1ns/1ns
//`view vlog

module inv_test;
wire o;
reg i;
//`uselib vlog
inverter1 l1 (o,i);
//`nouse lib

task  print;
 begin
     //$dumpfile("inv_test");
     //$dumpvars;
     $display("time = %0d",$time," ns"," Input = ",i," Output = " ,o);
 end
 endtask
 initial
    begin
        $dumpfile("inv_test");
        $dumpvars;
        i = 1'b0; #10 print;
        i = 1'b1; #10 print;
        i = 1'bx; #10 print;
        i = 1'bz; #10 print;
    end
endmodule // inv_t;wire o;
//`no view