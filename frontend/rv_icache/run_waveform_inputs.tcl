set sigs [list]
lappend sigs "tb_rv_icache.clk"
lappend sigs "tb_rv_icache.rst_n"
lappend sigs "tb_rv_icache.cpu_addr"
lappend sigs "tb_rv_icache.cpu_req"
lappend sigs "tb_rv_icache.invalidate"
lappend sigs "tb_rv_icache.m_arready"
lappend sigs "tb_rv_icache.m_rvalid"
lappend sigs "tb_rv_icache.m_rdata"
lappend sigs "tb_rv_icache.m_rlast"
lappend sigs "tb_rv_icache.m_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
