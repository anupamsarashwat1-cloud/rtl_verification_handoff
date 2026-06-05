set sigs [list]
lappend sigs "tb_cdc_sync.data_out"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
