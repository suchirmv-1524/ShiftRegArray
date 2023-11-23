module barrel_shifter_8bit_tb;
  reg [7:0] in;
  reg [2:0] ctrl;
  wire [7:0] outL;
  wire [7:0] outR; 
  

Shifter uut(
  .a(in),
  .s0(ctrl[2]),
  .s1(ctrl[1]),
  .s2(ctrl[0]),
  .oL(outL),
  .oR(outR)
);
initial begin $dumpfile("dump_t0.vcd");
$dumpvars(0,barrel_shifter_8bit_tb);
end

initial 
 begin
    $display($time, " << Starting the Simulation >>");
        in= 8'd0;  ctrl=3'd0; //no shift
    #10 in=8'd251; ctrl= 3'd4; //shift 4 bit
    #10 in=8'd241; ctrl= 3'd2; //shift 2 bit
    #10 in=8'd231; ctrl= 3'd1; //shift by 1 bit
    #10 in=8'd191; ctrl= 3'd3; //shift by 7 bit
    #10 in=8'd45; ctrl= 3'd1; //shift by 7 bit
    #10 in=8'd19; ctrl= 3'd5; //shift by 7 bit
    #10 in=8'd91; ctrl= 3'd7; //shift by 7 bit
    #10 in=8'd68; ctrl= 3'd4; //shift by 7 bit
  end
    initial begin
      $monitor("Input=%b, Control=%d, OutputL=%b, OutputR=%b",in,ctrl,outL,outR);
    end
endmodule