`timescale 1ns / 1ps

module tb_rv_monitor_core();

    reg  clk;
    reg  rst_n;
    reg  irq_m_ext;
    reg  irq_m_timer;
    reg  irq_m_soft;
    wire imem_araddr;
    wire imem_arvalid;
    reg  imem_arready;
    reg  imem_rdata;
    reg  imem_rvalid;
    reg  imem_rresp;
    wire dmem_awvalid;
    reg  dmem_awready;
    wire dmem_awaddr;
    wire dmem_awlen;
    wire dmem_awsize;
    wire dmem_awburst;
    wire dmem_wvalid;
    reg  dmem_wready;
    wire dmem_wdata;
    wire dmem_wstrb;
    wire dmem_wlast;
    reg  dmem_bvalid;
    wire dmem_bready;
    reg  dmem_bresp;
    wire dmem_arvalid;
    reg  dmem_arready;
    wire dmem_araddr;
    wire dmem_arlen;
    wire dmem_arsize;
    wire dmem_arburst;
    reg  dmem_rvalid;
    wire dmem_rready;
    reg  dmem_rdata;
    reg  dmem_rlast;
    reg  dmem_rresp;
    reg  halt_req;
    reg  resume_req;
    wire hart_halted;
    wire hart_running;

    // DUT Instantiation
    rv_monitor_core uut (
        .clk(clk),
        .rst_n(rst_n),
        .irq_m_ext(irq_m_ext),
        .irq_m_timer(irq_m_timer),
        .irq_m_soft(irq_m_soft),
        .imem_araddr(imem_araddr),
        .imem_arvalid(imem_arvalid),
        .imem_arready(imem_arready),
        .imem_rdata(imem_rdata),
        .imem_rvalid(imem_rvalid),
        .imem_rresp(imem_rresp),
        .dmem_awvalid(dmem_awvalid),
        .dmem_awready(dmem_awready),
        .dmem_awaddr(dmem_awaddr),
        .dmem_awlen(dmem_awlen),
        .dmem_awsize(dmem_awsize),
        .dmem_awburst(dmem_awburst),
        .dmem_wvalid(dmem_wvalid),
        .dmem_wready(dmem_wready),
        .dmem_wdata(dmem_wdata),
        .dmem_wstrb(dmem_wstrb),
        .dmem_wlast(dmem_wlast),
        .dmem_bvalid(dmem_bvalid),
        .dmem_bready(dmem_bready),
        .dmem_bresp(dmem_bresp),
        .dmem_arvalid(dmem_arvalid),
        .dmem_arready(dmem_arready),
        .dmem_araddr(dmem_araddr),
        .dmem_arlen(dmem_arlen),
        .dmem_arsize(dmem_arsize),
        .dmem_arburst(dmem_arburst),
        .dmem_rvalid(dmem_rvalid),
        .dmem_rready(dmem_rready),
        .dmem_rdata(dmem_rdata),
        .dmem_rlast(dmem_rlast),
        .dmem_rresp(dmem_rresp),
        .halt_req(halt_req),
        .resume_req(resume_req),
        .hart_halted(hart_halted),
        .hart_running(hart_running)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_monitor_core.vcd");
        $dumpvars(0, tb_rv_monitor_core);

        // Initialize inputs
        rst_n = 0;
        irq_m_ext = 0;
        irq_m_timer = 0;
        irq_m_soft = 0;
        imem_arready = 0;
        imem_rdata = 0;
        imem_rvalid = 0;
        imem_rresp = 0;
        dmem_awready = 0;
        dmem_wready = 0;
        dmem_bvalid = 0;
        dmem_bresp = 0;
        dmem_arready = 0;
        dmem_rvalid = 0;
        dmem_rdata = 0;
        dmem_rlast = 0;
        dmem_rresp = 0;
        halt_req = 0;
        resume_req = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
