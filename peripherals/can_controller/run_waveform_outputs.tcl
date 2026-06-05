set sigs [list]
lappend sigs "tb_can_controller.prdata"
lappend sigs "tb_can_controller.pready"
lappend sigs "tb_can_controller.pslverr"
lappend sigs "tb_can_controller.can_irq"
lappend sigs "tb_can_controller.can_tx"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
