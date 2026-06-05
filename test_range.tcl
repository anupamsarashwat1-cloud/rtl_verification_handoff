set sigs [list]
lappend sigs "tb_clint.clk"
lappend sigs "tb_clint.rst_n"
gtkwave::addSignalsFromList $sigs
gtkwave::setWindowStartTime 0
gtkwave::setZoomFactor -20
gtkwave::setWindowStartTime 0
