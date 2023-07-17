/*
=============================================================
    Owners      : German Pinedo/Manuel Hernandez
    Last update    : 17 Jul 2023 by Manuel
=============================================================            
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class ram_base_test extends uvm_test;
	`uvm_component_utils(ram_base_test)
    ram_env ram_env_i; // Env handler
	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	
    function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		ram_env_i = ram_env::type_id::create("ram_env_i",this);
	endfunction

	function void end_of_elaboration_phase(uvm_phase phase);
      super.end_of_elaboration_phase(phase);
      uvm_top.print_topology();
    endfunction
endclass