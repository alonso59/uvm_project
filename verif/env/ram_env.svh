class ram_env extends uvm_env;
    `uvm_component_utils(ram_env)
    
    agent agent_;	// HANDLER for agent
    
    function new (input string name, uvm_component parent);
      super.new(name,parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      `uvm_info(get_name(), "Build Phase", UVM_NONE)
      agent_ = agent::type_id::create("agent_",this); // // BUILD using factory object of agent
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