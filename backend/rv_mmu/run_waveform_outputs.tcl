set sigs [list]
lappend sigs "tb_rv_mmu.pa_out"
lappend sigs "tb_rv_mmu.trans_valid"
lappend sigs "tb_rv_mmu.trans_busy"
lappend sigs "tb_rv_mmu.page_fault"
lappend sigs "tb_rv_mmu.fault_va"
lappend sigs "tb_rv_mmu.ptw_arvalid"
lappend sigs "tb_rv_mmu.ptw_araddr"
lappend sigs "tb_rv_mmu.ptw_rready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
