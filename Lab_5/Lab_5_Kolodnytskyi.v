module mux4to1 (
input [7:0] D0,
input [7:0] D1,
input [7:0] D2,
input [7:0] D3,
input A1,
input A0,
output [7:0] Q
);

assign Q = ({8{~A1 & ~A0}} & D0) |
       ({8{~A1 &  A0}} & D1) |
       ({8{ A1 & ~A0}} & D2) |
       ({8{ A1 &  A0}} & D3);

endmodule
