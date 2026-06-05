set sigs [list]
lappend sigs "tb_fifo_sync.rd_data"
lappend sigs "tb_fifo_sync.full"
lappend sigs "tb_fifo_sync.empty"
lappend sigs "tb_fifo_sync.count"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
