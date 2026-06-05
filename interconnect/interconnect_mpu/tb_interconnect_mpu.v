`timescale 1ns / 1ps

module tb_interconnect_mpu();

    logic clk;
    logic rst_n;
    logic [39:0] cfg_base_addr [0:15];
    logic [39:0] cfg_limit_addr [0:15];
    logic [15:0] cfg_master_mask [0:15];
    logic [1:0] cfg_perm [0:15];
    logic cfg_valid [0:15];
    logic [14:0] s_arvalid;
    wire [14:0] s_arready;
    logic [599:0] s_araddr;
    logic [59:0] s_arid;
    wire [14:0] m_arvalid;
    logic [14:0] m_arready;
    wire [599:0] m_araddr;
    wire [59:0] m_arid;
    logic [14:0] m_rvalid;
    wire [14:0] m_rready;
    logic [959:0] m_rdata;
    logic [29:0] m_rresp;
    logic [14:0] m_rlast;
    logic [59:0] m_rid;
    wire [14:0] s_rvalid;
    logic [14:0] s_rready;
    wire [959:0] s_rdata;
    wire [29:0] s_rresp;
    wire [14:0] s_rlast;
    wire [59:0] s_rid;
    logic [14:0] s_awvalid;
    wire [14:0] s_awready;
    logic [599:0] s_awaddr;
    logic [59:0] s_awid;
    wire [14:0] m_awvalid;
    logic [14:0] m_awready;
    wire [599:0] m_awaddr;
    wire [59:0] m_awid;
    logic [14:0] m_bvalid;
    wire [14:0] m_bready;
    logic [29:0] m_bresp;
    logic [59:0] m_bid;
    wire [14:0] s_bvalid;
    logic [14:0] s_bready;
    wire [29:0] s_bresp;
    wire [59:0] s_bid;

    // DUT Instantiation
    interconnect_mpu uut (
        .clk(clk),
        .rst_n(rst_n),
        .cfg_base_addr(cfg_base_addr),
        .cfg_limit_addr(cfg_limit_addr),
        .cfg_master_mask(cfg_master_mask),
        .cfg_perm(cfg_perm),
        .cfg_valid(cfg_valid),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_arid(s_arid),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_arid(m_arid),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rresp(m_rresp),
        .m_rlast(m_rlast),
        .m_rid(m_rid),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .s_rlast(s_rlast),
        .s_rid(s_rid),
        .s_awvalid(s_awvalid),
        .s_awready(s_awready),
        .s_awaddr(s_awaddr),
        .s_awid(s_awid),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_awid(m_awid),
        .m_bvalid(m_bvalid),
        .m_bready(m_bready),
        .m_bresp(m_bresp),
        .m_bid(m_bid),
        .s_bvalid(s_bvalid),
        .s_bready(s_bready),
        .s_bresp(s_bresp),
        .s_bid(s_bid)
    );

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
    end

    always #3.6 clk = ~clk;

    // Main Functional Stimulus Block
    integer i;
    initial begin
        $dumpfile("tb_interconnect_mpu.vcd");
        $dumpvars(0, tb_interconnect_mpu);

        // 1. Initialize all data inputs
        for (i=0; i<16; i=i+1) begin cfg_base_addr[i]=0; cfg_limit_addr[i]=0; cfg_master_mask[i]=0; cfg_perm[i]=0; cfg_valid[i]=0; end
        s_arvalid = 0;
        s_araddr = 0;
        s_arid = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rresp = 0;
        m_rlast = 0;
        m_rid = 0;
        s_rready = 0;
        s_awvalid = 0;
        s_awaddr = 0;
        s_awid = 0;
        m_awready = 0;
        m_bvalid = 0;
        m_bresp = 0;
        m_bid = 0;
        s_bready = 0;

        // 2. Assert Resets
        #10;
        rst_n = 0; // Active low
        #100;
        // 3. De-assert Resets
        rst_n = 1;
        #20;

        // 4. Constrained Random Stimulus Injection
        // Generating aggressive random toggling to exercise internal logic
        repeat(500) begin
            #10;
            for (i=0; i<16; i=i+1) begin cfg_base_addr[i]=$random; cfg_limit_addr[i]=$random; cfg_master_mask[i]=$random; cfg_perm[i]=$random; cfg_valid[i]=$random; end
            s_arvalid = $random;
            s_araddr = $random;
            s_arid = $random;
            m_arready = $random;
            m_rvalid = $random;
            m_rdata = $random;
            m_rresp = $random;
            m_rlast = $random;
            m_rid = $random;
            s_rready = $random;
            s_awvalid = $random;
            s_awaddr = $random;
            s_awid = $random;
            m_awready = $random;
            m_bvalid = $random;
            m_bresp = $random;
            m_bid = $random;
            s_bready = $random;
        end

        #1000;
        $finish;
    end

endmodule
