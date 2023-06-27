class ram_port0_sqr extends uvm_sequence_item;

	rand bit cs0;
	rand bit we0;
	logic [4-1:0] wmask0;
	rand logic [`ADDR_WIDTH-1:0] addr0;
	rand logic [`DATA_WIDTH-1:0] din1;

	function new(string name="ram_port0_sqr");
		super.new(name);
	endfunction

	`uvm_object_utils_begin(ram_port0_sqr)
	`uvm_field_int(cs0,UVM_DEFAULT)
    `uvm_field_int(we0,UVM_DEFAULT)
    `uvm_field_int(wmask0,UVM_DEFAULT)
	`uvm_field_int(addr1,UVM_DEFAULT) 
	`uvm_field_int(dout1,UVM_DEFAULT)
	`uvm_object_utils_end

endclass