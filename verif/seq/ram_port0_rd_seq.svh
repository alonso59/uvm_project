/*
=============================================================
    Owners      : Grecia Montoya / Emanuel Murillo
    Last update    : 5 Jul 2023 by Emanuel Murillo
=============================================================            
*/

//WRITE SEQUENCE
class ram_port0_rd_seq extends ram_port0_sequence;
  
  `uvm_object_utils(ram_port0_rd_seq)
   
  //Constructor
  function new(string name = "ram_port0_rd_seq");
    super.new(name);
  endfunction
  
  task body();
    txn=ram_port0_sequence_item::type_id::create("txn");
    std::randomize(txn) with {web0 == 1; csb0 == 0;}; /////
    start_item(txn);
    finish_item(txn);
  endtask:body
  
endclass

  // virtual task body();
  //   `uvm_do_with(req,{req.we0 == 0;})
  //   `uvm_do_with(req,{req.cs0 == 0;})
  // endtask


