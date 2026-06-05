set sigs [list]
lappend sigs "tb_axi4_crossbar.clk"
lappend sigs "tb_axi4_crossbar.rst_n"
lappend sigs "tb_axi4_crossbar.m_awvalid"
lappend sigs "tb_axi4_crossbar.m_awaddr"
lappend sigs "tb_axi4_crossbar.m_awid"
lappend sigs "tb_axi4_crossbar.m_wvalid"
lappend sigs "tb_axi4_crossbar.m_wdata"
lappend sigs "tb_axi4_crossbar.m_wstrb"
lappend sigs "tb_axi4_crossbar.m_wlast"
lappend sigs "tb_axi4_crossbar.m_bready"
lappend sigs "tb_axi4_crossbar.m_arvalid"
lappend sigs "tb_axi4_crossbar.m_araddr"
lappend sigs "tb_axi4_crossbar.m_arid"
lappend sigs "tb_axi4_crossbar.m_rready"
lappend sigs "tb_axi4_crossbar.s_awready"
lappend sigs "tb_axi4_crossbar.s_wready"
lappend sigs "tb_axi4_crossbar.s_bvalid"
lappend sigs "tb_axi4_crossbar.s_bresp"
lappend sigs "tb_axi4_crossbar.s_bid"
lappend sigs "tb_axi4_crossbar.s_arready"
lappend sigs "tb_axi4_crossbar.s_rvalid"
lappend sigs "tb_axi4_crossbar.s_rdata"
lappend sigs "tb_axi4_crossbar.s_rresp"
lappend sigs "tb_axi4_crossbar.s_rlast"
lappend sigs "tb_axi4_crossbar.s_rid"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
