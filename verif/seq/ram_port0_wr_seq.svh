/*
=============================================================
    Owners      : Grecia Montoya 
    Last update    : 21 Jul 2023 by Grecia Montoya 
=============================================================            
*/

//WRITE SEQUENCE
class ram_port0_wr_seq extends ram_port0_base_seq;
  
  `uvm_object_utils(ram_port0_wr_seq)
   
  //Constructor
  function new(string name = "ram_port0_wr_seq");
    super.new(name);
  endfunction

  
  virtual task body();
    // rand int N;
    // std::randomize(N) with {N < 1; N > 100;};
    repeat(15) begin
      req=ram_port0_sequence_item::type_id::create("req");
      std::randomize(req) with {web0 == 0; csb0 == 0;}; 
      start_item(req);
      req.print(uvm_default_line_printer);
      finish_item(req);
    end
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
