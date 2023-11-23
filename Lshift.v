module leftShifter(input wire[7:0]a,input wire s2, s1, s0, output wire[7:0]o);
    mux8 mux8_0(a[7:0], s2, s1, s0, o[7]);
    mux8 mux8_1({a[6:0], 1'b0}, s2, s1, s0, o[6]);
    mux8 mux8_2({a[5:0], 2'b00}, s2, s1, s0, o[5]);
    mux8 mux8_3({a[4:0], 3'b000}, s2, s1, s0, o[4]);
    mux8 mux8_4({a[3:0], 4'b0000}, s2, s1, s0, o[3]);
    mux8 mux8_5({a[2:0], 5'b00000}, s2, s1, s0, o[2]);
    mux8 mux8_6({a[1:0], 6'b000000}, s2, s1, s0, o[1]);
    mux8 mux8_7({a[0:0], 7'b0000000}, s2, s1, s0, o[0]);
endmodule