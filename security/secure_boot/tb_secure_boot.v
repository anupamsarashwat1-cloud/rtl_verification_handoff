`timescale 1ns / 1ps

module tb_secure_boot();

    reg  clk;
    reg  rst_n;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    wire envm_addr;
    wire envm_req;
    reg  envm_rdata;
    reg  envm_valid;
    wire boot_pass;
    wire boot_fail;

    // DUT Instantiation
    secure_boot uut (
        .clk(clk),
        .rst_n(rst_n),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .envm_addr(envm_addr),
        .envm_req(envm_req),
        .envm_rdata(envm_rdata),
        .envm_valid(envm_valid),
        .boot_pass(boot_pass),
        .boot_fail(boot_fail)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_secure_boot.vcd");
        $dumpvars(0, tb_secure_boot);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        envm_rdata = 0;
        envm_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
