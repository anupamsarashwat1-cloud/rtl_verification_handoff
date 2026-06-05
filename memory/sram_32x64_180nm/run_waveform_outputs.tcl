set sigs [list]
lappend sigs "tb_sram_32x64_180nm.dout0"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
