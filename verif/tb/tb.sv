module tb();

    test test_; // HANDLER for test

    initial begin
        test_ = new("test_", null);
        run_test();
    end

endmodule