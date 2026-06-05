set sigs [list]
lappend sigs "tb_rv_tlb.pa_out"
lappend sigs "tb_rv_tlb.hit"
lappend sigs "tb_rv_tlb.perm_r"
lappend sigs "tb_rv_tlb.perm_w"
lappend sigs "tb_rv_tlb.perm_x"
lappend sigs "tb_rv_tlb.perm_u"
lappend sigs "tb_rv_tlb.page_fault"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
