module shifter(input wire[7:0]a, input wire s2, s1, s0, left_direction, output wire[7:0]o);
    // if(left_direction == 1) 
    // leftShifter left_Shifter(a,s2,s1,s0,o);
    // else
    // rightShifter right_Shifter(a,s2,s1,s0,o);


    if (left_direction)
    begin
        leftShifter left_Shifter(a,s2,s1,s0,o);
    end
    else
    begin
        rightShifter right_Shifter(a,s2,s1,s0,o);
    end

endmodule