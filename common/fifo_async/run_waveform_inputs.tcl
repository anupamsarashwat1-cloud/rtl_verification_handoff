set sigs [list]
lappend sigs "tb_fifo_async.wr_clk"
lappend sigs "tb_fifo_async.wr_rst_n"
lappend sigs "tb_fifo_async.wr_en"
lappend sigs "tb_fifo_async.wr_data"
lappend sigs "tb_fifo_async.rd_clk"
lappend sigs "tb_fifo_async.rd_rst_n"
lappend sigs "tb_fifo_async.rd_en"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
