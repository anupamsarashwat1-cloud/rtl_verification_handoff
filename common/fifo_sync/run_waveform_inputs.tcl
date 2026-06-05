set sigs [list]
lappend sigs "tb_fifo_sync.clk"
lappend sigs "tb_fifo_sync.rst_n"
lappend sigs "tb_fifo_sync.wr_en"
lappend sigs "tb_fifo_sync.rd_en"
lappend sigs "tb_fifo_sync.wr_data"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
