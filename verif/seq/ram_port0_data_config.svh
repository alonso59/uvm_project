// Define the data configuration object
class ram_port0_data_config extends uvm_object ;
   `uvm_object_utils(ram_port0_data_config)
   bit csb0;
   bit web0;
   bit [3:0] wmask0;
   bit [ADDR_WIDTH-1:0] addr0;
   logic [DATA_WIDTH-1:0] din0;
  bit [DATA_WIDTH-1:0] dout0;

  // Constructor
function new (string name = "ram_port0_data_config");

   super.new(name);

 endfunction: new

 
endclass : ram_port0_data_config
