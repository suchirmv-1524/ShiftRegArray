module mux2 (input wire i0, i1, j, output wire o);
    assign o = (j==0)?i0:i1;
endmodule

module mux4 (input wire [0:3] i, input wire j1, j0, output wire o);
    wire  t0, t1;
    mux2 mux2_0 (i[0], i[1], j1, t0);
    mux2 mux2_1 (i[2], i[3], j1, t1);
    mux2 mux2_2 (t0, t1, j0, o);
endmodule

module mux8 (input wire [0:7] i, input wire j2, j1, j0, output wire o);
    wire  t0, t1;
    mux4 mux4_0 (i[0:3], j2, j1, t0);
    mux4 mux4_1 (i[4:7], j2, j1, t1);
    mux2 mux2_0 (t0, t1, j0, o);
endmodule