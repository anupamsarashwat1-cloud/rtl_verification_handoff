set sigs [list]
lappend sigs "tb_rv_writeback.clk"
lappend sigs "tb_rv_writeback.rst_n"
lappend sigs "tb_rv_writeback.result"
lappend sigs "tb_rv_writeback.rd_in"
lappend sigs "tb_rv_writeback.reg_write"
lappend sigs "tb_rv_writeback.valid_in"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
