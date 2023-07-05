/*
=============================================================
    Owners      : Grecia Montoya / Emanuel Murillo
    Last update    : 5 Jul 2023 by Emanuel Murillo
=============================================================            
*/

//WRITE SEQUENCE
class mem_wr_seq extends uvm_sequence;
  
  `uvm_object_utils(mem_wr_seq)
   
  //Constructor
  function new(string name = "mem_wr_seq");
    super.new(name);
  endfunction
  
  virtual task body();
    `uvm_do_with(req,{req.we0 == 0;})
    `uvm_do_with(req,{req.cs0 == 0;})
  endtask
  
endclass

/*
  task body();
    txn=ram_port0_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.we0=0;
    txn.cs=0;
    finish_item(txn);
  endtask:body


  */