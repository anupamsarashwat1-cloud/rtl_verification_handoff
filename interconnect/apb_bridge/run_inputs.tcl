set sigs [list]
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
