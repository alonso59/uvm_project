/*
=============================================================
    Owner      : Emanuel Murillo
    Last update    : 4 Jul 2023
=============================================================            
*/

class ram_port0_monitor extends uvm_monitor;
  `uvm_component_utils(ramp_port0_monitor)

  virtual ram_port0_intf port0_vif;  //virtual interface

  uvm_analysis_port #(ram_port0_sequence_item) ana_port;

  function new(input string name, uvm_component parent);
    super.new(name,parent);
    ana_port = new("ana_port", this); //Analisys port constructor.
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual ram_port0_intf)::get(this,"","ram_port0_intf", port0_vif))
      `uvm_fatal(get_name(),"Failed to get ram_port0_intf")
  endfunction

  virtual task run_phase(uvm_phase phase);
    `uvm_info(get_name(), "Run Phase", UVM_MEDIUM)

    forever begin
      ram_port0_sequence_item txn;
      @(posedge port0_vir.clk0);
      txn = ram_port0_sequence_item::type_id::create("txn");
	    txn.we0; = port0_vif.we0;
	    txn.cs0; = port0_vif.cs0;
	    txn.wmask0 = port0_vif.wmask0;
	    txn.addr0 = port0_vif.addr0;
	    txn.din0 = port0_vif.din0;
	    txn.dout0 = port0_vif.dout0; 

      ana_port.write(txn);    // write to analisys port
    end
  endtask 

  

endclass