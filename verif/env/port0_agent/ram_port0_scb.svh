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
    super.new(name, parent);
		ana_export = new("ana_export",this);
		ana_fifo = new("ana_fifo",this);
  endfunction : new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_HIGH);
  endfunction

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ana_export.connect(ana_fifo.analysis_export);
    `uvm_info(get_name(), "Connect Phase", UVM_HIGH);
  endfunction

  
  // virtual function void write(ram_port0_sequence_item t);
  //   /*
  //   if(!disable_scoreboard)
  //     memory_verify(txb);
  //   */
  // endfunction

    virtual task run_phase(uvm_phase phase);
    //forever begin
    //  ana_fifo.get(txn);
    //end
  endtask

endclass