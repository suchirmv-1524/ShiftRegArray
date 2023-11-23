module Shifter(input wire[7:0]a,input wire s2, s1, s0, output wire[7:0]oR, output wire[7:0]oL);
    rightShifter rightShifter_1(a,s2, s1, s0,oR);
    leftShifter leftShifter_1(a,s2,s1,s0,oL);
endmodule