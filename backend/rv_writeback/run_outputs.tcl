set sigs [list]
lappend sigs "tb_rv_writeback.uut.clk"
lappend sigs "tb_rv_writeback.uut.rst_n"
lappend sigs "tb_rv_writeback.uut.result"
lappend sigs "tb_rv_writeback.uut.rd_in"
lappend sigs "tb_rv_writeback.uut.reg_write"
lappend sigs "tb_rv_writeback.uut.valid_in"
lappend sigs "tb_rv_writeback.uut.wb_data"
lappend sigs "tb_rv_writeback.uut.wb_rd"
lappend sigs "tb_rv_writeback.uut.wb_we"
lappend sigs "tb_rv_writeback.uut.fwd_wb_data"
lappend sigs "tb_rv_writeback.uut.fwd_wb_rd"
lappend sigs "tb_rv_writeback.uut.fwd_wb_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
