/*
+------------------------------------------------------+
|Coded by: circuitfever.com                            |
|License: MIT License                                  |
|Description: PUF top module                           |
+------------------------------------------------------+
*/
module top(
    input clk,
    input en,
    input [7:0]challenge,
    output [7:0]response
    );

arbiter_puf_1bit a0(clk , en  , challenge , response[0]);
arbiter_puf_1bit a1(clk , en  , challenge , response[1]);
arbiter_puf_1bit a2(clk , en  , challenge , response[2]);
arbiter_puf_1bit a3(clk , en  , challenge , response[3]);
arbiter_puf_1bit a4(clk , en  , challenge , response[4]);
arbiter_puf_1bit a5(clk , en  , challenge , response[5]);
arbiter_puf_1bit a6(clk , en  , challenge , response[6]);
arbiter_puf_1bit a7(clk , en  , challenge , response[7]);

endmodule