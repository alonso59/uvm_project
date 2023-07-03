/*
=============================================================
    Owners      : Everyone (Grecia, Manuel, Emmanuel, German)
    Last update    : 03 Jul 2023 by German
=============================================================            
*/

import uvm_pkg::*;
import ram_env_pkg::*;
`include "uvm_macros.svh"
`include "definitions.sv"
`include "ram_base_test.svh"
// pkg for cadence
module tb();

    bit clk0, clk1;

	initial begin
		fork
			begin
				forever begin
					#(`clk0_period/2);
					clk0 = ~clk0;
				end
			end

			begin
				forever begin
					#(`clk0_period/2);
					clk1 = ~clk1;
				end
			end

		join
	end

    ram_port0_intf port0_if(clk0);
    ram_port1_intf port1_if(clk1);

    ram_dual_port DUT(
        // Port 0, R/W
        .clk0(port0_if.clk0),
        .cs0(port0_if.cs0),
        .we0(port0_if.we0),
        .wmask0(port0_if.wmask0),
        .addr0(port0_if.addr0),
        .din0(port0_if.din0),
        .dout0(port0_if.dout0),

        // Port 1, R-only
        .clk1(port1_if.clk1),
        .cs1(port1_if.cs1),
        .addr1(port1_if.addr1),
        .dout1(port1_if.dout1)
    );
    
    initial begin
        uvm_config_db #(virtual ram_port0_intf)::set(null, "*", "port0_vif", port0_if);
        uvm_config_db #(virtual ram_port1_intf)::set(null, "*", "port1_vif", port1_if);
    end

    initial begin
        run_test();
    end

endmodule