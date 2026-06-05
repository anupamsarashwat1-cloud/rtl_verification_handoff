set sigs [list]
lappend sigs "tb_rv_fetch.clk"
lappend sigs "tb_rv_fetch.rst_n"
lappend sigs "tb_rv_fetch.stall"
lappend sigs "tb_rv_fetch.flush"
lappend sigs "tb_rv_fetch.branch_taken"
lappend sigs "tb_rv_fetch.branch_target"
lappend sigs "tb_rv_fetch.imem_arready"
lappend sigs "tb_rv_fetch.imem_rdata"
lappend sigs "tb_rv_fetch.imem_rvalid"
lappend sigs "tb_rv_fetch.imem_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
