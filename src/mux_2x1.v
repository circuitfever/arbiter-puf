/*
+------------------------------------------------------+
|Coded by: circuitfever.com                            |
|License: MIT License                                  |
|Description: MUX implemented in FPGA's LUT.           |
+------------------------------------------------------+
*/
module mux_2x1(
    input I0,
    input I1,
    input S0,
    output mux_out
    );

LUT3 #(
    .INIT(8'hAC)
) mux(
    .O(mux_out),
    .I0(I1),
    .I1(I0),
    .I2(S0)
    );

endmodule