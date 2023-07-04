/*
=============================================================
    Owner      : Emanuel Murillo
    Last update    : 4 Jul 2023
=============================================================            
*/

class ram_port0_scb extends uvm_scoreboard;
  `uvm_component_utils(ram_port0_scb)

	uvm_analysis_export #(ram_port0_sequence_item) ana_export;
	uvm_tlm_analysis_fifo#(ram_port0_sequence_item) ana_fifo;

  function new(input string name, uvm_component parent);
		ana_export = new("ana_export",this);
		ana_fifo = new("ana_fifo",this);
  endfunction : new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ana_export.connect(ana_fifo.analysis_export);
    `uvm_info(get_name(), "Build Phase", UVM_MEDIUM);
  endfunction
  
  virtual function void write(ram_port0_sequence_item txn);
    /*
    if(!disable_scoreboard)
      memory_verify(txb);
    */
  endfunction

endclass