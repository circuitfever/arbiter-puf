/*
+----------------------------------------------------------------+
|Coded by: circuitfever.com                                      |
|License: MIT License                                            |
|Description: Simple PUF with 8-bit challenge and 1-bit response |
+----------------------------------------------------------------+
*/
module arbiter_puf_1bit(
    input clk,
    input en,
    // input [3:0]test,
    input [7:0]challenge,
    output reg response
    );

reg pulse;

always @(posedge clk)begin
if(en)
    pulse <= 1;
else
    pulse <= 0;
end

wire A0,A1,A2,A3,A4,A5,A6,A7;
wire B0,B1,B2,B3,B4,B5,B6,B7;

and_gate a0(pulse , en , K0);
and_gate a1(pulse , en , K1);
and_gate a2(pulse , en , K2);
and_gate a3(pulse , en , K3);

mux_2x1 m0(K0,K1,challenge[0],A0);       //I0 , I1, S0 , mux_out
mux_2x1 m1(B0,A0,challenge[1],A1);
mux_2x1 m2(B1,A1,challenge[2],A2);
mux_2x1 m3(B2,A2,challenge[3],A3);
mux_2x1 m4(B3,A3,challenge[4],A4);
mux_2x1 m5(B4,A4,challenge[5],A5);
mux_2x1 m6(B5,A5,challenge[6],A6);
mux_2x1 m7(B6,A6,challenge[7],A7);

mux_2x1 n0(K2,K3,challenge[0],B0);
mux_2x1 n1(A0,B0,challenge[1],B1);
mux_2x1 n2(A1,B1,challenge[2],B2);
mux_2x1 n3(A2,B2,challenge[3],B3);
mux_2x1 n4(A3,B3,challenge[4],B4);
mux_2x1 n5(A4,B4,challenge[5],B5);
mux_2x1 n6(A5,B5,challenge[6],B6);
mux_2x1 n7(A6,B6,challenge[7],B7);

always @ (posedge B7)begin
response <= A7;
end

endmodule
