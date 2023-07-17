/*
=============================================================
    Owner      : Emanuel Murillo
    Last update    : 30 Jun 2023
=============================================================            
*/

`include "definitions.sv"

interface ram_port0_intf(input logic clk0);
	logic csb0;
	logic web0;
	logic [`DATA_WIDTH/8-1:0] wmask0;
	logic [`ADDR_WIDTH-1:0] addr0;
	logic [`DATA_WIDTH-1:0] din0;
	logic [`DATA_WIDTH-1:0] dout0;
endinterface