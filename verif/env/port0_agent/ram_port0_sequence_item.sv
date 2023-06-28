class ram_port0_sequence_item extends uvm_sequence_item;
  
  //data and control fields
  
  rand bit cs0;// The memory is selected when it is set at low level. 
  rand bit we0;
  rand bit [3:0] wmask0;
  rand bit [`ADDR_WIDTH-1:0] addr0;
  rand bit [`DATA_WIDTH-1:0] din1;
  rand bit [`DATA_WIDTH-1:0] dout0;
  


  
  //Utility and Field macros,
  `uvm_object_utils_begin(ram_port0_sequence_item)
    `uvm_field_int(cs0,UVM_ALL_ON)
    `uvm_field_int(we0,UVM_ALL_ON)
    `uvm_field_int(wmask0,UVM_ALL_ON)
    `uvm_field_int(din1,UVM_ALL_ON)
    `uvm_field_int(dout0,UVM_ALL_ON)

  `uvm_object_utils_end
  
  //Constructor
  function new(string name = "ram_port0_sequence_item");
    super.new(name);
  endfunction
  
  
endclass:ram_port0_sequence_item