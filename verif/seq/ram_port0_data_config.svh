// Define the data configuration object
class ram_port0_data_config extends uvm_object ;
   `uvm_object_utils(ram_port0_data_config)
   rand bit csb0;
   rand bit web0;
   rand bit [3:0] wmask0;
   rand bit [ADDR_WIDTH-1:0] addr0 ;
   rand logic [DATA_WIDTH-1:0] din0;
   //bit [DATA_WIDTH-1:0] dout0;
   bit enable_seq_data_config;


   `uvm_object_utils_begin(ram_port0_data_config)
   `uvm_field_int(csb0,UVM_ALL_ON)
   `uvm_field_int(web0,UVM_ALL_ON)
   `uvm_field_int(wmask0,UVM_ALL_ON)
   `uvm_field_int(din0,UVM_ALL_ON)
   // `uvm_field_int(dout0,UVM_ALL_ON)
   `uvm_field_int(enable_seq_data_config, UVM_ALL_ON)

  `uvm_object_utils_end

  // Constructor
function new (string name = "ram_port0_data_config");

   super.new(name);

 endfunction: new

 
endclass : ram_port0_data_config



/* 
///optional 
  rand logic [9:0] addr0_min;
  rand logic [9:0] addr0_max;

  constraint adrr0_min_max{addr0_min < addr0_max;}
  constraint adrr0_min_range{addr0_min >= 10;}
  constraint adrr0_max_range{addr0_max <= 20;}
*/
