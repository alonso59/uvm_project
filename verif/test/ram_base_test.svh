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
	
endclass