`timescale 1ns / 1ps

module tb_hdmi_ctrl();

    reg  clk_pixel;
    reg  clk_tmds;
    reg  rst_n;
    reg  s_axis_tdata;
    reg  s_axis_tvalid;
    wire s_axis_tready;
    reg  s_axis_tuser;
    reg  s_axis_tlast;
    wire tmds_clk_p;
    wire tmds_clk_n;
    wire tmds_data_p;
    wire tmds_data_n;
    reg  pclk;
    reg  prst_n;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;

    // DUT Instantiation
    hdmi_ctrl uut (
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_tmds),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tlast(s_axis_tlast),
        .tmds_clk_p(tmds_clk_p),
        .tmds_clk_n(tmds_clk_n),
        .tmds_data_p(tmds_data_p),
        .tmds_data_n(tmds_data_n),
        .pclk(pclk),
        .prst_n(prst_n),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_hdmi_ctrl.vcd");
        $dumpvars(0, tb_hdmi_ctrl);

        // Initialize inputs
        clk_pixel = 0;
        clk_tmds = 0;
        rst_n = 0;
        s_axis_tdata = 0;
        s_axis_tvalid = 0;
        s_axis_tuser = 0;
        s_axis_tlast = 0;
        pclk = 0;
        prst_n = 0;
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
