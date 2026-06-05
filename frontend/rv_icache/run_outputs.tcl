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
lappend sigs "tb_rv_icache.m_arvalid"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
