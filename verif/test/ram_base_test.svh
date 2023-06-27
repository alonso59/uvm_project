class ram_base_test extends uvm_test;
	`uvm_component_utils(ram_base_test)

	env_ env_; // HANDLER for evn

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		env_ = agent::type_id::create("env_",this); // BUILD using factory object of env class 
	endfunction

	function void end_of_elaboration_phase(uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		print();
	endfunction

endclass