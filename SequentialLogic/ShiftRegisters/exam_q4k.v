module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    reg [2:0] r;
    always @(posedge clk)
        if(~resetn)
        	{out,r} <= 0;
    else {out,r }<= {r,in};
endmodule
