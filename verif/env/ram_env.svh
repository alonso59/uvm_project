/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 03 Jul 2023 by German
=============================================================            
*/

class ram_env extends uvm_env;
    `uvm_component_utils(ram_env)
    
  ram_port1_agent port1_agent;	// HANDLER for agent
    
    function new (input string name, uvm_component parent);
      super.new(name,parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      `uvm_info(get_name(), "Build Phase", UVM_NONE)
      port1_agent = ram_port1_agent::type_id::create("port1_agent",this); // // BUILD using factory object of agent
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
      `uvm_info(get_name(), "Report Phase", UVM_NONE)
    endfunction
    
  endclass