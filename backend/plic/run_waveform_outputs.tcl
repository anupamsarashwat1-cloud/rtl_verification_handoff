set sigs [list]
lappend sigs "tb_plic.prdata"
lappend sigs "tb_plic.pready"
lappend sigs "tb_plic.irq_targets"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
