/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 21 Jul 2023 by Emanuel
=============================================================            
*/

//Sequence generates the stimulus and sends to driver via sequencer

class ram_port1_base_seq extends uvm_sequence #(ram_port1_sequence_item);
  
  `uvm_object_utils(ram_port1_base_seq)//cambiar sin utilizar los utils macros
  
  //Constructor
  function new(string name = "ram_port1_base_seq");
    super.new(name);
    
  endfunction



  virtual task body();
    // rand int N;
    // std::randomize(N) with {N < 1; N > 100;};
    repeat(15) begin
      req = ram_port1_sequence_item::type_id::create("req");
      req.randomize();
      start_item(req);
      finish_item(req);
    end
  
  endtask 
      
 

  
endclass:ram_port1_base_seq
