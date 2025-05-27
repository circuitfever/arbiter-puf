/*
+------------------------------------------------------+
|Coded by: circuitfever.com                            |
|License: MIT License                                  |
|Description: AND gate implemented in FPGA's LUT.      |
+------------------------------------------------------+
*/
module and_gate(
    input a,
    input b,
    output  y
    );

LUT2 #(
    .INIT(4'h8)
) and_gate (
        .O(y),
        .I0(a),
        .I1(b)
        );

endmodule