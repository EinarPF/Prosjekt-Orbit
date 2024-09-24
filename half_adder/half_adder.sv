module half_adder (

    input  a,
    input  b,
    output c,
    output d
);

    assign c = a ^ b;  // bitwise xor
    assign d = a & b;  // bitwise and

endmodule