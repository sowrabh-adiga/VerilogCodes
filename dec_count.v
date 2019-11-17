module dec_count(clk,y);
input clk;
output reg [3:0]y;
 initial
    begin
        y = 4'd9;
    end
 always @(posedge clk)
    begin
        if (y == 4'd9) 
            begin
               y = 4'd0; 
            end
        else
            begin
                y = y+1;
            end
    end
endmodule // dec_countinput clk;
