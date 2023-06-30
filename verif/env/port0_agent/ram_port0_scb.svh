/*
=============================================================
    Programer      : Emanuel Murillo García
    Date           : 27 Jun 2023
    Last update    : 30 Jun 2023
=============================================================            
*/

class ram_port0_scb extends uvm_scoreboard;
  `uvm_component_utils(ram_port0_scb)

  uvm_analysis_imp #(ram_port0_txn, ram_port0_scb) item_collected_export;

  function new(input string name, uvm_component parent);
    super.new(name,parent);
    item_collected_export = new("item_collected_export");
  endfunction : new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_MEDIUM);
  endfunction
  
  virtual function void write(ram_port0_txn txn);
    /*
    if(!disable_scoreboard)
      memory_verify(txb);
    */
  endfunction : write

endclass