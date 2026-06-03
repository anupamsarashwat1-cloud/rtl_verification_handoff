`timescale 1ns / 1ps

module tb_uart_16550();

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
    wire uart_irq;
    reg  rxd;
    wire txd;
    wire irda_tx;
    reg  irda_rx;
    wire lin_tx;
    reg  lin_rx;

    // DUT Instantiation
    uart_16550 uut (
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
        .uart_irq(uart_irq),
        .rxd(rxd),
        .txd(txd),
        .irda_tx(irda_tx),
        .irda_rx(irda_rx),
        .lin_tx(lin_tx),
        .lin_rx(lin_rx)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_uart_16550.vcd");
        $dumpvars(0, tb_uart_16550);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        rxd = 0;
        irda_rx = 0;
        lin_rx = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
