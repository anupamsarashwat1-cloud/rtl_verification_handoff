set sigs [list]
lappend sigs "tb_reset_sync.clk"
lappend sigs "tb_reset_sync.async_rst_n"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
