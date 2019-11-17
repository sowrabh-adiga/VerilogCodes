//module fa(x,y,cin,s,cout);
//input x,y,cin;
//output s,cout;
//wire p,r,si;
//xor(p,x,y);
//xor(s,p,cin);
//and(r,p,cin);
//and(si,x,y);
//or(co,r,si);
//endmodule // fainput x,y,cin, output s,twire p,r,s;
module fa(
    input a,
    input b,
    input cin,
    output s,
    output cout);
    wire w1,w2,w3;
    and( w1, a, b );
	and( w2, a, cin );
	and( w3, b, cin );
	or( cout, w1, w2, w3 );
	 
         // sum
	xor( s, a, b, cin );
endmodule // fainput a,
