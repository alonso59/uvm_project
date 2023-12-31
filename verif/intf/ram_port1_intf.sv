/*
=============================================================
    Owners      : German Pinedo / Manuel Hernandez
    Last update    : 03 Jul 2023 by German Pinedo
=============================================================            
*/

`include "definitions.sv"

interface ram_port1_intf(input logic clk1);
	logic csb1;
	logic [`ADDR_WIDTH-1:0] addr1;
	logic [`DATA_WIDTH-1:0] dout1;
endinterface