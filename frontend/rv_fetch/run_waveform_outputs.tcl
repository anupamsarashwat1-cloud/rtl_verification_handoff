set sigs [list]
lappend sigs "tb_rv_fetch.imem_addr"
lappend sigs "tb_rv_fetch.imem_arvalid"
lappend sigs "tb_rv_fetch.pc_out"
lappend sigs "tb_rv_fetch.instr_out"
lappend sigs "tb_rv_fetch.valid_out"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
