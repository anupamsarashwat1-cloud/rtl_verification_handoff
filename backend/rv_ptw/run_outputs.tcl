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
lappend sigs "tb_rv_ptw.clk"
lappend sigs "tb_rv_ptw.rst_n"
lappend sigs "tb_rv_ptw.va_req"
lappend sigs "tb_rv_ptw.asid_req"
lappend sigs "tb_rv_ptw.satp_ppn"
lappend sigs "tb_rv_ptw.ptw_req"
lappend sigs "tb_rv_ptw.access_r"
lappend sigs "tb_rv_ptw.access_w"
lappend sigs "tb_rv_ptw.access_x"
lappend sigs "tb_rv_ptw.priv_s"
lappend sigs "tb_rv_ptw.ptw_arready"
lappend sigs "tb_rv_ptw.ptw_rvalid"
lappend sigs "tb_rv_ptw.ptw_rdata"
lappend sigs "tb_rv_ptw.ptw_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
