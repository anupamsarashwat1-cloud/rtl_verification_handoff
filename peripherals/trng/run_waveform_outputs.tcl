set sigs [list]
lappend sigs "tb_trng.prdata"
lappend sigs "tb_trng.pready"
lappend sigs "tb_trng.pslverr"
lappend sigs "tb_trng.trng_entropy"
lappend sigs "tb_trng.trng_valid"
lappend sigs "tb_trng.trng_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
