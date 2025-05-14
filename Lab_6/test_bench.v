module test_sum;
  wire Ci, cm, cr;
  wire [7:0] Ain, Bin;
  reg [7:0] Ain_r, Bin_r;
  reg Ci_r;
  wire [7:0] res_my, res_ref;

  my_sum my_block (Ain, Bin, Ci, res_my, cm);
  ref_sum ref_block (Ain, Bin, Ci, res_ref, cr);

  initial begin
    $display("Time\tAin\t\tBin\t\tCi\tCi_r\tres_my\t\tcm\tres_ref\t\tcr");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
      $time, Ain, Bin, Ci, Ci_r, res_my, cm, res_ref, cr);
  end

  initial begin
    Ain_r = 8'b00110011; Bin_r = 8'b01010101; Ci_r = 0; #50;
    Ain_r = 8'b00000001; Bin_r = 8'b00000010; Ci_r = 0; #50;
    Ain_r = 8'b00000011; Bin_r = 8'b00000100; Ci_r = 0; #50;
    Ain_r = 8'b00000101; Bin_r = 8'b00000110; Ci_r = 1; #50;
    Ain_r = 8'b11100000; Bin_r = 8'b00001111; Ci_r = 1; #50;
    Ain_r = 8'b11000000; Bin_r = 8'b00001111; Ci_r = 0; #50;

    $finish;
  end

  assign Ain = Ain_r;
  assign Bin = Bin_r;
  assign Ci = Ci_r;

endmodule
