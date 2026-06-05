set sigs [list]
lappend sigs "tb_rv_mmu.clk"
lappend sigs "tb_rv_mmu.rst_n"
lappend sigs "tb_rv_mmu.satp"
lappend sigs "tb_rv_mmu.priv_mode"
lappend sigs "tb_rv_mmu.va_req"
lappend sigs "tb_rv_mmu.req_valid"
lappend sigs "tb_rv_mmu.req_r"
lappend sigs "tb_rv_mmu.req_w"
lappend sigs "tb_rv_mmu.req_x"
lappend sigs "tb_rv_mmu.ptw_arready"
lappend sigs "tb_rv_mmu.ptw_rvalid"
lappend sigs "tb_rv_mmu.ptw_rdata"
lappend sigs "tb_rv_mmu.ptw_rresp"
lappend sigs "tb_rv_mmu.sfence_vma"
lappend sigs "tb_rv_mmu.sfence_asid_en"
lappend sigs "tb_rv_mmu.sfence_va_en"
lappend sigs "tb_rv_mmu.sfence_va_val"
lappend sigs "tb_rv_mmu.sfence_asid_val"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
