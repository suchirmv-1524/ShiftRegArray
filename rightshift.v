module rightShifter(input wire [7:0] a, input wire s2, s1, s0, output wire [7:0] o);
  mux8 mux8_0({7'b0000000, a[7:7]}, s2, s1, s0, o[7]);
  mux8 mux8_1({6'b000000, a[7:6]}, s2, s1, s0, o[6]);
  mux8 mux8_2({5'b00000, a[7:5]}, s2, s1, s0, o[5]);
  mux8 mux8_3({4'b0000, a[7:4]}, s2, s1, s0, o[4]);
  mux8 mux8_4({3'b000, a[7:3]}, s2, s1, s0, o[3]);
  mux8 mux8_5({2'b00, a[7:2]}, s2, s1, s0, o[2]);
  mux8 mux8_6({1'b0, a[7:1]}, s2, s1, s0, o[1]);
  mux8 mux8_7({a[7:0], 1'b0}, s2, s1, s0, o[0]);
endmodule
