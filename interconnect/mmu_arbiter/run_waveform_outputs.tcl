set sigs [list]
lappend sigs "tb_mmu_arbiter.s_arready"
lappend sigs "tb_mmu_arbiter.s_rvalid"
lappend sigs "tb_mmu_arbiter.s_rdata"
lappend sigs "tb_mmu_arbiter.s_rresp"
lappend sigs "tb_mmu_arbiter.m_arvalid"
lappend sigs "tb_mmu_arbiter.m_araddr"
lappend sigs "tb_mmu_arbiter.m_rready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
