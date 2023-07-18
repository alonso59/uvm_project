/*
=============================================================
    Owners      : Grecia Montoya 
    Last update    : 11 Jul 2023 by Grecia Montoya 
=============================================================            
*/

//WRITE SEQUENCE
class ram_port0_wr_seq extends ram_port0_sequence;
  
  `uvm_object_utils(ram_port0_wr_seq)
   
  //Constructor
  function new(string name = "ram_port0_wr_seq");
    super.new(name);
  endfunction
  
  virtual task body();
    ram_port0_sequence_item txn;
   
    txn=ram_port0_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.web0=0;
    txn.csb0=0;
    finish_item(txn);
  endtask:body


  /*


    ram_port0_sequence_item txn;

    task body();
    txn=ram_port0_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.we0=1;
    txn.cs=0;
    finish_item(txn);
  endtask:body
or

    `uvm_do_with(req,{req.we0 == 1;})
    `uvm_do_with(req,{req.cs0 == 0;})  
  
  */
  
endclass
