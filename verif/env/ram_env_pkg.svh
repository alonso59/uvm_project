/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 05 Jul 2023 by Manuel
=============================================================            
*/

package ram_env_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"
    // Hierachy bottom-up
    `include "port0_agent/ram_port0_sequence_item.svh"
    `include "port0_agent/ram_port0_monitor.svh"
    `include "port0_agent/ram_port0_scb.svh"
    `include "port0_agent/ram_port0_subs.svh"
    `include "port0_agent/ram_port0_sequencer.svh"
    `include "port0_agent/ram_port0_driver.svh"
    `include "port0_agent/ram_port0_agent.svh"

    `include "port1_agent/ram_port1_sequence_item.svh"
    `include "port1_agent/ram_port1_monitor.svh"
    `include "port1_agent/ram_port1_scb.svh"
    `include "port1_agent/ram_port1_subs.svh"
    `include "port1_agent/ram_port1_sequencer.svh"
    `include "port1_agent/ram_port1_driver.svh"
    `include "port1_agent/ram_port1_agent.svh"
    
    `include "../seq/ram_port0_sequence.svh"

	`include "ram_env.svh"

endpackage