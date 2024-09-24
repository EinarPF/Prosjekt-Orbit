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
    assign f = a^b;  // xor
    assign g = a&c;  // and
    assign h = a&b;  // and

    assign d = f^c;  //xor
    assign e = g|h;  // or

endmodule