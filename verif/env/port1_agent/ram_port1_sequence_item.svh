/*
=============================================================
    Owner      : German Pinedo
    Last update    : 03 Jul 2023
=============================================================            
*/

`include "definitions.sv"

class ram_port1_sequence_item extends uvm_sequence_item;
  
    // Data and control fields
    rand logic csb1;
    rand logic [`ADDR_WIDTH-1:0] addr1;
    rand logic [`DATA_WIDTH-1:0] dout1;

     // Constructor
    function new(string name = "ram_port1_sequence_item");
      super.new(name);
    endfunction
    
    // Utility and Field macros,
    `uvm_object_utils_begin(ram_port1_sequence_item)
    `uvm_field_int(csb1, UVM_HEX)
    `uvm_field_int(addr1, UVM_HEX)
    `uvm_field_int(dout1, UVM_HEX)
    `uvm_object_utils_end

  endclass:ram_port1_sequence_item