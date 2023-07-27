// Define the data configuration object
class ram_port0_data_config;
  rand bit csb0;
  rand bit web0;
  rand bit [3:0] wmask0;
  rand bit [ADDR_WIDTH-1:0] addr0;
  rand logic [DATA_WIDTH-1:0] din0;
  bit [DATA_WIDTH-1:0] dout0;

  // Constructor
  function new();
    csb0 = 0;
    web0 = 0;
    wmask0 = 4'b0000;
    addr0 = 0;
    din0 = '0;
    dout0 = '0;
  endfunction

 
endclass : ram_port0_data_config
