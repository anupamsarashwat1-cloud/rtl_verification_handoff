set sigs [list]
lappend sigs "tb_rv_writeback.wb_data"
lappend sigs "tb_rv_writeback.wb_rd"
lappend sigs "tb_rv_writeback.wb_we"
lappend sigs "tb_rv_writeback.fwd_wb_data"
lappend sigs "tb_rv_writeback.fwd_wb_rd"
lappend sigs "tb_rv_writeback.fwd_wb_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
