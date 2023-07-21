/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 20 Jul 2023 by Emanuel
=============================================================            
*/

class ram_port0_sequence_wr_set_lim_addr extends ram_port0_wr_seq
    `uvm_object_utils(ram_port0_sequence_wr_set_lim_addr)

  //Constructor
  function new(string name = "ram_port0_sequence_wr_set_lim_addr");
    super.new(name);
  endfunction
  
  virtual task body();
    ram_port0_sequence_item txn;
   
    txn=ram_port0_sequence_item::type_id::create("txn");

    std::randomize(txn) with {web0 == 0; csb0 == 0;
                              txn.addr0 > env.env_cfg.agent0_cfg.add0_lim_inf;
                              txn.addr0 < env.env_cfg.agent0_cfg.add0_lim_sup;}; 
    start_item(txn);
    finish_item(txn);
  endtask:body

endclass