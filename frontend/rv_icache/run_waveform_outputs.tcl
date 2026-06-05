set sigs [list]
lappend sigs "tb_rv_icache.cpu_rdata"
lappend sigs "tb_rv_icache.cpu_valid"
lappend sigs "tb_rv_icache.cpu_stall"
lappend sigs "tb_rv_icache.m_arvalid"
lappend sigs "tb_rv_icache.m_araddr"
lappend sigs "tb_rv_icache.m_arlen"
lappend sigs "tb_rv_icache.m_arsize"
lappend sigs "tb_rv_icache.m_arburst"
lappend sigs "tb_rv_icache.m_rready"
lappend sigs "tb_rv_icache.ecc_1bit"
lappend sigs "tb_rv_icache.ecc_2bit"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
