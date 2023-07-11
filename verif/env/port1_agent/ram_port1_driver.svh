/*
=============================================================
    Owner      : German Pinedo
    Last update    : 03 Jul 2023
=============================================================            
*/

class ram_port1_driver extends uvm_driver #(ram_port1_sequence_item);
    `uvm_component_utils(ram_port1_driver)	// register component to factory
    
    virtual ram_port1_intf port1_vif;

    function new(string name, uvm_component parent);
      super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      if(!uvm_config_db #(virtual ram_port1_intf)::get(this,"","port1_vif", port1_vif))
        `uvm_fatal(get_name(),"Failed to get ram_port1_intf")
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