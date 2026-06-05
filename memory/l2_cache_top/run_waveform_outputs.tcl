set sigs [list]
lappend sigs "tb_l2_cache_top.s_arready"
lappend sigs "tb_l2_cache_top.s_rvalid"
lappend sigs "tb_l2_cache_top.s_rdata"
lappend sigs "tb_l2_cache_top.s_rresp"
lappend sigs "tb_l2_cache_top.s_awready"
lappend sigs "tb_l2_cache_top.s_wready"
lappend sigs "tb_l2_cache_top.s_bvalid"
lappend sigs "tb_l2_cache_top.s_bresp"
lappend sigs "tb_l2_cache_top.m_arvalid"
lappend sigs "tb_l2_cache_top.m_araddr"
lappend sigs "tb_l2_cache_top.m_rready"
lappend sigs "tb_l2_cache_top.m_awvalid"
lappend sigs "tb_l2_cache_top.m_awaddr"
lappend sigs "tb_l2_cache_top.m_wvalid"
lappend sigs "tb_l2_cache_top.m_wdata"
lappend sigs "tb_l2_cache_top.m_wstrb"
lappend sigs "tb_l2_cache_top.m_bready"
lappend sigs "tb_l2_cache_top.snoop_valid"
lappend sigs "tb_l2_cache_top.snoop_addr"
lappend sigs "tb_l2_cache_top.snoop_type"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
