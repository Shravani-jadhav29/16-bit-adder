`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2026 11:20:26 AM
// Design Name: 
// Module Name: 16_bit_vio
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module vio_top(
    input clk
);

wire [15:0] a;
wire [15:0] b;
reg  [16:0] sum;

always @(posedge clk)
begin
    sum <= a + b;
end

ila_1 u_ila (
    .clk(clk),
    .probe0(a),
    .probe1(b),
    .probe2(sum)
);

vio_0 u_vio (
    .clk(clk),
    .probe_in0(sum),
    .probe_out0(a),
    .probe_out1(b)
);
endmodule
