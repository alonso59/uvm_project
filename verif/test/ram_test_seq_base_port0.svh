/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 18 Jul 2023 by Emanuel
=============================================================            
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class ram_test_seq_base_port0 extends ram_base_test;
	`uvm_component_utils(ram_test_seq_base_port0)

    ram_port0_sequence seq0;

    function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

    virtual task run_phase(uvm_phase phase);
        seq0 = ram_port0_sequence::type_id::create("seq0");
        phase.raise_objection(this);
        #500ns
        seq0.start(ram_env_i.port0_agent.sqr);
        #500ns
        phase.drop_objection(this);
    endtask 

endclass