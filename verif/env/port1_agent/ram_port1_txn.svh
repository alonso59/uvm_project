class ram_port1_txn extends uvm_sequence_item;
  
    //data and control fields
    
    rand bit cs1;// The memory is selected when it is set at low level. 
    rand bit [`ADDR_WIDTH-1:0] addr1;
    rand bit [`DATA_WIDTH-1:0] dout1;

    
    //Utility and Field macros,
    `uvm_object_utils_begin(ram_port1_txn)
      `uvm_field_int(cs1,UVM_ALL_ON)
      `uvm_field_int(dout1,UVM_ALL_ON)
  
    `uvm_object_utils_end
    
    //Constructor
    function new(string name = "ram_port1_txn");
      super.new(name);
    endfunction
    
    
  endclass:ram_port1_txn