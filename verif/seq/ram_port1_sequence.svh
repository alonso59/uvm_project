/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 17 Jul 2023 by Emanuel
=============================================================            
*/

//Sequence generates the stimulus and sends to driver via sequencer

class ram_port1_sequence extends uvm_sequence #(ram_port1_sequence_item);
  
  `uvm_object_utils(ram_port1_sequence)//cambiar sin utilizar los utils macros
  
  //Constructor
  function new(string name = "ram_port1_sequence");
    super.new(name);
    
  endfunction


    virtual task void body();
      ram_port1_sequence_item txn;
      
      txn = ram_port1_sequence_item::type_id::create("txn");

      txn.randomize();
      
      start_item(txn);
      
      finish_item(txn);
    
    endtask 
      
 

  
endclass:ram_port1_sequence
