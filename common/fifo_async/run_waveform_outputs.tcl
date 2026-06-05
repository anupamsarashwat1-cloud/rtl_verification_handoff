set sigs [list]
lappend sigs "tb_fifo_async.full"
lappend sigs "tb_fifo_async.rd_data"
lappend sigs "tb_fifo_async.empty"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
