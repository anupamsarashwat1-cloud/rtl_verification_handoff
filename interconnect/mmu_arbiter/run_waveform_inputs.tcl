set sigs [list]
lappend sigs "tb_mmu_arbiter.clk"
lappend sigs "tb_mmu_arbiter.rst_n"
lappend sigs "tb_mmu_arbiter.s_arvalid"
lappend sigs "tb_mmu_arbiter.s_araddr"
lappend sigs "tb_mmu_arbiter.s_rready"
lappend sigs "tb_mmu_arbiter.m_arready"
lappend sigs "tb_mmu_arbiter.m_rvalid"
lappend sigs "tb_mmu_arbiter.m_rdata"
lappend sigs "tb_mmu_arbiter.m_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
