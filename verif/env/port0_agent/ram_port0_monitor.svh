/*
=============================================================
    Programer      : Emanuel Murillo García
    Date           : 27 Jun 2023
    Last update    : 30 Jun 2023
=============================================================            
*/

class ram_port0_monitor extends uvm_monitor;
  `uvm_component_utils(ramp_port0_monitor)

  virtual port0_intf port0_vif;  //virtual interface
  //bit checks_enable = 1;       // Control checking in monitor and interface.
  //bit coverage_enable = 1;     // Control coverage in monitor and interface.


  uvm_analysis_port #(ram_port0_txn) Ana_port;

  function new(input string name, uvm_component parent);
    super.new(name,parent);
    Ana_port = new("Ana_port", this); //Analisys port constructor.
  endfunction

  virtual task run_phase(uvm_phase phase);
    `uvm_info(get_name(), "Run Phase", UVM_MEDIUM)

    forever begin

      ram_port0_txn txn;

      @(posedge port0_vir.clk0);
      txn = ram_port0_txn::type_id::create("txn");
	    txn.we0; = port0_vif.we0;
	    txn.cs0; = port0_vif.cs0;
	    txn.wmask0 = port0_vif.wmask0;
	    txn.addr0 = port0_vif.addr0;
	    txn.din0 = port0_vif.din0;
	    txn.dout0 = port0_vif.dout0; 

      Ana_port.write(txn);    // write to analisys port
    end
  endtask : run

  // virtual task run_phase(uvm_phase phase);
  //   `uvm_info(get_name(), "Run Phase", UVM_MEDIUM)
  //   collect_transactions();  //Collector task
  // endtask : run

  // virtual protected task collect_transactions();
  //   forever begin
  //     @(posedge port0_vir.clk0);
  //       // Collect the data from the DUT into trans_collected/
  //       item_collected_port.write(trans_collected);  // Write transacrion via Analisys port.
  //   end
  // endtask : collect_transactions


  

endclass