class ram_port0_driver extends uvm_driver ;

  // Virtual Interface
  virtual mem_if vif;

  `uvm_component_utils(ram_port0_driver)
    


  // Constructor
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_NONE)
  endfunction: build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_name(), "Connect Phase", UVM_NONE)
  endfunction

  // run phase
  virtual task run_phase(uvm_phase phase);
  `uvm_info(get_name(), "Run Phase", UVM_NONE)
//
  endtask : run_phase

  // drive 
  virtual task drive();
 
  endtask : drive

endclass : ram_port0_driver