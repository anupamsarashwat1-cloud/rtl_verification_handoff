set sigs [list]
lappend sigs "tb_titan_x_top.clk"
lappend sigs "tb_titan_x_top.rst_n"
lappend sigs "tb_titan_x_top.pipe_clk"
lappend sigs "tb_titan_x_top.eth_tx_clk"
lappend sigs "tb_titan_x_top.eth_rx_clk"
lappend sigs "tb_titan_x_top.ulpi_clk"
lappend sigs "tb_titan_x_top.mipi_rxbyteclkhs"
lappend sigs "tb_titan_x_top.hdmi_clk_pixel"
lappend sigs "tb_titan_x_top.hdmi_clk_tmds"
lappend sigs "tb_titan_x_top.rtc_clk"
lappend sigs "tb_titan_x_top.uart_rx"
lappend sigs "tb_titan_x_top.can_rx"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
