set sigs [list]
lappend sigs "tb_ddr_ctrl_top.clk"
lappend sigs "tb_ddr_ctrl_top.rst_n"
lappend sigs "tb_ddr_ctrl_top.s_awvalid"
lappend sigs "tb_ddr_ctrl_top.s_awaddr"
lappend sigs "tb_ddr_ctrl_top.s_awid"
lappend sigs "tb_ddr_ctrl_top.s_awlen"
lappend sigs "tb_ddr_ctrl_top.s_awsize"
lappend sigs "tb_ddr_ctrl_top.s_wvalid"
lappend sigs "tb_ddr_ctrl_top.s_wdata"
lappend sigs "tb_ddr_ctrl_top.s_wstrb"
lappend sigs "tb_ddr_ctrl_top.s_wlast"
lappend sigs "tb_ddr_ctrl_top.s_bready"
lappend sigs "tb_ddr_ctrl_top.s_arvalid"
lappend sigs "tb_ddr_ctrl_top.s_araddr"
lappend sigs "tb_ddr_ctrl_top.s_arid"
lappend sigs "tb_ddr_ctrl_top.s_arlen"
lappend sigs "tb_ddr_ctrl_top.s_rready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
