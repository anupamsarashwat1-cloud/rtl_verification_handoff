set sigs [list]
lappend sigs "tb_can_controller.clk"
lappend sigs "tb_can_controller.rst_n"
lappend sigs "tb_can_controller.paddr"
lappend sigs "tb_can_controller.psel"
lappend sigs "tb_can_controller.penable"
lappend sigs "tb_can_controller.pwrite"
lappend sigs "tb_can_controller.pwdata"
lappend sigs "tb_can_controller.can_rx"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
