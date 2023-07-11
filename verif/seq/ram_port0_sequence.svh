//Sequence generates the stimulus and sends to driver via sequencer

class ram_port0_sequence extends uvm_sequence;
  
  `uvm_sequence_utils(ram_port0_sequence,ram_port0_sequencer)
  
  //Constructor
  function new(string name = "ram_port0_sequence");
    super.new(name);
    
  endfunction


    virtual task body();
      ram_port0_sequence_item txn;
      start_item(txn);
      txn = ram_port0_sequence_item::type_id::create("txn");
      txn.randomize();
      finish_item(txn);
    
    endtask 
      
 

  
endclass:ram_port0_sequence
