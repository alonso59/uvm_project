/*
=============================================================
    Owners      : Grecia Montoya / Emanuel Murillo
    Last update    : 21 Jul 2023 by Emanuel Murillo
=============================================================            
*/

//WRITE SEQUENCE
class ram_port0_rd_seq extends ram_port0_base_seq;
  
  `uvm_object_utils(ram_port0_rd_seq)
   
  //Constructor
  function new(string name = "ram_port0_rd_seq");
    super.new(name);
  endfunction

  
  task body();
    // rand int N;
    // std::randomize(N) with {N < 1; N > 100;};
    repeat(15) begin
      req=ram_port0_sequence_item::type_id::create("req");
      std::randomize(req) with {web0 == 1; csb0 == 0;}; 
      start_item(req);
      req.print(uvm_default_line_printer);
      finish_item(req);
    end
  endtask:body
  
endclass


