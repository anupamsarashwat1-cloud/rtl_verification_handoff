set sigs [list]
lappend sigs "tb_l2_cache_top.clk"
lappend sigs "tb_l2_cache_top.rst_n"
lappend sigs "tb_l2_cache_top.s_arvalid"
lappend sigs "tb_l2_cache_top.s_araddr"
lappend sigs "tb_l2_cache_top.s_rready"
lappend sigs "tb_l2_cache_top.s_awvalid"
lappend sigs "tb_l2_cache_top.s_awaddr"
lappend sigs "tb_l2_cache_top.s_wvalid"
lappend sigs "tb_l2_cache_top.s_wdata"
lappend sigs "tb_l2_cache_top.s_wstrb"
lappend sigs "tb_l2_cache_top.s_bready"
lappend sigs "tb_l2_cache_top.m_arready"
lappend sigs "tb_l2_cache_top.m_rvalid"
lappend sigs "tb_l2_cache_top.m_rdata"
lappend sigs "tb_l2_cache_top.m_rresp"
lappend sigs "tb_l2_cache_top.m_awready"
lappend sigs "tb_l2_cache_top.m_wready"
lappend sigs "tb_l2_cache_top.m_bvalid"
lappend sigs "tb_l2_cache_top.snoop_ack"
lappend sigs "tb_l2_cache_top.snoop_data_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
