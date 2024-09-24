module full_adder (

    input a,
    input b,
    input c,
    output d,
    output e
    
);

    wire f;
    wire g;
    wire h;
    assign f = a^b;
    assign g = a&c;
    assign h = a&b;

    assign d = f^c;
    assign e = g|h;

endmodule