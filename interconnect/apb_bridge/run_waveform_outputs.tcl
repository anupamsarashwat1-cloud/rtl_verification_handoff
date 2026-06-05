set sigs [list]
lappend sigs "tb_apb_bridge.s_awready"
lappend sigs "tb_apb_bridge.s_wready"
lappend sigs "tb_apb_bridge.s_bvalid"
lappend sigs "tb_apb_bridge.s_bresp"
lappend sigs "tb_apb_bridge.s_arready"
lappend sigs "tb_apb_bridge.s_rvalid"
lappend sigs "tb_apb_bridge.s_rdata"
lappend sigs "tb_apb_bridge.s_rresp"
lappend sigs "tb_apb_bridge.paddr"
lappend sigs "tb_apb_bridge.psel"
lappend sigs "tb_apb_bridge.penable"
lappend sigs "tb_apb_bridge.pwrite"
lappend sigs "tb_apb_bridge.pwdata"
lappend sigs "tb_apb_bridge.pstrb"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
