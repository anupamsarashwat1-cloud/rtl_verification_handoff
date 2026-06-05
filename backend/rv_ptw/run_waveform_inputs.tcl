set sigs [list]
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
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
