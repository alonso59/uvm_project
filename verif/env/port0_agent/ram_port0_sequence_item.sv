class ram_port0_sequencer extends uvm_sequence_item;
  
  //data and control fields
  
  rand bit cs0;// The memory is selected when it is set at low level. 
  rand bit wr_en;
  rand bit [3:0] wmask;
  rand bit [`ADDR_WIDTH-1:0] addr0;
  rand bit [`DATA_WIDTH-1:0] din0;
  rand bit [`DATA_WIDTH-1:0] dout0;
  


  
  //Utility and Field macros,
  `uvm_object_utils_begin(ram_port0_sequencer)
    `uvm_field_int(addr,UVM_ALL_ON)
    `uvm_field_int(wr_en,UVM_ALL_ON)
    `uvm_field_int(rd_en,UVM_ALL_ON)
    `uvm_field_int(wdata,UVM_ALL_ON)
  `uvm_object_utils_end
  
  //Constructor
  function new(string name = "ram_port0_sequencer");
    super.new(name);
  endfunction
  
  
endclass:ram_port0_sequencer