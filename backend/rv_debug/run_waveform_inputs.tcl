set sigs [list]
lappend sigs "tb_rv_debug.clk"
lappend sigs "tb_rv_debug.rst_n"
lappend sigs "tb_rv_debug.tck"
lappend sigs "tb_rv_debug.tms"
lappend sigs "tb_rv_debug.tdi"
lappend sigs "tb_rv_debug.hart_halted"
lappend sigs "tb_rv_debug.hart_running"
lappend sigs "tb_rv_debug.hart_unavail"
lappend sigs "tb_rv_debug.reg_rdata"
lappend sigs "tb_rv_debug.cmd_done"
lappend sigs "tb_rv_debug.cmd_err"
lappend sigs "tb_rv_debug.sb_arready"
lappend sigs "tb_rv_debug.sb_rvalid"
lappend sigs "tb_rv_debug.sb_rdata"
lappend sigs "tb_rv_debug.sb_rresp"
lappend sigs "tb_rv_debug.sb_awready"
lappend sigs "tb_rv_debug.sb_wready"
lappend sigs "tb_rv_debug.sb_bvalid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
