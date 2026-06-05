set sigs [list]
lappend sigs "tb_rv_ptw.ptw_busy"
lappend sigs "tb_rv_ptw.fill_valid"
lappend sigs "tb_rv_ptw.fill_va"
lappend sigs "tb_rv_ptw.fill_pa"
lappend sigs "tb_rv_ptw.fill_asid"
lappend sigs "tb_rv_ptw.fill_perm"
lappend sigs "tb_rv_ptw.fill_level"
lappend sigs "tb_rv_ptw.page_fault"
lappend sigs "tb_rv_ptw.fault_addr"
lappend sigs "tb_rv_ptw.fault_type"
lappend sigs "tb_rv_ptw.ptw_arvalid"
lappend sigs "tb_rv_ptw.ptw_araddr"
lappend sigs "tb_rv_ptw.ptw_rready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
