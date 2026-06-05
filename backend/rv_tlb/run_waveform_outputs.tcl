set sigs [list]
lappend sigs "tb_rv_tlb.pa_out"
lappend sigs "tb_rv_tlb.hit"
lappend sigs "tb_rv_tlb.perm_r"
lappend sigs "tb_rv_tlb.perm_w"
lappend sigs "tb_rv_tlb.perm_x"
lappend sigs "tb_rv_tlb.perm_u"
lappend sigs "tb_rv_tlb.page_fault"
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
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::setWindowStartTime 0
