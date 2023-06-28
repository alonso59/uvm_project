`include "uvm_macros.svh"
`include "ram_base_test.svh"
// pkg for cadence
module tb();



    logic clk0, clk1;

    port0_intf port0_if(clk0);
    port1_intf port1_if(clk1);

    ram DUT(
        // Port 0, R/W
        port0_if.clk0,
        port0_if.cs0,
        port0_if.we0,
        port0_if.wmask,
        port0_if.addr0,
        port0_if.din0,
        port0_if.dout0,

        // Port 1, R-only
        port1_if.clk1,
        port1_if.cs1,
        port1_if.addr1,
        port1_if.dout1
    );

    
    initial begin
        uvm_config_db #(virtual port0_intf)::set(null, "*", "port0_vif", port0_if);
        uvm_config_db #(virtual port1_intf)::set(null, "*", "port1_vif", port1_if);
    end

    initial begin
        run_test();
    end

endmodule