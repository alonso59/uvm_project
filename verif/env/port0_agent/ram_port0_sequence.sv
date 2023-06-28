//Sequence generates the stimulus and sends to driver via sequencer

class ram_port0_sequence extends uvm_sequence;
  
  `uvm_sequence_utils(ram_port0_sequence,ram_port0_sequencer)
  
  //Constructor
  function new(string name = "ram_port0_sequence");
    super.new(name);
    
  endfunction
  
endclass:ram_port0_sequence