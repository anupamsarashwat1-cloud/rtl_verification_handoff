set sigs [list]
lappend sigs "tb_rv_tlb.clk"
lappend sigs "tb_rv_tlb.rst_n"
lappend sigs "tb_rv_tlb.va_in"
lappend sigs "tb_rv_tlb.asid_in"
lappend sigs "tb_rv_tlb.req_valid"
lappend sigs "tb_rv_tlb.fill_valid"
lappend sigs "tb_rv_tlb.fill_va"
lappend sigs "tb_rv_tlb.fill_pa"
lappend sigs "tb_rv_tlb.fill_asid"
lappend sigs "tb_rv_tlb.fill_perm"
lappend sigs "tb_rv_tlb.fill_level"
lappend sigs "tb_rv_tlb.sfence_vma"
lappend sigs "tb_rv_tlb.sfence_asid"
lappend sigs "tb_rv_tlb.sfence_asid_val"
lappend sigs "tb_rv_tlb.sfence_va"
lappend sigs "tb_rv_tlb.sfence_va_val"
lappend sigs "tb_rv_tlb.access_r"
lappend sigs "tb_rv_tlb.access_w"
lappend sigs "tb_rv_tlb.access_x"
lappend sigs "tb_rv_tlb.priv_s"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
