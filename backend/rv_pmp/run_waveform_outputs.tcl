set sigs [list]
lappend sigs "tb_rv_pmp.pmp_fault"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
