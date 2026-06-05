set sigs [list]
lappend sigs "tb_envm_ctrl.s_arready"
lappend sigs "tb_envm_ctrl.s_rvalid"
lappend sigs "tb_envm_ctrl.s_rdata"
lappend sigs "tb_envm_ctrl.s_rresp"
lappend sigs "tb_envm_ctrl.prdata"
lappend sigs "tb_envm_ctrl.pready"
lappend sigs "tb_envm_ctrl.pslverr"
lappend sigs "tb_envm_ctrl.envm_clk"
lappend sigs "tb_envm_ctrl.envm_ce_n"
lappend sigs "tb_envm_ctrl.envm_we_n"
lappend sigs "tb_envm_ctrl.envm_addr"
lappend sigs "tb_envm_ctrl.envm_wdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
