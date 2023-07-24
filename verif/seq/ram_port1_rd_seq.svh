/*
=============================================================
    Owners      : Grecia Montoya / Emanuel Murillo
    Last update    : 21 Jul 2023 by Emanuel Murillo
=============================================================            
*/

//WRITE SEQUENCE
class ram_port1_rd_seq extends ram_port1_base_seq;
  
  `uvm_object_utils(ram_port1_rd_seq)

   
  //Constructor
  function new(string name = "ram_port1_rd_seq");
    super.new(name);
  endfunction
  

  virtual task body();
      req.randomize() with {csb1 == 1;}; 
      start_item(req);
      req.print(uvm_default_line_printer);
      finish_item(req);
  endtask:body
  
endclass