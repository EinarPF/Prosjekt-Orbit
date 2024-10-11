/*module full_adder (

    input i_bit1,    //a
    input i_bit2,    //b 
    input i_carry,    //c
    output o_sum,   //d
    output o_carry    //e
    
);

    wire f;
    wire g;
    wire h;
    assign f = i_bit1^i_bit2;  // xor
    assign g = i_bit1&i_carry;  // and
    assign h = a&b;  // and

    assign d = f^c;  //xor
    assign e = g|h;  // or

endmodule*/

module full_adder 
  (
   i_bit1,
   i_bit2,
   i_carry,
   o_sum,
   o_carry
   );
 
  input  i_bit1;
  input  i_bit2;
  input  i_carry;
  output o_sum;
  output o_carry;
 
  wire   w_WIRE_1;
  wire   w_WIRE_2;
  wire   w_WIRE_3;
       
  assign w_WIRE_1 = i_bit1 ^ i_bit2;
  assign w_WIRE_2 = w_WIRE_1 & i_carry;
  assign w_WIRE_3 = i_bit1 & i_bit2;
 
  assign o_sum   = w_WIRE_1 ^ i_carry;
  assign o_carry = w_WIRE_2 | w_WIRE_3;
 
 
  // FYI: Code above using wires will produce the same results as:
  // assign o_sum   = i_bit1 ^ i_bit2 ^ i_carry;
  // assign o_carry = (i_bit1 ^ i_bit2) & i_carry) | (i_bit1 & i_bit2);
 
  // Wires are just used to be explicit. 
   
endmodule // full_adder