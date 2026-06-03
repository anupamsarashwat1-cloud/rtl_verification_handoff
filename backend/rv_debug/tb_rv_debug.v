`timescale 1ns / 1ps

module tb_rv_debug();

    reg  clk;
    reg  rst_n;
    reg  tck;
    reg  tms;
    reg  tdi;
    wire tdo;
    wire halt_req;
    wire resume_req;
    reg  hart_halted;
    reg  hart_running;
    reg  hart_unavail;
    wire reg_sel;
    wire reg_wr;
    wire reg_wdata;
    reg  reg_rdata;
    wire cmd_exec;
    reg  cmd_done;
    reg  cmd_err;
    wire sb_arvalid;
    reg  sb_arready;
    wire sb_araddr;
    reg  sb_rvalid;
    wire sb_rready;
    reg  sb_rdata;
    reg  sb_rresp;
    wire sb_awvalid;
    reg  sb_awready;
    wire sb_awaddr;
    wire sb_wvalid;
    reg  sb_wready;
    wire sb_wdata;
    wire sb_wstrb;
    wire sb_wlast;
    reg  sb_bvalid;
    wire sb_bready;

    // DUT Instantiation
    rv_debug uut (
        .clk(clk),
        .rst_n(rst_n),
        .tck(tck),
        .tms(tms),
        .tdi(tdi),
        .tdo(tdo),
        .halt_req(halt_req),
        .resume_req(resume_req),
        .hart_halted(hart_halted),
        .hart_running(hart_running),
        .hart_unavail(hart_unavail),
        .reg_sel(reg_sel),
        .reg_wr(reg_wr),
        .reg_wdata(reg_wdata),
        .reg_rdata(reg_rdata),
        .cmd_exec(cmd_exec),
        .cmd_done(cmd_done),
        .cmd_err(cmd_err),
        .sb_arvalid(sb_arvalid),
        .sb_arready(sb_arready),
        .sb_araddr(sb_araddr),
        .sb_rvalid(sb_rvalid),
        .sb_rready(sb_rready),
        .sb_rdata(sb_rdata),
        .sb_rresp(sb_rresp),
        .sb_awvalid(sb_awvalid),
        .sb_awready(sb_awready),
        .sb_awaddr(sb_awaddr),
        .sb_wvalid(sb_wvalid),
        .sb_wready(sb_wready),
        .sb_wdata(sb_wdata),
        .sb_wstrb(sb_wstrb),
        .sb_wlast(sb_wlast),
        .sb_bvalid(sb_bvalid),
        .sb_bready(sb_bready)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_debug.vcd");
        $dumpvars(0, tb_rv_debug);

        // Initialize inputs
        rst_n = 0;
        tck = 0;
        tms = 0;
        tdi = 0;
        hart_halted = 0;
        hart_running = 0;
        hart_unavail = 0;
        reg_rdata = 0;
        cmd_done = 0;
        cmd_err = 0;
        sb_arready = 0;
        sb_rvalid = 0;
        sb_rdata = 0;
        sb_rresp = 0;
        sb_awready = 0;
        sb_wready = 0;
        sb_bvalid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
