/*
=============================================================
    Owner      : Emanuel Murillo
    Last update    : 17 Jul 2023
=============================================================            
*/

class ram_port0_monitor extends uvm_monitor;
  `uvm_component_utils(ram_port0_monitor)

  virtual ram_port0_intf port0_vif;  //virtual interface

  uvm_analysis_port #(ram_port0_sequence_item) ana_port;

  function new(input string name, uvm_component parent);
    super.new(name,parent);
    ana_port = new("ana_port", this); //Analisys port constructor.
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual ram_port0_intf)::get(this,"","port0_vif", port0_vif))
      `uvm_fatal(get_name(),"Failed to get port0_vif")
  endfunction

  virtual task run_phase(uvm_phase phase);
    ram_port0_sequence_item txn;
    `uvm_info(get_name(), "Run Phase", UVM_MEDIUM)
    txn = ram_port0_sequence_item::type_id::create("txn");

    forever begin
      @(posedge port0_vif.clk0)
      begin
        txn.web0 <= port0_vif.web0;
        txn.csb0 <= port0_vif.csb0;
        txn.wmask0 <= port0_vif.wmask0;
        txn.addr0 <= port0_vif.addr0;
        txn.din0 <= port0_vif.din0;
        txn.dout0 <= port0_vif.dout0; 
      end
      ana_port.write(txn);    // write to analisys port
    end
  endtask 

  

endclass