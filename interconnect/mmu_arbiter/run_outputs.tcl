set sigs [list]
lappend sigs "tb_mmu_arbiter.uut.clk"
lappend sigs "tb_mmu_arbiter.uut.rst_n"
lappend sigs "tb_mmu_arbiter.uut.s_arvalid"
lappend sigs "tb_mmu_arbiter.uut.s_araddr"
lappend sigs "tb_mmu_arbiter.uut.s_rready"
lappend sigs "tb_mmu_arbiter.uut.m_arready"
lappend sigs "tb_mmu_arbiter.uut.m_rvalid"
lappend sigs "tb_mmu_arbiter.uut.m_rdata"
lappend sigs "tb_mmu_arbiter.uut.m_rresp"
lappend sigs "tb_mmu_arbiter.uut.s_arready"
lappend sigs "tb_mmu_arbiter.uut.s_rvalid"
lappend sigs "tb_mmu_arbiter.uut.s_rdata"
lappend sigs "tb_mmu_arbiter.uut.s_rresp"
lappend sigs "tb_mmu_arbiter.uut.m_arvalid"
lappend sigs "tb_mmu_arbiter.uut.m_araddr"
lappend sigs "tb_mmu_arbiter.uut.m_rready"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
