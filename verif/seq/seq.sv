
//Sequence generates the stimulus and sends to driver via sequencer

class ram_port0_sequence extends uvm_sequence;
  
  `uvm_sequence_utils(ram_port0_sequence,ram_port0_sequencer)
  
  //Constructor
  function new(string name = "ram_port0_sequence");
    super.new(name);
    
  endfunction


    virtual task body();

    req = ram_port0_sequence_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    send_request(req);
    wait_for_item_done();
    
    endtask 

  
endclass:ram_port0_sequence

