set sigs [list]
lappend sigs "tb_rv_debug.tdo"
lappend sigs "tb_rv_debug.halt_req"
lappend sigs "tb_rv_debug.resume_req"
lappend sigs "tb_rv_debug.reg_sel"
lappend sigs "tb_rv_debug.reg_wr"
lappend sigs "tb_rv_debug.reg_wdata"
lappend sigs "tb_rv_debug.cmd_exec"
lappend sigs "tb_rv_debug.sb_arvalid"
lappend sigs "tb_rv_debug.sb_araddr"
lappend sigs "tb_rv_debug.sb_rready"
lappend sigs "tb_rv_debug.sb_awvalid"
lappend sigs "tb_rv_debug.sb_awaddr"
lappend sigs "tb_rv_debug.sb_wvalid"
lappend sigs "tb_rv_debug.sb_wdata"
lappend sigs "tb_rv_debug.sb_wstrb"
lappend sigs "tb_rv_debug.sb_wlast"
lappend sigs "tb_rv_debug.sb_bready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
