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
  
  rand int N;

  task body();
    std::randomize(N) with {N < 1; N > 100;};
    repeat(N) begin
        req = ram_port1_sequence_item::type_id::create("req");
        std::randomize(req) with {csb1 == 1;}; 
        start_item(req);
        finish_item(req);
    end
  endtask:body
  
endclass