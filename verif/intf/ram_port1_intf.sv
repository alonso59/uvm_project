interface port1_intf(input logic clk1);
	logic cs1;
	logic [`ADDR_WIDTH-1:0] addr1;
	logic [`DATA_WIDTH-1:0] dout1;
endinterface