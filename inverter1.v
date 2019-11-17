// `reset all
//`timescale 1ns/1ns
//`view vlog

module inverter1(out,in);
    output out;
    input in;
    not(out,in);
endmodule //invert_gate output out,input in

//noview