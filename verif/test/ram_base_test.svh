/*
=============================================================
    Owners      : German Pinedo
    Last update    : 03 Jul 2023 by German Pinedo
=============================================================            
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class ram_base_test extends uvm_test;
	`uvm_component_utils(ram_base_test)

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	
	function void end_of_elaboration_phase(uvm_phase phase);
      super.end_of_elaboration_phase(phase);
      uvm_top.print_topology();
      //`uvm_info(get_name(), "End of elaboration Phase", UVM_NONE)
    endfunction
endclass