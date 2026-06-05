set sigs [list]
lappend sigs "tb_rv_writeback.wb_data"
lappend sigs "tb_rv_writeback.wb_rd"
lappend sigs "tb_rv_writeback.wb_we"
lappend sigs "tb_rv_writeback.fwd_wb_data"
lappend sigs "tb_rv_writeback.fwd_wb_rd"
lappend sigs "tb_rv_writeback.fwd_wb_valid"
lappend sigs "tb_rv_writeback.clk"
lappend sigs "tb_rv_writeback.rst_n"
lappend sigs "tb_rv_writeback.result"
lappend sigs "tb_rv_writeback.rd_in"
lappend sigs "tb_rv_writeback.reg_write"
lappend sigs "tb_rv_writeback.valid_in"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::setWindowStartTime 0
