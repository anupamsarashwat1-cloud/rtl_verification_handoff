set sigs [list]
lappend sigs "tb_gpio_ctrl.prdata"
lappend sigs "tb_gpio_ctrl.pready"
lappend sigs "tb_gpio_ctrl.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
