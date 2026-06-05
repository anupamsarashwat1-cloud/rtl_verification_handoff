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
lappend sigs "tb_apb_bridge.clk"
lappend sigs "tb_apb_bridge.rst_n"
lappend sigs "tb_apb_bridge.s_awvalid"
lappend sigs "tb_apb_bridge.s_awaddr"
lappend sigs "tb_apb_bridge.s_wvalid"
lappend sigs "tb_apb_bridge.s_wdata"
lappend sigs "tb_apb_bridge.s_wstrb"
lappend sigs "tb_apb_bridge.s_bready"
lappend sigs "tb_apb_bridge.s_arvalid"
lappend sigs "tb_apb_bridge.s_araddr"
lappend sigs "tb_apb_bridge.s_rready"
lappend sigs "tb_apb_bridge.prdata"
lappend sigs "tb_apb_bridge.pready"
lappend sigs "tb_apb_bridge.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
