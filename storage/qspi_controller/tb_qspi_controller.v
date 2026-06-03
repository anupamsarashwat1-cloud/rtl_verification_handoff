`timescale 1ns / 1ps

module tb_qspi_controller();

    reg  clk;
    reg  rst_n;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    wire qspi_sclk;
    wire qspi_cs_n;
    wire qspi_io;

    // DUT Instantiation
    qspi_controller uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .qspi_sclk(qspi_sclk),
        .qspi_cs_n(qspi_cs_n),
        .qspi_io(qspi_io)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_qspi_controller.vcd");
        $dumpvars(0, tb_qspi_controller);

        // Initialize inputs
        rst_n = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_rready = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
