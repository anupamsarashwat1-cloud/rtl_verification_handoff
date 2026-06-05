set sigs [list]
lappend sigs "tb_envm_ctrl.clk"
lappend sigs "tb_envm_ctrl.rst_n"
lappend sigs "tb_envm_ctrl.s_arvalid"
lappend sigs "tb_envm_ctrl.s_araddr"
lappend sigs "tb_envm_ctrl.s_rready"
lappend sigs "tb_envm_ctrl.paddr"
lappend sigs "tb_envm_ctrl.psel"
lappend sigs "tb_envm_ctrl.penable"
lappend sigs "tb_envm_ctrl.pwrite"
lappend sigs "tb_envm_ctrl.pwdata"
lappend sigs "tb_envm_ctrl.envm_rdata"
lappend sigs "tb_envm_ctrl.envm_ready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
