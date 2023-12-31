
class ram_port0_driver extends uvm_driver #(ram_port0_sequence_item);

  // Virtual Interface
  virtual ram_port0_intf vif;

  `uvm_component_utils(ram_port0_driver)
    

  // Constructor
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), "Build Phase", UVM_NONE)
    if(!uvm_config_db #(virtual ram_port0_intf)::get(this,"","port0_vif", vif))
      `uvm_fatal(get_name(),"Failed to get port0_vif")
  endfunction: build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_name(), "Connect Phase", UVM_NONE)
  endfunction

  // run phase
  virtual task run_phase(uvm_phase phase);
  `uvm_info(get_name(), "Run Phase", UVM_NONE)
//
  drive();

  endtask : run_phase

  // drive 
  virtual task drive();
    ram_port0_sequence_item txn;
    txn = ram_port0_sequence_item::type_id::create("txn");
    
    
  forever begin
    seq_item_port.get_next_item(txn);
    @ (posedge vif.clk0)
    begin 
      vif.web0 <= txn.web0;
	    vif.csb0 <= txn.csb0;
	    vif.wmask0 <= txn.wmask0;
	    vif.addr0 <= txn.addr0;
	    vif.din0 <= txn.din0;
	    vif.dout0 <= txn.dout0; 
    
    end 
    seq_item_port.item_done();

  end
 

/*
  req.print();
      //vif.we0 <= 0;
      //vif.cs0 <= 0;
      @(posedge vif.clk0); ///cambiar
	      vif.addr0 <= req.addr0;
    if(req.we0) begin
        vif.we0 <= req.we0;
        vif.din0 <= req.din0;
        @(posedge vif.clk0);
      end
    if(~req.we0) begin
        vif.we0 <= req.we0;
        @(posedge vif.clk);//cambiar
        vif.we0 <= 0;
        @(posedge vif.clk);//
        req.rdata = vif.rdata;
      end
 */
  endtask : drive

endclass : ram_port0_driver
