set sigs [list]
lappend sigs "tb_ecdsa_engine.prdata"
lappend sigs "tb_ecdsa_engine.pready"
lappend sigs "tb_ecdsa_engine.pslverr"
lappend sigs "tb_ecdsa_engine.ecdsa_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
