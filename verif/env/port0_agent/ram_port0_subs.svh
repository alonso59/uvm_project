/*
=============================================================
    Owner      : Emanuel Murillo
    Last update    : 4 Jul 2023
=============================================================            
*/

class ram_port0_subs extends uvm_subscriber #(ram_port0_sequence_item);
  `uvm_component_utils(ram_port0_subs)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

	function void write(ram_port0_sequence_item t);
		`uvm_info(get_name(),"conv_subscriber",UVM_MEDIUM)
	endfunction

endclass