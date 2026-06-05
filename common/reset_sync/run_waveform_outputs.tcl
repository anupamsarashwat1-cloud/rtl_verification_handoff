set sigs [list]
lappend sigs "tb_reset_sync.sync_rst_n"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
