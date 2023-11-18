module shifter_tb;

  reg [7:0] in;
  reg [2:0] ctrl;
  wire [7:0] out;
  reg left_dir; // Set to 1 for left shift, 0 for right shift

  shifter shifter_0(
    .a(in),
    .s0(ctrl[2]),
    .s1(ctrl[1]),
    .s2(ctrl[0]),
    .left_direction(left_dir),
    .o(out)
  );

  initial begin
    $dumpfile("dump_t0.vcd");
    $dumpvars(0, shifter_tb);

    $display($time, " << Starting the Simulation >>");
    in = 8'd0;
    ctrl = 3'd0; // no shift
    left_dir = 1; // Set to 1 for left shift
    #10 in = 8'd4;
    ctrl = 3'd4; // shift 4 bits
    #10 in = 8'd6;
    ctrl = 3'd2; // shift 2 bits
    #10 in = 8'd9;
    ctrl = 3'd1; // shift by 1 bit
    #10 in = 8'd253;
    ctrl = 3'd7; // shift by 7 bits
    #10 in = 8'd0;
    ctrl = 3'd0; // shift by 0 bits
    left_dir = 0; // Set to 0 for right shift
    #10 in = 8'd15;
    ctrl = 3'd4; // shift 4 bits
  end

  initial begin
    $monitor("Input=%b, Control=%d, Output=%b (Direction: %s)",
      in, ctrl, out, (left_dir == 1) ? "LEFT" : "RIGHT");
  end
endmodule
