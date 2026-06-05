set sigs [list]
lappend sigs "tb_clint.prdata"
lappend sigs "tb_clint.pready"
lappend sigs "tb_clint.msip"
lappend sigs "tb_clint.mtip"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -10
gtkwave::setWindowStartTime 0
