//Sequence generates the stimulus and sends to driver via sequencer

class ram_port0_sequence extends uvm_sequence #(ram_port0_sequence_item);
  
  `uvm_object_utils(ram_port0_sequence)//cambiar sin utilizar los utils macros
  
  //Constructor
  function new(string name = "ram_port0_sequence");
    super.new(name);
    
  endfunction


    virtual task void body();
      ram_port0_sequence_item txn;
      
      txn = ram_port0_sequence_item::type_id::create("txn");
      txn.randomize();
      
      start_item(txn);
      
      finish_item(txn);
    
    endtask 
      
 

  
endclass:ram_port0_sequence
