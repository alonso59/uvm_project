class ram_port0_scr extends uvm_scoreboard;
  `uvm_component_utils(ram_port0_scr)

  function new(input string name, uvm_component parent);
    super.new(name,parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_NONE);
  endfunction
  
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_name(), "Connect Phase", UVM_NONE);
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    `uvm_info(get_name(), "Run Phase", UVM_NONE);
  endtask
  
  virtual function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info(get_name(), "Report Phase", UVM_NONE);
  endfunction


endclass