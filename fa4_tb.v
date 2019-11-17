module fa4_tb;
wire t_cout;
wire [3:0]t_s;
reg t_cin;
reg [3:0]t_a;
reg [3:0]t_b;
fa4b i1 (t_a,t_b,t_cin,t_s,t_cout);

task print;
 begin
     $display("time = %0d",$time," ns"," Input1 = ",t_a,"Input2 = ",t_b,"Cin = ",t_cin," Output = " ,t_s," Cout = ",t_cout);
 end
endtask

initial
    begin
        $dumpfile("adder_test");
        $dumpvars;
        t_a<=4'b1110;t_b<=4'b0101;t_cin<=1'b0;#10print;
        t_a=4'b1111;t_b=4'b1111;t_cin=1'b1;#10print;
        t_a=4'b0011;t_b=4'b1100;t_cin=1'b0;#10print;
        t_a=4'b1001;t_b=4'b1110;t_cin=1'b1;#10print;
        t_a=4'b0010;t_b=4'b1010;t_cin=1'b1;#10print;
    end
endmodule