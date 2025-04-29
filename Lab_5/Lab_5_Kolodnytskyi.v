module mux4to1;

    reg A1, A0;
    reg D0, D1, D2, D3;

    wire Q;

    assign Q = (~A1 & ~A0 & D0) |
               (~A1 &  A0 & D1) |
               ( A1 & ~A0 & D2) |
               ( A1 &  A0 & D3);

endmodule