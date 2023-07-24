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

    ram_port0_wr_seq seq0_wr;
    ram_port0_rd_seq seq0_rd;

    function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        #1us;
        repeat(10)
            begin
                #500ns;
                seq0_wr = ram_port0_wr_seq::type_id::create("seq0_wr");
                seq0_wr.start(ram_env_i.port0_agent.sqr);
                #500ns;
                seq0_rd = ram_port0_rd_seq::type_id::create("seq0_rd");
                seq0_rd.start(ram_env_i.port0_agent.sqr);
                #500ns;
            end
        #1us;
        phase.drop_objection(this);
    endtask 

endclass