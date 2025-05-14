module ref_sum (Ain, Bin, Ci, Sout, Co);
  input Ain, Bin, Ci;
  output Sout, Co;

  wire [7:0] Sout, Ain, Bin;
  reg [8:0] S;

  always @(Ain, Bin, Ci)
  S = Ain + Bin + Ci;

  assign Sout = S[7:0];
  assign Co = S[8];

endmodule
