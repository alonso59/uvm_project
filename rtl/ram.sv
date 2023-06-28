module(
    // Port 0, R/W
    input clk0,
    input cs0,
    input we0,
    input [3:0] wmask,
    input [9:0] addr0,
    input [31:0] din0,
    output [31:0] dout0,

    // Port 1, R-only
    input clk1,
    input cs1,
    input [9:0] addr1,
    output [31:0] dout1
);

endmodule