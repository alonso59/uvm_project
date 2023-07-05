class ram_port0_sequencer extends uvm_sequencer;

  `uvm_component_utils(ram_port0_sequencer) 

  //constructor
  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction
  
endclass: ram_port0_sequencer