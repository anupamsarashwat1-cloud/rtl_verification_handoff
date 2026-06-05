set sigs [list]
lappend sigs "tb_sha256_engine.prdata"
lappend sigs "tb_sha256_engine.pready"
lappend sigs "tb_sha256_engine.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
