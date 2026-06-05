set sigs [list]
lappend sigs "tb_mmu_arbiter.s_arready"
lappend sigs "tb_mmu_arbiter.s_rvalid"
lappend sigs "tb_mmu_arbiter.s_rdata"
lappend sigs "tb_mmu_arbiter.s_rresp"
lappend sigs "tb_mmu_arbiter.m_arvalid"
lappend sigs "tb_mmu_arbiter.m_araddr"
lappend sigs "tb_mmu_arbiter.m_rready"
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
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
