interface port1_intf(input logic clk0);
	logic cs0;
	logic we0;
	logic [4-1:0] wmask0;
	logic [`ADDR_WIDTH-1:0] addr0;
	logic [`DATA_WIDTH-1:0] din1;
	logic [`DATA_WIDTH-1:0] dout0;
endinterface