set sigs [list]
lappend sigs "tb_cdc_sync.dst_clk"
lappend sigs "tb_cdc_sync.rst_n"
lappend sigs "tb_cdc_sync.data_in"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
