module rightShifter(input wire [7:0]a, input wire s2, s1, s0, output wire [7:0]o);
  reg [7:0] b;
  always @* begin
    b = {a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]};
  end
  mux8 mux8_0({b[0:0],7'b0000000}, s2, s1, s0, o[7]);
  mux8 mux8_1({b[1:0],6'b000000}, s2, s1, s0, o[6]);
  mux8 mux8_2({b[2:0],5'b00000}, s2, s1, s0, o[5]);
  mux8 mux8_3({b[3:0],4'b0000}, s2, s1, s0, o[4]);
  mux8 mux8_4({b[4:0],3'b000}, s2, s1, s0, o[3]);
  mux8 mux8_5({b[5:0],2'b00}, s2, s1, s0, o[2]);
  mux8 mux8_6({b[6:0],1'b0}, s2, s1, s0, o[1]);
  mux8 mux8_7(b[7:0], s2, s1, s0, o[0]);
endmodule