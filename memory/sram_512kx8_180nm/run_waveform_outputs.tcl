set sigs [list]
lappend sigs "tb_sram_512kx8_180nm.Q"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
