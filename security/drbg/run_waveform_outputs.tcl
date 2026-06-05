set sigs [list]
lappend sigs "tb_drbg.prdata"
lappend sigs "tb_drbg.pready"
lappend sigs "tb_drbg.pslverr"
lappend sigs "tb_drbg.trng_ready"
lappend sigs "tb_drbg.drbg_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
